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
 

#ifndef M33_STL_EXCEPTIONS_H
#define M33_STL_EXCEPTIONS_H

#ifdef __IAR__
#define ROOT __root
#else
#define ROOT
#endif

#define M33_STL_COMPARE_VAL            (0x00000001U)
#define M33_STL_CLEAR_VAL              (0x00000000U)
#define M33_STL_MPU_EXP_VAL            (0x0000AAAAU)
#define M33_STL_MPU_XN_EXP_VAL         (0x00005555U)
#define M33_STL_DISABLE_MPU            (0xFFFFFFFEU)
#define M33_STL_ENABLE_MPU             (0x00000001U)
#define M33_STL_CLEAR_FAULT            (0x000000FFU)
#define M33_STL_PERMISSION_MPU         (0xFFFFFFF8U)
#define M33_STL_SIXTEEN_VAL            (0x00000010U)

#define MPU_CTRL (0xE000ED94U)
#define MPU_RBAR (0xE000ED9CU)
#define CFSR (0xE000ED28U)

#endif
