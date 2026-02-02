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

        .section .s_m33_stl_cpu_n008,"ax"
        .global m33_stl_cpu_n008
        .type m33_stl_cpu_n008, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n008,"ax"
        .global m33_stl_cpu_n008

#endif
m33_stl_cpu_n008:
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

        adr             r3, error_m33_stl_cpu_n008

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 34
//-----------------------------------------------------------------------------/

// This TE tests CMP instruction

// GP Registers initialization with input value, write in APSR register,
// CMP operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te34:

        ldr             r4, =M33_STL_TE34_INPUT_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE34_INPUT_VAL2
        ldr             r6, =M33_STL_TE34_INPUT_VAL3

        cmp             r5, r6

        ldr             r7, =M33_STL_TE34_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE34_INPUT_VAL4
        ldr             r6, =M33_STL_TE34_INPUT_VAL2

        cmp             r5, r6

        ldr             r7, =M33_STL_TE34_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE34_INPUT_VAL3
        ldr             r6, =M33_STL_TE34_INPUT_VAL3

        mov             r8, r5

        cmp             r8, r6

        ldr             r7, =M33_STL_TE34_EXP_VAL3

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE34_INPUT_VAL5
        ldr             r6, =M33_STL_TE34_INPUT_VAL1

        mov             r8, r5

        cmp             r8, r6

        ldr             r7, =M33_STL_TE34_EXP_VAL4

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

m33_stl_close_te34:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 34
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 35
//-----------------------------------------------------------------------------/

// This TE tests CMN instruction

// GP Registers initialization with input value, write in APSR register,
// CMN operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te35:

        ldr             r4, =M33_STL_TE35_INPUT_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE35_INPUT_VAL2
        ldr             r6, =M33_STL_TE35_INPUT_VAL3

        cmn             r5, r6

        ldr             r7, =M33_STL_TE35_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE35_INPUT_VAL4
        ldr             r6, =M33_STL_TE35_INPUT_VAL2

        cmn             r5, r6

        ldr             r7, =M33_STL_TE35_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE35_INPUT_VAL3
        ldr             r6, =M33_STL_TE35_INPUT_VAL3

        cmn             r5, r6

        ldr             r7, =M33_STL_TE35_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE35_INPUT_VAL5
        ldr             r6, =M33_STL_TE35_INPUT_VAL5

        cmn             r5, r6

        ldr             r7, =M33_STL_TE35_EXP_VAL3

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE35_INPUT_VAL1
        ldr             r6, =M33_STL_TE35_INPUT_VAL1

        cmn             r5, r6

        ldr             r7, =M33_STL_TE35_EXP_VAL4

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

m33_stl_close_te35:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 35
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 36
//-----------------------------------------------------------------------------/

// This TE tests CMP(immediate) instruction

// GP Registers initialization with input value, write in APSR register,
// CMP(immediate) operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te36:

        ldr             r4, =M33_STL_TE36_INPUT_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE36_INPUT_VAL2

        cmp             r5, M33_STL_TE36_INPUT_VAL6

        ldr             r7, =M33_STL_TE36_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE36_INPUT_VAL4

        cmp             r5, M33_STL_TE36_INPUT_VAL7

        ldr             r7, =M33_STL_TE36_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE36_INPUT_VAL3

        cmp             r5, M33_STL_TE36_INPUT_VAL6

        ldr             r7, =M33_STL_TE36_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE36_INPUT_VAL7

        cmp             r5, M33_STL_TE36_INPUT_VAL7

        ldr             r7, =M33_STL_TE36_EXP_VAL3

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE36_INPUT_VAL1

        cmp             r5, M33_STL_TE36_INPUT_VAL5

        ldr             r7, =M33_STL_TE36_EXP_VAL4

        mov             r12, r7

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

m33_stl_close_te36:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 36
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n008:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n008

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n008:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n008

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n008:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n008 PROCEDURE
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
