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
//  Release Information : Res_STL_M33_U5Lx_Renesas_SW_1.0.0
//
//------------------------------------------------------------------------------
//
//  Licensed by ResilTech SRL to Renesas Electronics Corporation
//
//------------------------------------------------------------------------------
 
#include "m33_stl_exceptions.h"
#include <stdint.h>

ROOT uint8_t exc_MPU = M33_STL_CLEAR_VAL;
ROOT uint8_t exc_MPU_XN = M33_STL_CLEAR_VAL;
void m33_stl_mem_manage_handler(void);
void m33_stl_mem_manage_user_handler(void) __attribute__ ((weak));

static void DSB(void);
static void ISB(void);

void m33_stl_mem_manage_handler(void)
{

    uint32_t * mpu_ctrl = (uint32_t *) MPU_CTRL;
    uint32_t * mpu_rbar = (uint32_t *) MPU_RBAR;
    uint32_t * cfsr = (uint32_t *) CFSR;

    // Check if the handler has been reached due to the MemManage triggered by the STL
    if (exc_MPU == M33_STL_COMPARE_VAL) {

        // Disable MPU
        *mpu_ctrl = *mpu_ctrl & M33_STL_DISABLE_MPU;

        DSB();
        ISB();

        // Reconfigure permissions, to write to the specified address
        *mpu_rbar = *mpu_rbar & M33_STL_PERMISSION_MPU;

        // Enable MPU
        *mpu_ctrl = *mpu_ctrl | M33_STL_ENABLE_MPU;
        DSB();
        ISB();


        // Clear MemManage fault
        *cfsr = M33_STL_CLEAR_FAULT;

        exc_MPU = M33_STL_CLEAR_VAL;

        __asm__ volatile ( "mov r11, %0" :: "r" (M33_STL_MPU_EXP_VAL));
        __asm__ volatile ( "lsl r11, r11, %0" :: "r" (M33_STL_SIXTEEN_VAL));
        __asm__ volatile ( "mov r10, %0" :: "r" (M33_STL_MPU_EXP_VAL));
        __asm__ volatile ( "orr r11, r11, r10");

    } else if (exc_MPU_XN == M33_STL_COMPARE_VAL) {

        exc_MPU_XN = M33_STL_CLEAR_VAL;

        // Disable MPU
        *mpu_ctrl = *mpu_ctrl & M33_STL_DISABLE_MPU;

        DSB();
        ISB();

        // Reconfigure permissions, to write to the specified address
        *mpu_rbar = *mpu_rbar & M33_STL_PERMISSION_MPU;

        // Enable MPU
        *mpu_ctrl = *mpu_ctrl | M33_STL_ENABLE_MPU;
        DSB();
        ISB();


        // Clear MemManage fault
        *cfsr = M33_STL_CLEAR_FAULT;

        __asm__ volatile ( "mov r11, %0" :: "r" (M33_STL_MPU_XN_EXP_VAL));
        __asm__ volatile ( "lsl r11, r11, %0" :: "r" (M33_STL_SIXTEEN_VAL));
        __asm__ volatile ( "mov r10, %0" :: "r" (M33_STL_MPU_XN_EXP_VAL));
        __asm__ volatile ( "orr r11, r11, r10");

    } else {
        m33_stl_mem_manage_user_handler();
    }

}

void m33_stl_mem_manage_user_handler(void) {
    while(1){

    };
}

static void DSB(void)
{
    __asm__ volatile ("dsb");
}

static void ISB(void)
{
    __asm__ volatile ("isb");
}
