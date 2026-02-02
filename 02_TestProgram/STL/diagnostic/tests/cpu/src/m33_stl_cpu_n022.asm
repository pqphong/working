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

        .section .s_m33_stl_cpu_n022,"ax"
        .global m33_stl_cpu_n022
        .type m33_stl_cpu_n022, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n022,"ax"
        .global m33_stl_cpu_n022

#endif
m33_stl_cpu_n022:
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

        adr             r3, error_m33_stl_cpu_n022

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 141
//-----------------------------------------------------------------------------/

// This TE tests CMN and Conditional instruction

// GP Registers initialization with input value, write in APSR register,
// CMN operation test, execute Condition instructions,
// read from APSR register and compare the output result with expected value

m33_stl_te141:

        ldr             r4, =M33_STL_TE141_INPUT_VAL1
        ldr             r9, =M33_STL_TE141_INPUT_VAL2
        ldr             r10, =M33_STL_TE141_INPUT_VAL3

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE141_INPUT_VAL2

        cmn             r5, M33_STL_TE141_INPUT_VAL4

        ldr             r12, =M33_STL_TE141_EXP_VAL1

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE141_INPUT_VAL1

        cmn             r5, M33_STL_TE141_INPUT_VAL1

        ldr             r12, =M33_STL_TE141_EXP_VAL2

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE141_INPUT_VAL3

        cmn             r5, M33_STL_TE141_INPUT_VAL4

        ldr             r12, =M33_STL_TE141_EXP_VAL3

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE141_INPUT_VAL6

        cmn             r5, M33_STL_TE141_INPUT_VAL6

        ldr             r12, =M33_STL_TE141_EXP_VAL3

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE141_INPUT_VAL5

        cmn             r5, M33_STL_TE141_INPUT_VAL5

        ldr             r12, =M33_STL_TE141_EXP_VAL3

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE141_INPUT_VAL2
        ldr             r6, =M33_STL_TE141_INPUT_VAL3

        cmn             r5, r6, rrx

        ldr             r12, =M33_STL_TE141_EXP_VAL1

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE141_INPUT_VAL5
        ldr             r6, =M33_STL_TE141_INPUT_VAL7

        cmn             r5, r6, lsr #M33_STL_TE141_INPUT_VAL8

        ldr             r12, =M33_STL_TE141_EXP_VAL3

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE141_INPUT_VAL9
        ldr             r6, =M33_STL_TE141_INPUT_VAL10

        cmn             r5, r6, lsl #M33_STL_TE141_INPUT_VAL8

        ldr             r12, =M33_STL_TE141_EXP_VAL4

        mrs             r11, apsr
        bl              m33_stl_compare_gpr


m33_stl_close_te141:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 141
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 142
//-----------------------------------------------------------------------------/

// This TE tests CMP and Conditional instruction

// GP Registers initialization with input value, write in APSR register,
// CMN operation test, execute Condition instructions,
// read from APSR register and compare the output result with expected value

m33_stl_te142:

        ldr             r4, =M33_STL_TE142_INPUT_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE142_INPUT_VAL2

        cmp.w           r5, M33_STL_TE142_INPUT_VAL4

        ldr             r12, =M33_STL_TE142_EXP_VAL1

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE142_INPUT_VAL1

        cmp             r5, M33_STL_TE142_INPUT_VAL1

        ldr             r12, =M33_STL_TE142_EXP_VAL2

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE142_INPUT_VAL3

        cmp.w           r5, M33_STL_TE142_INPUT_VAL4

        ldr             r12, =M33_STL_TE142_EXP_VAL3

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE142_INPUT_VAL6

        cmp             r5, M33_STL_TE142_INPUT_VAL6

        ldr             r12, =M33_STL_TE142_EXP_VAL2

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE142_INPUT_VAL9

        cmp             r5, M33_STL_TE142_INPUT_VAL5

        ldr             r12, =M33_STL_TE142_EXP_VAL4

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE142_INPUT_VAL2
        ldr             r6, =M33_STL_TE142_INPUT_VAL3

        cmp             r5, r6, rrx

        ldr             r12, =M33_STL_TE142_EXP_VAL1

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE142_INPUT_VAL5
        ldr             r6, =M33_STL_TE142_INPUT_VAL7

        cmp             r5, r6, lsr #M33_STL_TE142_INPUT_VAL8

        ldr             r12, =M33_STL_TE142_EXP_VAL2

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE142_INPUT_VAL5
        ldr             r6, =M33_STL_TE142_INPUT_VAL10

        cmp             r5, r6, lsr #M33_STL_TE142_INPUT_VAL8

        ldr             r12, =M33_STL_TE142_EXP_VAL5

        mrs             r11, apsr
        bl              m33_stl_compare_gpr

m33_stl_close_te142:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 142
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n022:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n022

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n022:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n022

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n022:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n022 PROCEDURE
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
