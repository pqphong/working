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
//------------------------------------------------------------------------------
//   Function: m33_stl_compare_gpr:
//      Function used by Test Elements to check if the operation result is equal
//      to the expected value
//
//   Parameters:
//      r11 - register containing the operation result
//      r12 - register containing the expected value
//
//   Returns:
//      N.A.
//------------------------------------------------------------------------------

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_compare_gpr,"ax"
        .global m33_stl_compare_gpr
        .type m33_stl_compare_gpr, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_compare_gpr,"ax"
        .global m33_stl_compare_gpr

#endif

m33_stl_compare_gpr:

        cmp             r11, r12

        beq             m33_stl_compare_gpr_end

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_compare_gpr_end:

        bx              lr


        .align 8
        .end
