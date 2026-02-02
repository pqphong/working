/*******************************************************************************
* Warranty Disclaimer :
*
* Because the Product(s) is licensed free of charge, there is no warranty of
* any kind whatsoever and expressly disclaimed and excluded by Renesas, either
* expressed or implied, including but not limited to those for non-infringement
* of intellectual property, merchantability and/or fitness for the particular
* purpose. Renesas shall not have any obligation to maintain, service or provide
* bug fixes for the supplied Product(s) and/or the Application.
*
* Each User is solely responsible for determining the appropriateness of using
* the Product(s) and assumes all risks associated with its exercise of rights
* under this Agreement, including, but not limited to the risks and costs of
* program errors, compliance with applicable laws, damage to or loss of data,
* programs or equipment, and unavailability or interruption of operations.
*
* Limitation of Liability :
*
* In no event shall Renesas be liable to the User for any incidental,
* consequential, indirect, or punitive damage (including but not limited to
* lost profits) regardless of whether such liability is based on breach of
* contract, tort, strict liability, breach of warranties, failure of essential
* purpose or otherwise and even if advised of the possibility of such damages.
* Renesas shall not be liable for any services or products provided by third
* party vendors, developers or consultants identified or referred to the User
* by Renesas in connection with the Product(s) and/or the Application.
*
* Copyright (C) 2024 Renesas Electronics Corporation. All rights reserved.
*******************************************************************************/
/*******************************************************************************
* File Name     : main.c
* Version       : 0.01
* Device(s)     : R-Car U5Lx
* Description   : This is the main_pe0 tutorial code.
********************************************************************************
* History : DD.MM.YYYY Version Description
*         : 30.11.2024 0.01    First Release
*******************************************************************************/
/*******************************************************************************
header include
*******************************************************************************/

/*******************************************************************************
Macro definitions
*******************************************************************************/

/*******************************************************************************
Imported global variables and functions (from other files)
*******************************************************************************/

/*******************************************************************************
Exported global variables and functions (to be accessed by other files)
*******************************************************************************/

/*******************************************************************************
* Outline      : PE0 Main processing
* Header       : none
* Function name: void main_pe0 (void)
* Description  : Main function sample
* Arguments    : none
* Return Value : none
*******************************************************************************/
#include <stdio.h>
#include "M33_STL.h"

/* clock setting */
#define PLLE                (*((volatile uint32_t *)0x5C080000UL))    /* PLL Enable Register */
#define PLLS                (*((volatile uint32_t *)0x5C080004UL))    /* PLL Status Register */
#define PLLSTPM             (*((volatile uint32_t *)0xFF98000CUL))    /* PLL Stop Mask Register */
#define MOSCE               (*((volatile uint32_t *)0xFF988000UL))    /* MainOSC Enable Register */
#define MOSCS               (*((volatile uint32_t *)0xFF988004UL))    /* MainOSC Status Register */
#define MOSCC               (*((volatile uint32_t *)0xFF988008UL))    /* MainOSC Control Register */
#define MOSCSTPM            (*((volatile uint32_t *)0x5C08800CUL))    /* MainOSC Stop Mask Register */
#define HSOSCS              (*((volatile uint32_t *)0x5C088100UL))    /* HSIntOSC Status Register */
#define HSOSCSTPM           (*((volatile uint32_t *)0x5C088104UL))    /* HSIntOSC Stop Mask Register */
#define CKS_SYS1C           (*((volatile uint32_t *)0x5C080100UL))    /* CLK_CPU Selector Control Register */
#define CKS_SYS1S           (*((volatile uint32_t *)0x5C080108UL))    /* CLK_CPU Selector Status Register */
#define CKS_SYS0C           (*((volatile uint32_t *)0x5C080110UL))    /* CLK_CPU Selector Control Register */
#define CKS_SYS0S           (*((volatile uint32_t *)0x5C080114UL))    /* CLK_CPU Selector Status Register */
#define CKS_PLLINC          (*((volatile uint32_t *)0x5C080010UL))    /* PLL Input SYS0_CLOCK Selector Control Register */
#define CKD_PLL1C           (*((volatile uint32_t *)0x5C080120UL))    /* CLK_PLL1O Divider Control Register */
#define CKD_PLL0C           (*((volatile uint32_t *)0x5C080130UL))    /* CLK_PLL0O Divider Control Register */
#define CKD_PLL1S           (*((volatile uint32_t *)0x5C080128UL))    /* CLK_PLL1O Divider Status Register */
#define CKD_PLL0S           (*((volatile uint32_t *)0x5C080134UL))    /* CLK_PLL0O Divider Status Register */

