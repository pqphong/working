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

//-------------------------------------------------------------------------------
//   Function: m33_stl_gpr_context_save
//      Context switch subroutine for module starting
//
//  Parameters:
//      N.A.
//
//   Returns:
//      N.A.
//-------------------------------------------------------------------------------

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_gpr_context_save,"ax"
        .global m33_stl_gpr_context_save
        .type m33_stl_gpr_context_save, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_gpr_context_save,"ax"
        .global m33_stl_gpr_context_save

#endif
#ifdef __IAR__
        public m33_stl_gpr_context_save
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_in_context_switch.asm"
        .section        .s_m33_stl_gpr_context_save,"ax",%progbits
        .global         m33_stl_gpr_context_save
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_gpr_context_save
        .global m33_stl_gpr_context_save
#endif

m33_stl_gpr_context_save:

        push            {r1-r12}
        push            {r0}

        bx              lr

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
#endif
#ifdef TASKING
        .endsec
#endif

//------------------------------------------------------------------------------
//   Function: m33_stl_full_context_save:
//      Context switch subroutine for FPU tests
//
//   Parameters:
//      N.A.
//
//   Returns:
//      N.A.
//-------------------------------------------------------------------------------

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_full_context_save,"ax"
        .global m33_stl_full_context_save
        .type m33_stl_full_context_save, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_full_context_save,"ax"
        .global m33_stl_full_context_save

#endif
#ifdef __IAR__
        public m33_stl_full_context_save
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_in_context_switch.asm"
        .section        .s_m33_stl_full_context_save,"ax",%progbits
        .global         m33_stl_full_context_save
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_full_context_save
        .global m33_stl_full_context_save
#endif

m33_stl_full_context_save:

        push            {r1-r12}

        vpush           {s0-s15}
        vpush           {s16-s31}

        push            {r0}

        bx              lr

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
#endif
#ifdef TASKING
        .endsec
#endif

//-------------------------------------------------------------------------------
//   Function: m33_stl_gpr_init
//      init subroutine with gprs initialization
//
//   Parameters:
//      N.A.
//
//   Returns:
//      N.A.
//------------------------------------------------------------------------------

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_gpr_init,"ax"
        .global m33_stl_gpr_init
        .type m33_stl_gpr_init, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_gpr_init,"ax"
        .global m33_stl_gpr_init

#endif
#ifdef __IAR__
        public m33_stl_gpr_init
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_in_context_switch.asm"
        .section        .s_m33_stl_gpr_init,"ax",%progbits
        .global         m33_stl_gpr_init
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_gpr_init
        .global m33_stl_gpr_init
#endif

m33_stl_gpr_init:

#ifdef TASKING
        ldr.w           r4, =M33_STL_MASK_VAL
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        mov             r0, #M33_STL_IT1
        msr             apsr_nzcvqg, r0
#endif
        mov             r0, #M33_STL_IT1
        mov             r1, #M33_STL_IT1
        mov             r2, #M33_STL_IT1
        mov             r3, #M33_STL_IT1
        mov             r4, #M33_STL_IT1
        mov             r5, #M33_STL_IT1
        mov             r6, #M33_STL_IT1
        mov             r7, #M33_STL_IT1
        mov             r8, #M33_STL_IT1
        mov             r9, #M33_STL_IT1
        mov             r10, #M33_STL_IT1
        mov             r11, #M33_STL_IT1
        mov             r12, #M33_STL_IT1


        bx              lr

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
#endif
#ifdef TASKING
        .endsec
#endif

//-------------------------------------------------------------------------------
//   Function: m33_stl_fpu_init
//      init subroutine with FPU registers initialization
//
//   Parameters:
//      N.A.
//
//   Returns:
//      N.A.
//------------------------------------------------------------------------------/

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_fpu_init,"ax"
        .global m33_stl_fpu_init
        .type m33_stl_fpu_init, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_fpu_init,"ax"
        .global m33_stl_fpu_init

#endif
#ifdef __IAR__
        public m33_stl_fpu_init
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_in_context_switch.asm"
        .section        .s_m33_stl_fpu_init,"ax",%progbits
        .global         m33_stl_fpu_init
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_fpu_init
        .global m33_stl_fpu_init
#endif

m33_stl_fpu_init:

        vmrs            r0, fpscr
        ldr.w           r2, =M33_STL_FPSCR_MASK
        and             r0, r0, r2
        vmsr            fpscr, r0

        mov             r12, #M33_STL_IT1
        vmov            s0, r12
        vmov            s1, r12
        vmov            s2, r12
        vmov            s3, r12
        vmov            s4, r12
        vmov            s5, r12
        vmov            s6, r12
        vmov            s7, r12
        vmov            s8, r12
        vmov            s9, r12
        vmov            s10, r12
        vmov            s11, r12
        vmov            s12, r12
        vmov            s13, r12
        vmov            s14, r12
        vmov            s15, r12
        vmov            s16, r12
        vmov            s17, r12
        vmov            s18, r12
        vmov            s19, r12
        vmov            s20, r12
        vmov            s21, r12
        vmov            s22, r12
        vmov            s23, r12
        vmov            s24, r12
        vmov            s25, r12
        vmov            s26, r12
        vmov            s27, r12
        vmov            s28, r12
        vmov            s29, r12
        vmov            s30, r12
        vmov            s31, r12

        bx              lr

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
#endif
#ifdef TASKING
        .endsec
#endif

//-------------------------------------------------------------------------------
//   Function: m33_stl_full_init
//      init subroutine with FPU anf gpr registers initialization
//
//   Parameters:
//      N.A.
//
//   Returns:
//      N.A.
//------------------------------------------------------------------------------/

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_full_init,"ax"
        .global m33_stl_full_init
        .type m33_stl_full_init, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_full_init,"ax"
        .global m33_stl_full_init

#endif
#ifdef __IAR__
        public m33_stl_full_init
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_in_context_switch.asm"
        .section        .s_m33_stl_full_init,"ax",%progbits
        .global         m33_stl_full_init
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_full_init
        .global m33_stl_full_init
#endif

m33_stl_full_init:

        push            {lr}

        bl              m33_stl_fpu_init
        bl              m33_stl_gpr_init

        pop             {lr}

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
