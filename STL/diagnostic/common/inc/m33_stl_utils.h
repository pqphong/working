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
 

#ifndef M33_STL_UTILS_H
#define M33_STL_UTILS_H

#include <stdint.h>

//------------------------------------------------------------------------------/
//   Function: m33_stl_write_sp
//      Function to write in the SP
//
//      valueToPush - value to write in the stack pointer
//
//   Returns: None
//------------------------------------------------------------------------------/

extern void m33_stl_write_sp(uint32_t valueToPush);

//------------------------------------------------------------------------------/
//   Function: m33_stl_deallocation_sp
//      Function to deallocation the SP
//
//      stackDeallocCount - vSpecifies the number of deallocation steps to be
//                          applied to the stack pointer
//
//   Returns: None
//------------------------------------------------------------------------------/

extern void m33_stl_deallocation_sp(uint32_t stackDeallocCount);

#endif
