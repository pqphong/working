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

        .section .s_m33_stl_cpu_n043,"ax"
        .global m33_stl_cpu_n043
        .type m33_stl_cpu_n043, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n043,"ax"
        .global m33_stl_cpu_n043

#endif
m33_stl_cpu_n043:
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

        adr             r3, error_m33_stl_cpu_n043

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 244
//-----------------------------------------------------------------------------/

// This TE tests VABS.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, VABS.F32 operation test and compare
// the output result with expected value

m33_stl_te244:

        ldr             r7, =M33_STL_TE244_INPUT_VAL1

        vmov.f32        s1, r7

        vabs.f32        s3, s1

        vmov            r11, s3

        ldr             r12, =M33_STL_TE244_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE244_INPUT_VAL2

        vmov.f32        s1, r7

        vabs.f32        s3, s1

        vmov            r11, s3

        ldr             r12, =M33_STL_TE244_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te244:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 244
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 324
//-----------------------------------------------------------------------------/

// This TE tests VNEG.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, VNEG.F32 operation test and compare
// the output result with expected value

m33_stl_te324:

        ldr             r7, =M33_STL_TE324_INPUT_VAL1

        vmov.f32        s1, r7

        vneg.f32        s3, s1

        vmov            r11, s3

        ldr             r12, =M33_STL_TE324_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE324_INPUT_VAL2

        vmov.f32        s1, r7

        vneg.f32        s3, s1

        vmov            r11, s3

        ldr             r12, =M33_STL_TE324_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te324:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 324
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n043 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n043:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n043

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n043 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n043 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n043:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n043

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n043 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n043 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n043:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n043 PROCEDURE
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
