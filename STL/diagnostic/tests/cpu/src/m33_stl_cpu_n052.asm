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

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_cpu_n052,"ax"
        .global m33_stl_cpu_n052
        .type m33_stl_cpu_n052, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n052,"ax"
        .global m33_stl_cpu_n052

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n052
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n052.asm"
        .section        .s_m33_stl_cpu_n052,"ax",%progbits
        .global         m33_stl_cpu_n052
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n052
        .global m33_stl_cpu_n052

        .align           4

#endif
m33_stl_cpu_n052:
//-----------------------------------------------------------------------------/
// SAVE LINK REGISTER TO RETURN FROM TEST TO CALLER
//-----------------------------------------------------------------------------/

        push            {lr}

//-----------------------------------------------------------------------------/
// START CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/

        bl              m33_stl_full_context_save


        bl              m33_stl_full_init

//-----------------------------------------------------------------------------/
// END CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// SAVE LABEL ERROR
//-----------------------------------------------------------------------------/

#ifdef TASKING
        adr             r3, error_m33_stl_cpu_n052
#else
        adr.w           r3, error_m33_stl_cpu_n052
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 420
//-----------------------------------------------------------------------------/

// This TE tests VMOV instructions

// GP Registers initialization with input value,
// move GP register in FP register, VMOV operations test and compare
// the output result with expected value

m33_stl_te420:

        ldr.w           r4, =M33_STL_TE420_INPUT_VAL1
        ldr.w           r5, =M33_STL_TE420_INPUT_VAL2

        vmov            s4, r4

        vmov            r11, s4

        ldr.w           r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            s4, r5

        vmov            r11, s4

        ldr.w           r12, =M33_STL_TE420_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmov            d0, r4, r4

        vmov            r11, r10, d0

        ldr.w           r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        vmov            d0, r5, r5

        vmov            r11, r10, d0

        ldr.w           r12, =M33_STL_TE420_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        vmov            s6, s7, r4, r4

        vmov            r11, r10, s6, s7

        ldr.w           r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        vmov            s6, s7, r5, r5

        vmov            r11, r10, s6, s7

        ldr.w           r12, =M33_STL_TE420_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        vmov.f32        s11, #M33_STL_TE420_INPUT_VAL3

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE420_EXP_VAL3

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r6, =M33_STL_TE420_INPUT_VAL4
        vmov            s11, r6
#else
        vmov.f32        s11, #M33_STL_TE420_INPUT_VAL4
#endif

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE420_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            s0, r4

        vmov.f32        s11, s0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            s0, r5

        vmov.f32        s11, s0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE420_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmov.32         d0[0], r4

        vmov.32         r11, d0[0]

        ldr.w           r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov.32         d0[1], r5

        vmov.32         r11, d0[1]

        ldr.w           r12, =M33_STL_TE420_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te420:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 420
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n052 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n052:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n052

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n052 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n052 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n052:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n052

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n052 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n052 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n052:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n052 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// RESTORE LINK REGISTER TO RETURN TO CALLER
//-----------------------------------------------------------------------------/

        pop             {r0}
        mov             lr, r0

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
