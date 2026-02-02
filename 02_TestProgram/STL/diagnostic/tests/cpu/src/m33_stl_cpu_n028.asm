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

        .section .s_m33_stl_cpu_n028,"ax"
        .global m33_stl_cpu_n028
        .type m33_stl_cpu_n028, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n028,"ax"
        .global m33_stl_cpu_n028

#endif
m33_stl_cpu_n028:
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

        adr             r3, error_m33_stl_cpu_n028

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 161
//-----------------------------------------------------------------------------/

// This TE tests PKHBT instruction

// GP Registers initialization with input value, PKHBT operation test
// and compare the output result with expected value

m33_stl_te161:

        ldr             r6, =M33_STL_TE161_INPUT_VAL1
        ldr             r5, =M33_STL_TE161_INPUT_VAL2

        pkhbt           r11, r6, r5, lsl #M33_STL_TE161_INPUT_VAL3

        ldr             r12, =M33_STL_TE161_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE161_INPUT_VAL4
        ldr             r5, =M33_STL_TE161_INPUT_VAL5

        pkhbt           r11, r6, r5, lsl #M33_STL_TE161_INPUT_VAL6

        ldr             r12, =M33_STL_TE161_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE161_INPUT_VAL1
        ldr             r5, =M33_STL_TE161_INPUT_VAL5

        pkhbt           r11, r6, r5

        ldr             r12, =M33_STL_TE161_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te161:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 161
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 162
//-----------------------------------------------------------------------------/

// This TE tests PKHTB instruction

// GP Registers initialization with input value, PKHTB operation test
// and compare the output result with expected value

m33_stl_te162:

        ldr             r5, =M33_STL_TE162_INPUT_VAL1
        ldr             r6, =M33_STL_TE162_INPUT_VAL2

        pkhtb           r11, r5, r6

        ldr             r12, =M33_STL_TE162_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE162_INPUT_VAL2
        ldr             r6, =M33_STL_TE162_INPUT_VAL1

        pkhtb           r11, r5, r6, asr #M33_STL_TE162_INPUT_VAL3

        ldr             r12, =M33_STL_TE162_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te162:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 162
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n028:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n028

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n028:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n028

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n028:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n028 PROCEDURE
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
