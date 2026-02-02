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

        .section .s_m33_stl_cpu_n009,"ax"
        .global m33_stl_cpu_n009
        .type m33_stl_cpu_n009, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n009,"ax"
        .global m33_stl_cpu_n009

#endif
m33_stl_cpu_n009:
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

        adr             r3, error_m33_stl_cpu_n009

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 321
//-----------------------------------------------------------------------------/

// This TE tests FP Single Precision registers

// GP Registers initialization with input value, test FP Single Precision register and
// compare the output result with expected value.

m33_stl_te321:

        ldr             r2, =M33_STL_TE321_INPUT_VAL1

        vmov            s0, r2
        vmov            s1, r2
        vmov            s2, r2
        vmov            s3, r2
        vmov            s4, r2
        vmov            s5, r2
        vmov            s6, r2
        vmov            s7, r2
        vmov            s8, r2
        vmov            s9, r2
        vmov            s10, r2
        vmov            s11, r2
        vmov            s12, r2
        vmov            s13, r2
        vmov            s14, r2
        vmov            s15, r2
        vmov            s16, r2
        vmov            s17, r2
        vmov            s18, r2
        vmov            s19, r2
        vmov            s20, r2
        vmov            s21, r2
        vmov            s22, r2
        vmov            s23, r2
        vmov            s24, r2
        vmov            s25, r2
        vmov            s26, r2
        vmov            s27, r2
        vmov            s28, r2
        vmov            s29, r2
        vmov            s30, r2
        vmov            s31, r2

        ldr             r2, =M33_STL_TE321_INPUT_VAL2

        movw            r12, #M33_STL_TE321_EXP_VAL1
        movt            r12, #M33_STL_TE321_EXP_VAL1

        vmov            s0, r2
        vmov            r11, s0
        bl              m33_stl_compare_gpr

        vmov            s1, r2
        vmov            r11, s1
        bl              m33_stl_compare_gpr

        vmov            s2, r2
        vmov            r11, s2
        bl              m33_stl_compare_gpr

        vmov            s3, r2
        vmov            r11, s3
        bl              m33_stl_compare_gpr

        vmov            s4, r2
        vmov            r11, s4
        bl              m33_stl_compare_gpr

        vmov            s5, r2
        vmov            r11, s5
        bl              m33_stl_compare_gpr

        vmov            s6, r2
        vmov            r11, s6
        bl              m33_stl_compare_gpr

        vmov            s7, r2
        vmov            r11, s7
        bl              m33_stl_compare_gpr

        vmov            s8, r2
        vmov            r11, s8
        bl              m33_stl_compare_gpr

        vmov            s9, r2
        vmov            r11, s9
        bl              m33_stl_compare_gpr

        vmov            s10, r2
        vmov            r11, s10
        bl              m33_stl_compare_gpr

        vmov            s11, r2
        vmov            r11, s11
        bl              m33_stl_compare_gpr

        vmov            s12, r2
        vmov            r11, s12
        bl              m33_stl_compare_gpr

        vmov            s13, r2
        vmov            r11, s13
        bl              m33_stl_compare_gpr

        vmov            s14, r2
        vmov            r11, s14
        bl              m33_stl_compare_gpr

        vmov            s15, r2
        vmov            r11, s15
        bl              m33_stl_compare_gpr

        vmov            s16, r2
        vmov            r11, s16
        bl              m33_stl_compare_gpr

        vmov            s17, r2
        vmov            r11, s17
        bl              m33_stl_compare_gpr

        vmov            s18, r2
        vmov            r11, s18
        bl              m33_stl_compare_gpr

        vmov            s19, r2
        vmov            r11, s19
        bl              m33_stl_compare_gpr

        vmov            s20, r2
        vmov            r11, s20
        bl              m33_stl_compare_gpr

        vmov            s21, r2
        vmov            r11, s21
        bl              m33_stl_compare_gpr

        vmov            s22, r2
        vmov            r11, s22
        bl              m33_stl_compare_gpr

        vmov            s23, r2
        vmov            r11, s23
        bl              m33_stl_compare_gpr

        vmov            s24, r2
        vmov            r11, s24
        bl              m33_stl_compare_gpr

        vmov            s25, r2
        vmov            r11, s25
        bl              m33_stl_compare_gpr

        vmov            s26, r2
        vmov            r11, s26
        bl              m33_stl_compare_gpr

        vmov            s27, r2
        vmov            r11, s27
        bl              m33_stl_compare_gpr

        vmov            s28, r2
        vmov            r11, s28
        bl              m33_stl_compare_gpr

        vmov            s29, r2
        vmov            r11, s29
        bl              m33_stl_compare_gpr

        vmov            s30, r2
        vmov            r11, s30
        bl              m33_stl_compare_gpr

        vmov            s31, r2
        vmov            r11, s31
        bl              m33_stl_compare_gpr

        ldr             r2, =M33_STL_TE321_INPUT_VAL2

        vmov            s0, r2
        vmov            s1, r2
        vmov            s2, r2
        vmov            s3, r2
        vmov            s4, r2
        vmov            s5, r2
        vmov            s6, r2
        vmov            s7, r2
        vmov            s8, r2
        vmov            s9, r2
        vmov            s10, r2
        vmov            s11, r2
        vmov            s12, r2
        vmov            s13, r2
        vmov            s14, r2
        vmov            s15, r2
        vmov            s16, r2
        vmov            s17, r2
        vmov            s18, r2
        vmov            s19, r2
        vmov            s20, r2
        vmov            s21, r2
        vmov            s22, r2
        vmov            s23, r2
        vmov            s24, r2
        vmov            s25, r2
        vmov            s26, r2
        vmov            s27, r2
        vmov            s28, r2
        vmov            s29, r2
        vmov            s30, r2
        vmov            s31, r2

        ldr             r2, =M33_STL_TE321_INPUT_VAL1

        movw            r12, #M33_STL_TE321_EXP_VAL2
        movt            r12, #M33_STL_TE321_EXP_VAL2

        vmov            s0, r2
        vmov            r11, s0
        bl              m33_stl_compare_gpr

        vmov            s1, r2
        vmov            r11, s1
        bl              m33_stl_compare_gpr

        vmov            s2, r2
        vmov            r11, s2
        bl              m33_stl_compare_gpr

        vmov            s3, r2
        vmov            r11, s3
        bl              m33_stl_compare_gpr

        vmov            s4, r2
        vmov            r11, s4
        bl              m33_stl_compare_gpr

        vmov            s5, r2
        vmov            r11, s5
        bl              m33_stl_compare_gpr

        vmov            s6, r2
        vmov            r11, s6
        bl              m33_stl_compare_gpr

        vmov            s7, r2
        vmov            r11, s7
        bl              m33_stl_compare_gpr

        vmov            s8, r2
        vmov            r11, s8
        bl              m33_stl_compare_gpr

        vmov            s9, r2
        vmov            r11, s9
        bl              m33_stl_compare_gpr

        vmov            s10, r2
        vmov            r11, s10
        bl              m33_stl_compare_gpr

        vmov            s11, r2
        vmov            r11, s11
        bl              m33_stl_compare_gpr

        vmov            s12, r2
        vmov            r11, s12
        bl              m33_stl_compare_gpr

        vmov            s13, r2
        vmov            r11, s13
        bl              m33_stl_compare_gpr

        vmov            s14, r2
        vmov            r11, s14
        bl              m33_stl_compare_gpr

        vmov            s15, r2
        vmov            r11, s15
        bl              m33_stl_compare_gpr

        vmov            s16, r2
        vmov            r11, s16
        bl              m33_stl_compare_gpr

        vmov            s17, r2
        vmov            r11, s17
        bl              m33_stl_compare_gpr

        vmov            s18, r2
        vmov            r11, s18
        bl              m33_stl_compare_gpr

        vmov            s19, r2
        vmov            r11, s19
        bl              m33_stl_compare_gpr

        vmov            s20, r2
        vmov            r11, s20
        bl              m33_stl_compare_gpr

        vmov            s21, r2
        vmov            r11, s21
        bl              m33_stl_compare_gpr

        vmov            s22, r2
        vmov            r11, s22
        bl              m33_stl_compare_gpr

        vmov            s23, r2
        vmov            r11, s23
        bl              m33_stl_compare_gpr

        vmov            s24, r2
        vmov            r11, s24
        bl              m33_stl_compare_gpr

        vmov            s25, r2
        vmov            r11, s25
        bl              m33_stl_compare_gpr

        vmov            s26, r2
        vmov            r11, s26
        bl              m33_stl_compare_gpr

        vmov            s27, r2
        vmov            r11, s27
        bl              m33_stl_compare_gpr

        vmov            s28, r2
        vmov            r11, s28
        bl              m33_stl_compare_gpr

        vmov            s29, r2
        vmov            r11, s29
        bl              m33_stl_compare_gpr

        vmov            s30, r2
        vmov            r11, s30
        bl              m33_stl_compare_gpr

        vmov            s31, r2
        vmov            r11, s31
        bl              m33_stl_compare_gpr

m33_stl_close_te321:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 321
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n009 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n009:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n009

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n009 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n009 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n009:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n009

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n009 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n009 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n009:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n009 PROCEDURE
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
