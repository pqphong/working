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

        .section .s_m33_stl_cpu_n034,"ax"
        .global m33_stl_cpu_n034
        .type m33_stl_cpu_n034, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n034,"ax"
        .global m33_stl_cpu_n034

#endif
m33_stl_cpu_n034:
//-----------------------------------------------------------------------------/
// SAVE LINK REGISTER TO RETURN FROM TEST TO CALLER
//-----------------------------------------------------------------------------/

        push            {lr}

//-----------------------------------------------------------------------------/
// START CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/

        bl              m33_stl_gpr_context_save


        bl              m33_stl_gpr_init

//-----------------------------------------------------------------------------/
// END CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// SAVE LABEL ERROR
//-----------------------------------------------------------------------------/

        adr             r3, error_m33_stl_cpu_n034

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 211
//-----------------------------------------------------------------------------/

// This TE tests TEQ(Immediate) instruction

// GP Registers initialization with input value, TEQ operation test and compare
// the output result with expected value

m33_stl_te211:

        ldr             r6, =M33_STL_TE211_INPUT_VAL1

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE211_INPUT_VAL2

        teq             r5, M33_STL_TE211_INPUT_VAL4

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE211_MASK_VAL1

        ldr             r12, =M33_STL_TE211_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE211_INPUT_VAL3

        teq             r5, M33_STL_TE211_INPUT_VAL5

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE211_MASK_VAL1

        ldr             r12, =M33_STL_TE211_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE211_INPUT_VAL1

        teq             r5, M33_STL_TE211_INPUT_VAL1

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE211_MASK_VAL1

        ldr             r12, =M33_STL_TE211_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te211:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 211
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 212
//-----------------------------------------------------------------------------/

// This TE tests TEQ(Register) instruction

// GP Registers initialization with input value, TEQ operation test and compare
// the output result with expected value

m33_stl_te212:

        ldr             r6, =M33_STL_TE212_INPUT_VAL1

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE212_INPUT_VAL2
        ldr             r7, =M33_STL_TE212_INPUT_VAL4

        teq             r5, r7, rrx

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE212_MASK_VAL1

        ldr             r12, =M33_STL_TE212_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE212_INPUT_VAL3
        ldr             r7, =M33_STL_TE212_INPUT_VAL5

        teq             r5, r7, lsr #M33_STL_TE212_INPUT_VAL6

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE212_MASK_VAL1

        ldr             r12, =M33_STL_TE212_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE212_INPUT_VAL1
        ldr             r7, =M33_STL_TE212_INPUT_VAL1

        teq             r5, r7, rrx

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE212_MASK_VAL1

        ldr             r12, =M33_STL_TE212_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te212:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 212
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 213
//-----------------------------------------------------------------------------/

// This TE tests TST(Immediate) instruction

// GP Registers initialization with input value, TST operation test and compare
// the output result with expected value

m33_stl_te213:

        ldr             r6, =M33_STL_TE213_INPUT_VAL1

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE213_INPUT_VAL2

        tst             r5, M33_STL_TE213_INPUT_VAL4

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE213_MASK_VAL1

        ldr             r12, =M33_STL_TE213_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE213_INPUT_VAL3

        tst             r5, M33_STL_TE213_INPUT_VAL5

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE213_MASK_VAL1

        ldr             r12, =M33_STL_TE213_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE213_INPUT_VAL1

        tst             r5, M33_STL_TE213_INPUT_VAL1

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE213_MASK_VAL1

        ldr             r12, =M33_STL_TE213_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te213:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 213
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 214
//-----------------------------------------------------------------------------/

// This TE tests TST(Register) instruction

// GP Registers initialization with input value, TST operation test and compare
// the output result with expected value

m33_stl_te214:

        ldr             r6, =M33_STL_TE214_INPUT_VAL1

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE214_INPUT_VAL2
        ldr             r7, =M33_STL_TE214_INPUT_VAL4

        tst             r5, r7, lsr #M33_STL_TE214_INPUT_VAL1

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE214_MASK_VAL1

        ldr             r12, =M33_STL_TE214_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE214_INPUT_VAL3
        ldr             r7, =M33_STL_TE214_INPUT_VAL5

        tst             r5, r7, lsl #M33_STL_TE214_INPUT_VAL6

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE214_MASK_VAL1

        ldr             r12, =M33_STL_TE214_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r6

        ldr             r5, =M33_STL_TE214_INPUT_VAL1
        ldr             r7, =M33_STL_TE214_INPUT_VAL1

        tst             r5, r7, rrx

        mrs             r11, apsr

        and             r11, r11, M33_STL_TE214_MASK_VAL1

        ldr             r12, =M33_STL_TE214_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te214:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 214
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n034 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n034:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n034

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n034 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n034 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n034:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n034

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n034 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n034 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n034:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n034 PROCEDURE
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
