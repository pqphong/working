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
//  Release Information : Res_STL_M33_U5Lx_Renesas_SW_1.0.0
//
//------------------------------------------------------------------------------
//
//  Licensed by ResilTech SRL to Renesas Electronics Corporation
//
//------------------------------------------------------------------------------
 
#include "m33_stl_constants.h"

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_cpu_n005,"ax"
        .global m33_stl_cpu_n005
        .type m33_stl_cpu_n005, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n005,"ax"
        .global m33_stl_cpu_n005

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n005
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n005.asm"
        .section        .s_m33_stl_cpu_n005,"ax",%progbits
        .global         m33_stl_cpu_n005
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n005
        .global m33_stl_cpu_n005

        .align           4

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

#ifdef TASKING
        adr             r3, error_m33_stl_cpu_n005
#else
        adr.w           r3, error_m33_stl_cpu_n005
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 27
//-----------------------------------------------------------------------------/

// This TE tests LDR and STR instructions

// GP Registers initialization with input value, LDR and STR operation test
// and compare the output result with expected value.

m33_stl_te27:

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE27_INPUT_VAL1

        str             r4, [sp]

#ifdef TASKING
        ldr             r5, [sp]
#else
        ldr.w           r5, [sp]
#endif

        mov             r11, r5

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        ldr.w           r7, =M33_STL_TE27_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE27_INPUT_VAL2

        str             r4, [sp]

#ifdef TASKING
        ldr             r5, [sp]
#else
        ldr.w           r5, [sp]
