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

//------------------------------------------------------------------------------/
//   Function: m33_stl_write_sp
//      Function to write in the SP
//
//      valueToPush  - value to write in the stack pointer
//
//   Returns: None
//------------------------------------------------------------------------------/

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_write_sp,"ax"
        .global m33_stl_write_sp
        .type m33_stl_write_sp, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_write_sp,"ax"
        .global m33_stl_write_sp

#endif

m33_stl_write_sp:

        push            {r0}

        bx              lr

        .align 8

//------------------------------------------------------------------------------/
//   Function: m33_stl_deallocation_sp
//      Function to deallocation the SP
//
//      stackDeallocCount  - value to write in the stack pointer
//
//   Returns: None
//------------------------------------------------------------------------------/

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_deallocation_sp,"ax"
        .global m33_stl_deallocation_sp
        .type m33_stl_deallocation_sp, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_deallocation_sp,"ax"
        .global m33_stl_deallocation_sp

#endif

m33_stl_deallocation_sp:

        ldr             r1, =M33_STL_STACK_WORDS1
        mul             r0, r0, r1

        add             sp, sp, r0

        bx              lr

        .align 8

        .end
