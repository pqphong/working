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

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_cpu_n052,"ax"
        .global m33_stl_cpu_n052
        .type m33_stl_cpu_n052, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n052,"ax"
        .global m33_stl_cpu_n052

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

        adr             r3, error_m33_stl_cpu_n052

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 420
//-----------------------------------------------------------------------------/

// This TE tests VMOV instructions

// GP Registers initialization with input value,
// move GP register in FP register, VMOV operations test and compare
// the output result with expected value

m33_stl_te420:

        ldr             r4, =M33_STL_TE420_INPUT_VAL1
        ldr             r5, =M33_STL_TE420_INPUT_VAL2

        vmov            s4, r4

        vmov            r11, s4

        ldr             r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            s4, r5

        vmov            r11, s4

        ldr             r12, =M33_STL_TE420_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmov            d0, r4, r4

        vmov            r11, r10, d0

        ldr             r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        vmov            d0, r5, r5

        vmov            r11, r10, d0

        ldr             r12, =M33_STL_TE420_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        vmov            s6, s7, r4, r4

        vmov            r11, r10, s6, s7

        ldr             r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        vmov            s6, s7, r5, r5

        vmov            r11, r10, s6, s7

        ldr             r12, =M33_STL_TE420_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        vmov.f32        s11, M33_STL_TE420_INPUT_VAL7

        vmov            r11, s11

        ldr             r12, =M33_STL_TE420_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmov.f32        s11, M33_STL_TE420_INPUT_VAL8

        vmov            r11, s11

        ldr             r12, =M33_STL_TE420_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmov            s0, r4

        vmov.f32        s11, s0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            s0, r5

        vmov.f32        s11, s0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE420_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmov.32         d0[M33_STL_TE420_INPUT_VAL5], r4

        vmov.32         r11, d0[M33_STL_TE420_INPUT_VAL5]

        ldr             r12, =M33_STL_TE420_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov.32         d0[M33_STL_TE420_INPUT_VAL6], r5

        vmov.32         r11, d0[M33_STL_TE420_INPUT_VAL6]

        ldr             r12, =M33_STL_TE420_EXP_VAL2

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

        .align 4
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
#ifdef __GHS__
        .align          8
        .end
#endif
#ifdef GCC_COMPILER
        .align          8
        .end
#endif
        end