#endif

        mov             r11, r5

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        ldr.w           r7, =M33_STL_TE27_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE27_INPUT_VAL3

        str             r4, [r6, #M33_STL_TE27_INPUT_VAL7]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE27_INPUT_VAL7]
#else
        ldr.w           r5, [r6, #M33_STL_TE27_INPUT_VAL7]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE27_EXP_VAL3

        mov             r12, r7

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE27_INPUT_VAL4

        str             r4, [r6, #M33_STL_TE27_INPUT_VAL7]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE27_INPUT_VAL7]
#else
        ldr.w           r5, [r6, #M33_STL_TE27_INPUT_VAL7]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE27_EXP_VAL4

        mov             r12, r7

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE27_INPUT_VAL5
        ldr.w           r7, =M33_STL_TE27_INPUT_VAL7

        str             r4, [r6, r7]

#ifdef TASKING
        ldr             r5, [r6, r7]
#else
        ldr.w           r5, [r6, r7]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE27_EXP_VAL5

        mov             r12, r7

        add             sp, sp, #M33_STL_TE27_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE27_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE27_INPUT_VAL6
        ldr.w           r7, =M33_STL_TE27_INPUT_VAL7

        str             r4, [r6, r7]

#ifdef TASKING
        ldr             r5, [r6, r7]
#else
        ldr.w           r5, [r6, r7]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE27_EXP_VAL6

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

        ldr.w           r4, =M33_STL_TE28_INPUT_VAL1

        str             r4, [r6, #M33_STL_TE28_INPUT_VAL7]

        ldrb            r5, [r6, #M33_STL_TE28_INPUT_VAL7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE28_EXP_VAL1

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE28_INPUT_VAL2

        str             r4, [r6, #M33_STL_TE28_INPUT_VAL7]

        ldrb            r5, [r6, #M33_STL_TE28_INPUT_VAL7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE28_EXP_VAL2

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE28_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE28_INPUT_VAL7

        str             r4, [r6, r7]

        ldrb            r5, [r6, r7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE28_EXP_VAL3

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE28_INPUT_VAL4
        ldr.w           r7, =M33_STL_TE28_INPUT_VAL7

        str             r4, [r6, r7]

        ldrb            r5, [r6, r7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE28_EXP_VAL4

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE28_INPUT_VAL5
        ldr.w           r7, =M33_STL_TE28_INPUT_VAL7

        str             r4, [r6, r7]

        ldrsb           r5, [r6, r7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE28_EXP_VAL5

        mov             r12, r7

        add             sp, sp, #M33_STL_TE28_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE28_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE28_INPUT_VAL6
        ldr.w           r7, =M33_STL_TE28_INPUT_VAL7

        str             r4, [r6, r7]

        ldrsb           r5, [r6, r7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE28_EXP_VAL6

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

        ldr.w           r4, =M33_STL_TE29_INPUT_VAL1

        str             r4, [r6, #M33_STL_TE29_INPUT_VAL7]

        ldrh            r5, [r6, #M33_STL_TE29_INPUT_VAL7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE29_EXP_VAL1

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE29_INPUT_VAL2

        str             r4, [r6, #M33_STL_TE29_INPUT_VAL7]

        ldrh            r5, [r6, #M33_STL_TE29_INPUT_VAL7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE29_EXP_VAL2

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE29_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE29_INPUT_VAL7

        str             r4, [r6, r7]

        ldrh            r5, [r6, r7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE29_EXP_VAL3

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE29_INPUT_VAL4
        ldr.w           r7, =M33_STL_TE29_INPUT_VAL7

        str             r4, [r6, r7]

        ldrh            r5, [r6, r7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE29_EXP_VAL4

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE29_INPUT_VAL5
        ldr.w           r7, =M33_STL_TE29_INPUT_VAL7

        str             r4, [r6, r7]

        ldrsh           r5, [r6, r7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE29_EXP_VAL5

        mov             r12, r7

        add             sp, sp, #M33_STL_TE29_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE29_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE29_INPUT_VAL6
        ldr.w           r7, =M33_STL_TE29_INPUT_VAL7

        str             r4, [r6, r7]

        ldrsh           r5, [r6, r7]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE29_EXP_VAL6

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

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, #M33_STL_TE30_INPUT_VAL5]

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL1

        strb            r4, [r6, #M33_STL_TE30_INPUT_VAL5]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#else
        ldr.w           r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#endif
        mov             r11, r5

        ldr.w           r7, =M33_STL_TE30_EXP_VAL1

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, #M33_STL_TE30_INPUT_VAL5]

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL2

        strb            r4, [r6, #M33_STL_TE30_INPUT_VAL5]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#else
        ldr.w           r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE30_EXP_VAL2

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr
        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, #M33_STL_TE30_INPUT_VAL5]

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE30_INPUT_VAL5

        strb            r4, [r6, r7]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#else
        ldr.w           r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE30_EXP_VAL3

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, #M33_STL_TE30_INPUT_VAL5]

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL4
        ldr.w           r7, =M33_STL_TE30_INPUT_VAL5

        strb            r4, [r6, r7]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#else
        ldr.w           r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE30_EXP_VAL4

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, #M33_STL_TE30_INPUT_VAL5]

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL1

        strh            r4, [r6, #M33_STL_TE30_INPUT_VAL5]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#else
        ldr.w           r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE30_EXP_VAL5

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, #M33_STL_TE30_INPUT_VAL5]

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL2

        strh            r4, [r6, #M33_STL_TE30_INPUT_VAL5]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#else
        ldr.w           r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE30_EXP_VAL6

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, #M33_STL_TE30_INPUT_VAL5]

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE30_INPUT_VAL5

        strh            r4, [r6, r7]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#else
        ldr.w           r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE30_EXP_VAL7

        mov             r12, r7

        add             sp, sp, #M33_STL_TE30_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE30_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL6

        str             r4, [r6, #M33_STL_TE30_INPUT_VAL5]

        ldr.w           r4, =M33_STL_TE30_INPUT_VAL4
        ldr.w           r7, =M33_STL_TE30_INPUT_VAL5

        strh            r4, [r6, r7]

#ifdef TASKING
        ldr             r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#else
        ldr.w           r5, [r6, #M33_STL_TE30_INPUT_VAL5]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE30_EXP_VAL8

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

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign          4
#endif
#ifdef __GHS__
        .align          4
#endif
#ifdef __IAR__
        data
        alignrom        2
#endif
#ifdef __WINDRIVER__
        .p2align        2
#endif
#ifdef TASKING
        .align          4
#endif

#ifdef TASKING
        ldr             r0, first_test_address
        ldr             r1, second_test_address
#else
        ldr.w           r0, first_test_address
        ldr.w           r1, second_test_address
#endif
        adr             r6, first_test_address

        adr             r7, second_test_address

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

#ifdef __IAR__
        data
        alignrom        2
#endif
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
#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
        .end
#endif
#ifdef __GHS__
        .align          4
        end
#endif
#ifdef __IAR__
        alignram        2
        end
#endif
#ifdef TASKING
        .endsec
        .END
#endif
