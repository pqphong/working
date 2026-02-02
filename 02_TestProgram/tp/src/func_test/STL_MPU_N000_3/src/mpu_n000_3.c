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
* File Name     : main0.c
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
//#include "iodef.h"

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



//Functions to support Fault Injection simulations
void testPassed(void);
void errorHandler(void);

void enableFP (void);

m33_stl_dataStruct_t __attribute__((section(".d_m33_stl_data_struct"))) exampleDataStruct;


void main(void)
{

    uint32_t result;
    uint8_t forceFail;

    uint32_t mode;
    uint8_t mpu_region;

    mode = 0x0;
    mpu_region = 0x3;

    // Defensive initialization for M33_STL API input parameters
    result = M33_STL_FAIL;

    uint32_t* addressMPU = (uint32_t*) 0x28000000;

    // Defensive initialization of data structure fields
    exampleDataStruct.Fault_Type = 0xFFFFFFFFU;
    exampleDataStruct.STL_Status = 0xFFFFFFFFU;
    exampleDataStruct.Test_ID = 0xFFFFFFFFU;

    enableFP();

    // Set forceFail parameter to 0x0 - Disable force fail functionality
    forceFail = 0x0U;
    // Configure starting address of data structure containing info
    // about STL execution
    result = M33_STL_Config(&exampleDataStruct);
    if (result == M33_STL_PASS){
        // Calls MPU Tests
        result = M33_STL_FAIL;
        result = M33_STL_MPU(mode, addressMPU, mpu_region);

        if (result == M33_STL_PASS) {
            testPassed();
        }
    }
    if (result == M33_STL_FAIL)
    {
        errorHandler();
    }
}

void enableFP (void)
{

    uint32_t * cpacr_addr = (uint32_t *) 0xE000ED88;

    *cpacr_addr = *cpacr_addr | 0x00F00000;

}

void testPassed(void)
{

    __asm__ volatile ("add r5, r5, 5");
    __asm__ volatile ("add r5, r5, 5");
    __asm__ volatile ("add r5, r5, 5");
    while(1); // Test Passed
}


void errorHandler(void)
{
    __asm__ volatile ("sub r5, r5, 6");
    __asm__ volatile ("sub r5, r5, 6");
    __asm__ volatile ("sub r5, r5, 6");
    while(1); // Error
}