/* Clock Controller Register Key Code Protection Register 1 */
#define CLKKCPROT1          (*((volatile unsigned long *)0x5C080700UL))
/* Clock Controller Register Key Code Protection Register 2 */
#define CLKKCPROT2          (*((volatile unsigned long *)0xFF980710UL))
/* Clock Controller Register Key Code Protection Register 3 */
#define CLKKCPROT3          (*((volatile unsigned long *)0xFF980720UL))
/* Clock Controller Register Key Code Protection Register 4 */
#define CLKKCPROT4          (*((volatile unsigned long *)0x5C080730UL))

/* OS TIMER */
#define MSR_OSTM                                (*((volatile uint32_t *)0x5C081180UL))
#define MSRKCPROT                               (*((volatile uint32_t *)0x5C081710UL))
#define	OSTM0_BASE	                            0x5C3A0000UL
#define	OSTM0CMP	                            (*((volatile uint32_t *)OSTM0_BASE))		/* 32bit R/W */
#define	OSTM0CNT	                            (*((volatile uint32_t *)(OSTM0_BASE + 0x04)))	/* 32bit R */
#define	OSTM0TO		                            (*((volatile uint8_t  *)(OSTM0_BASE + 0x08)))	/* 8bit R/W */
#define	OSTM0TOE	                            (*((volatile uint8_t  *)(OSTM0_BASE + 0x0c)))	/* 8bit R/W */
#define	OSTM0TE		                            (*((volatile uint8_t  *)(OSTM0_BASE + 0x10)))	/* 8bit R */
#define	OSTM0TS		                            (*((volatile uint8_t  *)(OSTM0_BASE + 0x14)))	/* 8bit W */
#define	OSTM0TT		                            (*((volatile uint8_t  *)(OSTM0_BASE + 0x18)))	/* 8bit W */
#define	OSTM0CTL	                            (*((volatile uint8_t  *)(OSTM0_BASE + 0x20)))	/* 8bit R/W */
#define SYSTICK_FREQ_HZ 						80000000  				                    // Adjust to your system clock
/* EIC and Macro for open and lock write permission */
#define DISABLE_WRITE_KEY_CODE                  (0xA5A5A500UL)
#define ENABLE_WRITE_KEY_CODE                   (0xA5A5A501UL)

//Functions to support Fault Injection simulations
void testPassed(void);
void errorHandler(void);

void enableFP (void);
void InitTimer(void);
void StartTimer(void);
void StopTimer(void);
m33_stl_dataStruct_t __attribute__((section(".d_m33_stl_data_struct"))) exampleDataStruct;
 
