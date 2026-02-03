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
 

#ifndef M33_STL_REGISTERINFO_H
#define M33_STL_REGISTERINFO_H

#ifndef __ASSEMBLER__

#include <stdint.h>

#endif

#define M33_STL_MPU_TOT_REGS 13
#define M33_STL_NVIC_TOT_REGS 186

#ifdef __IAR__
#define ROOT __root
#else
#define ROOT
#endif

#ifndef __ASSEMBLER__

typedef struct {
    const uint32_t regAddress;
    const uint32_t maskValue;
    uint32_t expectedValue;
} m33_stl_registerInfo_t;

extern ROOT m33_stl_registerInfo_t m33_stl_mpuRegisterInfo[M33_STL_MPU_TOT_REGS] __attribute__((section(".s_m33_stl_mpuRegisterInfo")));
extern ROOT m33_stl_registerInfo_t m33_stl_nvicRegisterInfo[M33_STL_NVIC_TOT_REGS] __attribute__((section(".s_m33_stl_nvicRegisterInfo")));

#endif

#endif
