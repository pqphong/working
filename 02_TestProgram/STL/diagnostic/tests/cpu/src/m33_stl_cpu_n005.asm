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

        .section .s_m33_stl_cpu_n005,"ax"
        .global m33_stl_cpu_n005
        .type m33_stl_cpu_n005, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n005,"ax"
        .global m33_stl_cpu_n005

#endif
m33_stl_cpu_n005:
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

        adr             r3, error_m33_stl_cpu_n005

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 27
//-----------------------------------------------------------------------------/

// This TE tests LDR and STR instructions

// GP Registers initialization with input value, LDR and STR operation test
// and compare the output result with expected value.

m33_stl_te27:

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        ldr             r4, =M33_STL_TE27_INPUT_VAL1

        str             r4, [sp]

        ldr             r5, [sp]

        mov             r11, r5

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        ldr             r7, =M33_STL_TE27_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        ldr             r4, =M33_STL_TE27_INPUT_VAL2

        str             r4, [sp]

        ldr             r5, [sp]

        mov             r11, r5

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        ldr             r7, =M33_STL_TE27_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE27_INPUT_VAL3

        str             r4, [r6, M33_STL_TE27_INPUT_VAL7]

        ldr             r5, [r6, M33_STL_TE27_INPUT_VAL7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE27_EXP_VAL3

        mov             r12, r7

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE27_INPUT_VAL4

        str             r4, [r6, M33_STL_TE27_INPUT_VAL7]

        ldr             r5, [r6, M33_STL_TE27_INPUT_VAL7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE27_EXP_VAL4

        mov             r12, r7

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE27_INPUT_VAL5
        ldr             r7, =M33_STL_TE27_INPUT_VAL7

        str             r4, [r6, r7]

        ldr             r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE27_EXP_VAL5

        mov             r12, r7

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE27_INPUT_VAL6
        ldr             r7, =M33_STL_TE27_INPUT_VAL7

        str             r4, [r6, r7]

        ldr             r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE27_EXP_VAL6

        mov             r12, r7

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        bl              m33_stl_compare_gpr

m33_stl_close_te27:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 27
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 28
//-----------------------------------------------------------------------------/

// This TE tests LDRB and LDRSB instructions

// GP Registers initialization with input value, LDRB and LDRSB operation test
// and compare the output result with expected value.

m33_stl_te28:

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE28_INPUT_VAL1

        str             r4, [r6, M33_STL_TE28_INPUT_VAL7]

        ldrb            r5, [r6, M33_STL_TE28_INPUT_VAL7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE28_EXP_VAL1

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr             r4, =M33_STL_TE28_INPUT_VAL2

        str             r4, [r6, M33_STL_TE28_INPUT_VAL7]

        ldrb            r5, [r6, M33_STL_TE28_INPUT_VAL7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE28_EXP_VAL2

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr             r4, =M33_STL_TE28_INPUT_VAL3
        ldr             r7, =M33_STL_TE28_INPUT_VAL7

        str             r4, [r6, r7]

        ldrb            r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE28_EXP_VAL3

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr             r4, =M33_STL_TE28_INPUT_VAL4
        ldr             r7, =M33_STL_TE28_INPUT_VAL7

        str             r4, [r6, r7]

        ldrb            r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE28_EXP_VAL4

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr             r4, =M33_STL_TE28_INPUT_VAL5
        ldr             r7, =M33_STL_TE28_INPUT_VAL7

        str             r4, [r6, r7]

        ldrsb           r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE28_EXP_VAL5

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr             r4, =M33_STL_TE28_INPUT_VAL6
        ldr             r7, =M33_STL_TE28_INPUT_VAL7

        str             r4, [r6, r7]

        ldrsb           r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE28_EXP_VAL6

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

m33_stl_close_te28:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 28
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 29
//-----------------------------------------------------------------------------/

// This TE tests LDRH and LDRSH instructions

// GP Registers initialization with input value, LDRH and LDRSH operation test
// and compare the output result with expected value.

m33_stl_te29:

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE29_INPUT_VAL1

        str             r4, [r6, M33_STL_TE29_INPUT_VAL7]

        ldrh            r5, [r6, M33_STL_TE29_INPUT_VAL7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE29_EXP_VAL1

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr             r4, =M33_STL_TE29_INPUT_VAL2

        str             r4, [r6, M33_STL_TE29_INPUT_VAL7]

        ldrh            r5, [r6, M33_STL_TE29_INPUT_VAL7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE29_EXP_VAL2

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr             r4, =M33_STL_TE29_INPUT_VAL3
        ldr             r7, =M33_STL_TE29_INPUT_VAL7

        str             r4, [r6, r7]

        ldrh            r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE29_EXP_VAL3

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr             r4, =M33_STL_TE29_INPUT_VAL4
        ldr             r7, =M33_STL_TE29_INPUT_VAL7

        str             r4, [r6, r7]

        ldrh            r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE29_EXP_VAL4

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr             r4, =M33_STL_TE29_INPUT_VAL5
        ldr             r7, =M33_STL_TE29_INPUT_VAL7

        str             r4, [r6, r7]

        ldrsh           r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE29_EXP_VAL5

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr             r4, =M33_STL_TE29_INPUT_VAL6
        ldr             r7, =M33_STL_TE29_INPUT_VAL7

        str             r4, [r6, r7]

        ldrsh           r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE29_EXP_VAL6

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

m33_stl_close_te29:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 29
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 30
//-----------------------------------------------------------------------------/

// This TE tests STRB and STRH instructions

// GP Registers initialization with input value, STRB and STRH operation test
// and compare the output result with expected value.

m33_stl_te30:

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r4, =M33_STL_TE30_INPUT_VAL1

        strb            r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r5, [r6, M33_STL_TE30_INPUT_VAL5]

        mov             r11, r5

        ldr             r7, =M33_STL_TE30_EXP_VAL1

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r4, =M33_STL_TE30_INPUT_VAL2

        strb            r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r5, [r6, M33_STL_TE30_INPUT_VAL5]

        mov             r11, r5

        ldr             r7, =M33_STL_TE30_EXP_VAL2

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr
        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r4, =M33_STL_TE30_INPUT_VAL3
        ldr             r7, =M33_STL_TE30_INPUT_VAL5

        strb            r4, [r6, r7]

        ldr             r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE30_EXP_VAL3

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r4, =M33_STL_TE30_INPUT_VAL4
        ldr             r7, =M33_STL_TE30_INPUT_VAL5

        strb            r4, [r6, r7]

        ldr             r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE30_EXP_VAL4

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r4, =M33_STL_TE30_INPUT_VAL1

        strh            r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r5, [r6, M33_STL_TE30_INPUT_VAL5]

        mov             r11, r5

        ldr             r7, =M33_STL_TE30_EXP_VAL5

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r4, =M33_STL_TE30_INPUT_VAL2

        strh            r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r5, [r6, M33_STL_TE30_INPUT_VAL5]

        mov             r11, r5

        ldr             r7, =M33_STL_TE30_EXP_VAL6

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r4, =M33_STL_TE30_INPUT_VAL3
        ldr             r7, =M33_STL_TE30_INPUT_VAL5

        strh            r4, [r6, r7]

        ldr             r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE30_EXP_VAL7

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr             r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, M33_STL_TE30_INPUT_VAL5]

        ldr             r4, =M33_STL_TE30_INPUT_VAL4
        ldr             r7, =M33_STL_TE30_INPUT_VAL5

        strh            r4, [r6, r7]

        ldr             r5, [r6, r7]

        mov             r11, r5

        ldr             r7, =M33_STL_TE30_EXP_VAL8

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

m33_stl_close_te30:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 30
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 54
//-----------------------------------------------------------------------------/

// This TE tests a set of LDR and ADR instructions with label

// GP Registers initialization with address of the labels, execute subs operation
// and compare the output result with expected value.

m33_stl_te54:

        ldr             r0, first_test_address

        ldr             r1, second_test_address

        adr             r6, first_test_address

        adr             r7, second_test_address

        .align 4

first_test_address:

        movw            r5, #M33_STL_TE54_INPUT_VAL1

second_test_address:

        subs            r5, r1, r0

        movw            r12, #M33_STL_TE54_EXP_VAL1
        movt            r12, #M33_STL_TE54_EXP_VAL2

        mov             r11, r5

        bl              m33_stl_compare_gpr

        subs            r5, r7, r6

        movw            r12, #M33_STL_TE54_EXP_VAL3
        movt            r12, #M33_STL_TE54_EXP_VAL4

        mov             r11, r5

        bl              m33_stl_compare_gpr

m33_stl_close_te54:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 54
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n005 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n005:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n005

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n005 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n005 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n005:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n005

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n005 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n005 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n005:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n005 PROCEDURE
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
