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

        .section .s_m33_stl_cpu_n027,"ax"
        .global m33_stl_cpu_n027
        .type m33_stl_cpu_n027, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n027,"ax"
        .global m33_stl_cpu_n027

#endif
m33_stl_cpu_n027:
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

        adr             r3, error_m33_stl_cpu_n027

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 156
//-----------------------------------------------------------------------------/

// This TE tests Move instructions

// GP Registers initialization with input value, write in APSR register,
// Move operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te156:

        ldr             r4, =M33_STL_TE156_INPUT_VAL3
        ldr             r1, =M33_STL_TE156_MASK_VAL1

        mov.w           r11, #M33_STL_TE156_INPUT_VAL1

        ldr             r12, =M33_STL_TE156_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov.w           r11, #M33_STL_TE156_INPUT_VAL2

        ldr             r12, =M33_STL_TE156_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        movs.w          r5, #M33_STL_TE156_INPUT_VAL3

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE156_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE156_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        movs.w          r5, #M33_STL_TE156_INPUT_VAL4

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE156_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE156_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE156_INPUT_VAL5

        mov.w           r11, r6, rrx

        ldr             r12, =M33_STL_TE156_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE156_INPUT_VAL6

        mov.w           r11, r6

        ldr             r12, =M33_STL_TE156_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE156_INPUT_VAL6

        movs.w          r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE156_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE156_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE156_INPUT_VAL5

        movs.w          r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE156_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE156_EXP_VAL11

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE156_INPUT_VAL3

        movs.w          r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE156_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE156_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE156_INPUT_VAL4

        movs.w          r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE156_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE156_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te156:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 156
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 159
//-----------------------------------------------------------------------------/

// This TE tests Move Not instructions

// GP Registers initialization with input value, write in APSR register,
// Move Not operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te159:

        ldr             r4, =M33_STL_TE159_INPUT_VAL3
        ldr             r1, =M33_STL_TE159_MASK_VAL1

        mvn.w           r11, #M33_STL_TE159_INPUT_VAL1

        ldr             r12, =M33_STL_TE159_EXP_VAL1

        bl              m33_stl_compare_gpr

        mvn.w           r11, #M33_STL_TE159_INPUT_VAL2

        ldr             r12, =M33_STL_TE159_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        mvns.w          r5, #M33_STL_TE159_INPUT_VAL3

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE159_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE159_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        mvns.w          r5, #M33_STL_TE159_INPUT_VAL4

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE159_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE159_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE159_INPUT_VAL5

        mvn.w           r11, r6, rrx

        ldr             r12, =M33_STL_TE159_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE159_INPUT_VAL6

        mvn.w           r11, r6

        ldr             r12, =M33_STL_TE159_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE159_INPUT_VAL6

        mvns.w          r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE159_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE159_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE159_INPUT_VAL5

        mvns.w          r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE159_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE159_EXP_VAL11

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE159_INPUT_VAL3

        mvns.w          r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE159_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE159_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE159_INPUT_VAL4

        mvns.w          r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE159_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE159_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te159:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 159
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n027:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n027

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n027:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n027

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n027:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n027 PROCEDURE
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
