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

        .section .s_m33_stl_cpu_n002,"ax"
        .global m33_stl_cpu_n002
        .type m33_stl_cpu_n002, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n002,"ax"
        .global m33_stl_cpu_n002

#endif
m33_stl_cpu_n002:
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

        adr             r3, error_m33_stl_cpu_n002

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 12
//-----------------------------------------------------------------------------/

// This TE tests LSL(immediate) instruction

// GP Registers initialization with input value, LSL(immediate) operation test
// and compare the output result with expected value.

m33_stl_te12:

        ldr             r6, =M33_STL_TE12_INPUT_VAL1

        lsls            r5, r6, M33_STL_TE12_INPUT_VAL2

        mov             r11, r5

        ldr             r7, =M33_STL_TE12_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE12_INPUT_VAL3

        lsls            r5, r6, M33_STL_TE12_INPUT_VAL2

        mov             r11, r5

        ldr             r7, =M33_STL_TE12_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE12_INPUT_VAL4

        lsls            r5, r6, M33_STL_TE12_INPUT_VAL6

        mov             r11, r5

        ldr             r7, =M33_STL_TE12_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE12_INPUT_VAL1

        lsls            r5, r6, M33_STL_TE12_INPUT_VAL5

        mov             r11, r5

        ldr             r7, =M33_STL_TE12_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te12:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 12
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 13
//-----------------------------------------------------------------------------/

// This TE tests LSL(register) instruction

// GP Registers initialization with input value, LSL operation test and compare
// the output result with expected value.

m33_stl_te13:

        ldr             r5, =M33_STL_TE13_INPUT_VAL1
        ldr             r6, =M33_STL_TE13_INPUT_VAL2

        lsls            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE13_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE13_INPUT_VAL3
        ldr             r6, =M33_STL_TE13_INPUT_VAL2

        lsls            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE13_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE13_INPUT_VAL4
        ldr             r6, =M33_STL_TE13_INPUT_VAL6

        lsls            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE13_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE13_INPUT_VAL1
        ldr             r6, =M33_STL_TE13_INPUT_VAL5

        lsls            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE13_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te13:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 13
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 14
//-----------------------------------------------------------------------------/

// This TE tests LSR(immediate) instruction

// GP Registers initialization with input value, LSR(immediate) operation test
// and compare the output result with expected value.

m33_stl_te14:

        ldr             r6, =M33_STL_TE14_INPUT_VAL1

        lsrs            r5, r6, M33_STL_TE14_INPUT_VAL2

        mov             r11, r5

        ldr             r7, =M33_STL_TE14_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE14_INPUT_VAL3

        lsrs            r5, r6, M33_STL_TE14_INPUT_VAL2

        mov             r11, r5

        ldr             r7, =M33_STL_TE14_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE14_INPUT_VAL4

        lsrs            r5, r6, M33_STL_TE14_INPUT_VAL6

        mov             r11, r5

        ldr             r7, =M33_STL_TE14_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE14_INPUT_VAL1

        lsrs            r5, r6, M33_STL_TE14_INPUT_VAL5

        mov             r11, r5

        ldr             r7, =M33_STL_TE14_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te14:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 14
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 15
//-----------------------------------------------------------------------------/

// This TE tests LSR(register) instruction

// GP Registers initialization with input value, LSR operation test and compare
// the output result with expected value.

m33_stl_te15:

        ldr             r5, =M33_STL_TE15_INPUT_VAL1
        ldr             r6, =M33_STL_TE15_INPUT_VAL2

        lsrs            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE15_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE15_INPUT_VAL3
        ldr             r6, =M33_STL_TE15_INPUT_VAL2

        lsrs            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE15_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE15_INPUT_VAL4
        ldr             r6, =M33_STL_TE15_INPUT_VAL6

        lsrs            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE15_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE15_INPUT_VAL1
        ldr             r6, =M33_STL_TE15_INPUT_VAL5

        lsrs            r5, r5, r6

        mov             r11, r5

        ldr             r7, =M33_STL_TE15_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te15:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 15
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n002 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n002:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n002

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n002 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n002 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n002:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n002

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n002 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n002 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n002:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n002 PROCEDURE
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
