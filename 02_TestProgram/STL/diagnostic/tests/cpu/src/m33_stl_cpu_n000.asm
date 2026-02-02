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

        .section .s_m33_stl_cpu_n000,"ax"
        .global m33_stl_cpu_n000
        .type m33_stl_cpu_n000, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n000,"ax"
        .global m33_stl_cpu_n000

#endif
m33_stl_cpu_n000:
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

        adr             r3, error_m33_stl_cpu_n000

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 1
//-----------------------------------------------------------------------------/

// This TE tests ADC with Carry instruction

// GP Registers initialization with input value, ADC operation test and compare
// the output result with expected value.

m33_stl_te1:

        ldr             r4, =M33_STL_TE1_INPUT_VAL7
        ldr             r2, =M33_STL_TE1_INPUT_VAL8
        ldr             r1, =M33_STL_TE1_MASK_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE1_INPUT_VAL1
        ldr             r6, =M33_STL_TE1_INPUT_VAL2

        adcs            r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r7, =M33_STL_TE1_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r7, =M33_STL_TE1_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r5, =M33_STL_TE1_INPUT_VAL3
        ldr             r6, =M33_STL_TE1_INPUT_VAL4

        adcs            r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r7, =M33_STL_TE1_EXP_VAL5

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r7, =M33_STL_TE1_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r5, =M33_STL_TE1_INPUT_VAL5
        ldr             r6, =M33_STL_TE1_INPUT_VAL6

        adcs            r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r7, =M33_STL_TE1_EXP_VAL6

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r7, =M33_STL_TE1_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te1:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 1
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 2
//-----------------------------------------------------------------------------/

// This TE tests ADD(immediate) instruction

// GP Registers initialization with input value, ADD operation test and compare
// the output result with expected value.

m33_stl_te2:

        ldr             r6, =M33_STL_TE2_INPUT_VAL1

        adds            r5, r6, M33_STL_TE2_INPUT_VAL2

        mov             r11, r5

        ldr             r7, =M33_STL_TE2_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE2_INPUT_VAL3

        adds            r5, r6, M33_STL_TE2_INPUT_VAL4

        mov             r11, r5

        ldr             r7, =M33_STL_TE2_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE2_INPUT_VAL5

        adds            r5, r6, M33_STL_TE2_INPUT_VAL6

        mov             r11, r5

        ldr             r7, =M33_STL_TE2_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te2:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 2
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 3
//-----------------------------------------------------------------------------/

// This TE tests ADD(large immediate) instruction

// GP Registers initialization with input value, ADD operation test and compare
// the output result with expected value.

m33_stl_te3:

        ldr             r5, =M33_STL_TE3_INPUT_VAL1

        adds            r5, r5, M33_STL_TE3_INPUT_VAL2

        mov             r11, r5

        ldr             r7, =M33_STL_TE3_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE3_INPUT_VAL3

        adds            r5, r5, M33_STL_TE3_INPUT_VAL4

        mov             r11, r5

        ldr             r7, =M33_STL_TE3_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE3_INPUT_VAL5

        adds            r5, r5, M33_STL_TE3_INPUT_VAL6

        mov             r11, r5

        ldr             r7, =M33_STL_TE3_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te3:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 3
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 4
//-----------------------------------------------------------------------------/

// This TE tests ADD(register) instruction

// GP Registers initialization with input value, ADD operation test and compare
// the output result with expected value.

m33_stl_te4:

        ldr             r7, =M33_STL_TE4_INPUT_VAL1
        ldr             r6, =M33_STL_TE4_INPUT_VAL2

        adds            r5, r7, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE4_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE4_INPUT_VAL3
        ldr             r6, =M33_STL_TE4_INPUT_VAL4

        adds            r5, r7, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE4_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE4_INPUT_VAL5
        ldr             r6, =M33_STL_TE4_INPUT_VAL6

        adds            r5, r7, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE4_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te4:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 4
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 5
//-----------------------------------------------------------------------------/

// This TE tests ADD(high register) instruction

// GP Registers initialization with input value, ADD operation test and compare
// the output result with expected value.

m33_stl_te5:

        ldr             r5, =M33_STL_TE5_INPUT_VAL1
        ldr             r6, =M33_STL_TE5_INPUT_VAL2

        mov             r11, r5

        add             r11, r6

        ldr             r7, =M33_STL_TE5_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE5_INPUT_VAL3
        ldr             r6, =M33_STL_TE5_INPUT_VAL4

        mov             r11, r5

        add             r11, r6

        ldr             r7, =M33_STL_TE5_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE5_INPUT_VAL5
        ldr             r6, =M33_STL_TE5_INPUT_VAL6

        mov             r11, r5

        add             r11, r6

        ldr             r7, =M33_STL_TE5_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te5:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 5
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 6
//-----------------------------------------------------------------------------/

// This TE tests AND instruction

// GP Registers initialization with input value, AND operation test and compare
// the output result with expected value.

m33_stl_te6:

        ldr             r5, =M33_STL_TE6_INPUT_VAL1
        ldr             r6, =M33_STL_TE6_INPUT_VAL2

        ands            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE6_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE6_INPUT_VAL3
        ldr             r6, =M33_STL_TE6_INPUT_VAL4

        ands            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE6_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE6_INPUT_VAL5
        ldr             r6, =M33_STL_TE6_INPUT_VAL6

        ands            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE6_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te6:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 6
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 39
//-----------------------------------------------------------------------------/

// This TE tests TST instruction

// GP Registers initialization with input value, write in APSR register,
// TST operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te39:

        ldr             r1, =M33_STL_TE39_INPUT_VAL6

        msr             apsr_nzcvq, r1

        ldr             r5, =M33_STL_TE39_INPUT_VAL1
        ldr             r6, =M33_STL_TE39_INPUT_VAL2

        tst             r5, r6

        ldr             r7, =M33_STL_TE39_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r1

        ldr             r5, =M33_STL_TE39_INPUT_VAL3
        ldr             r6, =M33_STL_TE39_INPUT_VAL4

        tst             r5, r6

        ldr             r7, =M33_STL_TE39_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r1

        msr             apsr_nzcvq, r1

        ldr             r5, =M33_STL_TE39_INPUT_VAL5
        ldr             r6, =M33_STL_TE39_INPUT_VAL6

        tst             r5, r6

        ldr             r7, =M33_STL_TE39_EXP_VAL3

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

m33_stl_close_te39:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 39
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n000:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n000

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n000:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n000

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n000:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n000 PROCEDURE
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