void main(void)
{

    uint32_t bitMask0;
    uint32_t bitMask1;
    uint32_t result;
    uint8_t forceFail;
    uint32_t bitMaskArray[2];
	uint32_t start;
	uint32_t end;
	double elapsed;

    uint32_t mode;
    uint8_t mpu_region;

    mode = 0x2;
    mpu_region = 0x0;

    // Defensive initialization for M33_STL API input parameters
    bitMask0 = M33_STL_FAIL;
    result = M33_STL_FAIL;

    uint32_t* addressMPU = (uint32_t*) 0x28000000;

    // Defensive initialization of data structure fields
    exampleDataStruct.Fault_Type = 0xFFFFFFFFU;
    exampleDataStruct.STL_Status = 0xFFFFFFFFU;
    exampleDataStruct.Test_ID = 0xFFFFFFFFU;
    // Initialize bitMaskArray parameter
    bitMask0 =0xFFFFFFFF;
    bitMask1 =0xFFFFFFFF;

    enableFP();

    bitMaskArray[0] = bitMask0;
    bitMaskArray[1] = bitMask1;

    // Set forceFail parameter to 0x0 - Disable force fail functionality
    forceFail = 0x0U;
	
	InitTimer();               // Ensure timer is configured
 
    // Read the current value before the function call
    start = OSTM0CMP;
	
    StartTimer();
	// Configure starting address of data structure containing info
    // about STL execution
    result = M33_STL_Config(&exampleDataStruct);
    if (result == M33_STL_PASS){
		result = M33_STL_FAIL;
        // Calls all Tests indicated by bitMask
        result = M33_STL(bitMaskArray, forceFail);

        result = M33_STL_MPU(mode, addressMPU, mpu_region);
        if (result == M33_STL_PASS){
            result = M33_STL_FAIL;
            result = M33_STL_NVIC();
        }
        if (result == M33_STL_PASS) {
            StopTimer();
            end = OSTM0CNT;
			
            if (start >= end) {
				elapsed = start - end + 1;
			} else {
				elapsed = start + (OSTM0CMP - end);
			}
			// Convert ticks to miliseconds
			elapsed = (elapsed * 1000) / SYSTICK_FREQ_HZ;
			// perf execution time is less than 20ms at 80MHz
			if (elapsed <= 20){
				testPassed();
			}
        }
    }
	
    errorHandler();

}

void enableFP (void)
{

    uint32_t * cpacr_addr = (uint32_t *) 0xE000ED88;

    *cpacr_addr = *cpacr_addr | 0x00F00000;

}

void testPassed(void)
{
    while(1); // Test Passed
}


void errorHandler(void)
{
    while(1); // Error
}

/***********************************************************************************************************************
                                                  Timer Initialization
***********************************************************************************************************************/
void InitTimer(void)
{
  /* Release the write protection of Standby controller register.*/
  MSRKCPROT = ENABLE_WRITE_KEY_CODE;
  /* Enable clock source for OSTM0 */
  MSR_OSTM &= 0x00000000UL;
  /* Set the write protection of Standby controller registers. */
  MSRKCPROT = DISABLE_WRITE_KEY_CODE;
  /* Stop all channels */
  OSTM0TT = (uint8_t)0x01U;
  /* Disable interrupt OTSM */
  OSTM0CTL = (uint8_t)0x00U;
  OSTM0CMP = 0x40000000;
}

void Clock_Init(void)
{
 /* Wait to HSIntOSC clock is stable(HSOSCS.HSOSCSTAB = 1). */
  while ((HSOSCS & 0x00000002UL) == 0x00000000UL);
 
  /* Select a source clock(CKS_SYS1C.SYSCLKSCSID = 0). */
  CLKKCPROT1 = ENABLE_WRITE_KEY_CODE;
  /* Selected Clock source ID=0:CLK_PLL1O */
  /* (This setting dependencies Option Bytes. CKDIVMD = 11B) */
  CKS_SYS0C = 0x00000000UL;
  CKS_SYS1C = 0x00000000UL;
 
  /* Confirm completion of selection(CKS_SYS1S.SYSCLKSACT = 0). */
  while ((CKS_SYS1S & 0x00000001UL) != 0x00000000UL);
  while ((CKS_SYS0S & 0x00000001UL) != 0x00000000UL);
  CKS_PLLINC = 0x00000000UL;
  /* Setting the default value for CKD_PLL1C.PLLCLKDCSID = 0x0000 */
  CKD_PLL1C = 0x00000000UL;
  CKD_PLL0C = 0x00000000UL;
  /* Verify Clock output corresponds to the actual divisor setting in CKD_PLL1C.PLLCLKDCSID */
  while ((CKD_PLL1S & 0x00000002UL) != 0x00000002UL);
  while ((CKD_PLL0S & 0x00000002UL) != 0x00000002UL);
  CLKKCPROT1 = DISABLE_WRITE_KEY_CODE;
}

void StartTimer(void)
{
  /* Start interrupt OTSM */
  OSTM0TS  = (uint8_t)0x01U;
}

void StopTimer(void)
{
  /* Stop all channels of OSTM */
  OSTM0TT = (uint8_t)0x01U;
}



