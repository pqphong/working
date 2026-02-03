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
 
#include "m33_stl_constants.h"

//------------------------------------------------------------------------------/
//   Function: m33_stl_write_sp
//      Function to write in the SP
//
//      valueToPush  - value to write in the stack pointer
//
//   Returns: None
//------------------------------------------------------------------------------/

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_write_sp,"ax"
        .global m33_stl_write_sp
        .type m33_stl_write_sp, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_write_sp,"ax"
        .global m33_stl_write_sp

#endif
#ifdef __IAR__
        public m33_stl_write_sp
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_write_sp.asm"
        .section        .s_m33_stl_write_sp,"ax",%progbits
        .global         m33_stl_write_sp
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_write_sp
        .global m33_stl_write_sp

        .align           4

#endif

m33_stl_write_sp:

        push            {r0}

        bx              lr

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
#endif
#ifdef TASKING
        .endsec
#endif

//------------------------------------------------------------------------------/
//   Function: m33_stl_deallocation_sp
//      Function to deallocation the SP
//
//      stackDeallocCount  - value to write in the stack pointer
//
//   Returns: None
//------------------------------------------------------------------------------/

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_deallocation_sp,"ax"
        .global m33_stl_deallocation_sp
        .type m33_stl_deallocation_sp, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_deallocation_sp,"ax"
        .global m33_stl_deallocation_sp

#endif
#ifdef __IAR__
        public m33_stl_deallocation_sp
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_deallocation_sp.asm"
        .section        .s_m33_stl_deallocation_sp,"ax",%progbits
        .global         m33_stl_deallocation_sp
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_deallocation_sp
        .global m33_stl_deallocation_sp

        .align           4

#endif

m33_stl_deallocation_sp:

        ldr             r1, =M33_STL_STACK_WORDS1
        mul             r0, r0, r1

        add             sp, sp, r0

        bx              lr

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
        .end
#endif
#ifdef __GHS__
        .align          4
        end
#endif
#ifdef __IAR__
        alignram        2
        end
#endif
#ifdef TASKING
        .endsec
        .END
#endif
