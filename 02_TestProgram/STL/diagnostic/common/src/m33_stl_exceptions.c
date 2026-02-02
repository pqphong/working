//------------------------------------------------------------------------------
//  The confidential and proprietary information contained in this file may
//  only be used by a person authorised under and to the extent permitted
//  by a subsisting licensing agreement from ResilTech SRL.
//
//         (C) COPYRIGHT 2025 ResilTech SRL.
//             ALL RIGHTS RESERVED
//
//  This entire notice must be reproduced on all copies of this file
//  and copies of this file may only be made by a person if such person is
//  permitted to do so under the terms of a subsisting license agreement
//  from ResilTech SRL.
//
//  Release Information : Res_STL_M33_U5L4_Renesas_alpha0.0.0
//
//------------------------------------------------------------------------------
#include "m33_stl_constants.h"
#include <stdint.h>

uint8_t exc_MPU = M33_STL_CLEAR_VAL;
uint8_t exc_MPU_XN = M33_STL_CLEAR_VAL;
void MemManage_Handler(void);
void Strobe_Handler(void);

static void DSB(void);
static void ISB(void);

void MemManage_Handler(void)
{

    uint32_t * mpu_ctrl;
    uint32_t * mpu_rbar;
    uint32_t * cfsr;

    // Check if the handler has been reached due to the MemManage triggered by the STL
    if (exc_MPU == M33_STL_COMPARE_VAL) {

        // Disable MPU
        mpu_ctrl = (uint32_t *) MPU_CTRL;
        mpu_ctrl[0] = mpu_ctrl[0] & 0xFFFFFFFE;

        DSB();
        ISB();

        // Reconfigure permissions, to write to the specified address
        mpu_rbar = (uint32_t *) MPU_RBAR;
        mpu_rbar[0] = mpu_rbar[0] & 0xFFFFFFF8;

        // Enable MPU
        mpu_ctrl[0] = mpu_ctrl[0] | 0x1;
        DSB();
        ISB();


        // Clear MemManage fault
        cfsr = (uint32_t *) CFSR;
        cfsr[0] = cfsr[0] & 0xFFFFFF00;

        exc_MPU = M33_STL_CLEAR_VAL;

        __asm__ volatile ( "ldr r11, =%0\n" :: "i" (M33_STL_MPU_EXP_VAL));

    } else if (exc_MPU_XN == M33_STL_COMPARE_VAL) {

        exc_MPU_XN = M33_STL_CLEAR_VAL;

        // Disable MPU
        mpu_ctrl = (uint32_t *) MPU_CTRL;
        mpu_ctrl[0] = mpu_ctrl[0] & 0xFFFFFFFE;

        DSB();
        ISB();

        // Reconfigure permissions, to write to the specified address
        mpu_rbar = (uint32_t *) MPU_RBAR;
        mpu_rbar[0] = mpu_rbar[0] & 0xFFFFFFF8;

        // Enable MPU
        mpu_ctrl[0] = mpu_ctrl[0] | 0x1;
        DSB();
        ISB();


        // Clear MemManage fault
        cfsr = (uint32_t *) CFSR;
        cfsr[0] = cfsr[0] & 0xFFFFFF00;

        __asm__ volatile ( "ldr r11, =%0\n" :: "i" (M33_STL_MPU_XN_EXP_VAL));

    } else {
        Strobe_Handler();
    }

}

void Strobe_Handler(void) {
    while(1);
}

static void DSB(void)
{
    __asm__ volatile ("dsb");
}

static void ISB(void)
{
    __asm__ volatile ("isb");
}


// typedef for the function pointers in the vector table
typedef void (* const ExecFuncPtr)(void);

ExecFuncPtr vector_table[] __attribute__((aligned(128))) = {

    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)MemManage_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL),
    (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL), (ExecFuncPtr)((uintptr_t)Strobe_Handler + M33_STL_THUMB_ADDR_VAL)

};
