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

        .section .s_m33_stl_cpu_n010,"ax"
        .global m33_stl_cpu_n010
        .type m33_stl_cpu_n010, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n010,"ax"
        .global m33_stl_cpu_n010

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n010
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n010.asm"
        .section        .s_m33_stl_cpu_n010,"ax",%progbits
        .global         m33_stl_cpu_n010
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n010
        .global m33_stl_cpu_n010

        .align           4

#endif
m33_stl_cpu_n010:
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
        adr             r3, error_m33_stl_cpu_n010
#else
        adr.w           r3, error_m33_stl_cpu_n010
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 42
//-----------------------------------------------------------------------------/

// This TE tests LDA and STL instructions

// GP Registers initialization with input value, LDA and STL operation test
// and compare the output result with expected value.

m33_stl_te42:

        sub             sp, sp, #M33_STL_TE42_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE42_INPUT_VAL1

        stl             r4, [r6]

        lda             r5, [r6]

        mov             r11, r5

        add             sp, sp, #M33_STL_TE42_STACK_WORDS3

        ldr.w           r7, =M33_STL_TE42_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE42_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE42_INPUT_VAL2

        stl             r4, [r6]

        lda             r5, [r6]

        mov             r11, r5

        add             sp, sp, #M33_STL_TE42_STACK_WORDS3

        ldr.w           r7, =M33_STL_TE42_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te42:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 42
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 43
//-----------------------------------------------------------------------------/

// This TE tests LDAB instruction

// GP Registers initialization with input value, LDAB operation test
// and compare the output result with expected value.

m33_stl_te43:

        sub             sp, sp, #M33_STL_TE43_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE43_INPUT_VAL1

        str             r4, [r6]

        ldab            r5, [r6]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE43_EXP_VAL1

        mov             r12, r7

        add             sp, sp, #M33_STL_TE43_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE43_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE43_INPUT_VAL2

        str             r4, [r6]

        ldab            r5, [r6]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE43_EXP_VAL2

        mov             r12, r7

        add             sp, sp, #M33_STL_TE43_STACK_WORDS3

        bl              m33_stl_compare_gpr

m33_stl_close_te43:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 43
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 44
//-----------------------------------------------------------------------------/

// This TE tests LDAH instruction

// GP Registers initialization with input value, LDAH operation test
// and compare the output result with expected value.

m33_stl_te44:

        sub             sp, sp, #M33_STL_TE44_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE44_INPUT_VAL1

        str             r4, [r6]

        ldah            r5, [r6]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE44_EXP_VAL1

        mov             r12, r7

        add             sp, sp, #M33_STL_TE44_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE44_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE44_INPUT_VAL2

        str             r4, [r6]

        ldah            r5, [r6]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE44_EXP_VAL2

        mov             r12, r7

        add             sp, sp, #M33_STL_TE44_STACK_WORDS3

        bl              m33_stl_compare_gpr

m33_stl_close_te44:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 44
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 45
//-----------------------------------------------------------------------------/

// This TE tests STLB and STLH instructions

// GP Registers initialization with input value, STLB and STLH operation test
// and compare the output result with expected value.

m33_stl_te45:

        sub             sp, sp, #M33_STL_TE45_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE45_INPUT_VAL3

        str             r4, [r6]

        ldr.w           r4, =M33_STL_TE45_INPUT_VAL1

        stlb            r4, [r6]

#ifdef TASKING
        ldr             r5, [r6]
#else
        ldr.w           r5, [r6]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE45_EXP_VAL1

        mov             r12, r7

        add             sp, sp, #M33_STL_TE45_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE45_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE45_INPUT_VAL2

        stlb            r4, [r6]

#ifdef TASKING
        ldr             r5, [r6]
#else
        ldr.w           r5, [r6]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE45_EXP_VAL2

        mov             r12, r7

        add             sp, sp, #M33_STL_TE45_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE45_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE45_INPUT_VAL3

        str             r4, [r6]

        ldr.w           r4, =M33_STL_TE45_INPUT_VAL1

        stlh            r4, [r6]

#ifdef TASKING
        ldr             r5, [r6]
#else
        ldr.w           r5, [r6]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE45_EXP_VAL3

        mov             r12, r7

        add             sp, sp, #M33_STL_TE45_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE45_STACK_WORDS3

        mov             r6, sp

        ldr.w           r4, =M33_STL_TE45_INPUT_VAL2

        stlh            r4, [r6]

#ifdef TASKING
        ldr             r5, [r6]
#else
        ldr.w           r5, [r6]
#endif

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE45_EXP_VAL4

        mov             r12, r7

        add             sp, sp, #M33_STL_TE45_STACK_WORDS3

        bl              m33_stl_compare_gpr

m33_stl_close_te45:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 45
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 40
//-----------------------------------------------------------------------------/

// This TE tests LDM and STM instructions

// GP Registers initialization with input value, LDM and STM operation test
// and compare the output result with expected value.

m33_stl_te40:

        sub             sp, sp, #M33_STL_TE40_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE40_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE40_INPUT_VAL1

        stm             r6, {r2, r4}

        ldm             r6, {r5, r8}

        mov             r11, r5

        add             sp, sp, #M33_STL_TE40_STACK_WORDS4

        ldr.w           r7, =M33_STL_TE40_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r8

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE40_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE40_INPUT_VAL2
        ldr.w           r4, =M33_STL_TE40_INPUT_VAL2

        stm             r6, {r2, r4}

        ldm             r6, {r5, r8}

        mov             r11, r5

        add             sp, sp, #M33_STL_TE40_STACK_WORDS4

        ldr.w           r7, =M33_STL_TE40_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r8

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE40_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE40_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE40_INPUT_VAL1

        stm             r6!, {r2, r4}

        subs            r6, r6, #M33_STL_TE40_INPUT_VAL3

        ldm             r6!, {r5, r8}

        mov             r11, r5

        add             sp, sp, #M33_STL_TE40_STACK_WORDS4

        ldr.w           r7, =M33_STL_TE40_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r8

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE40_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE40_INPUT_VAL2
        ldr.w           r4, =M33_STL_TE40_INPUT_VAL2

        stm             r6!, {r2, r4}

        subs            r6, r6, #M33_STL_TE40_INPUT_VAL3

        ldm             r6!, {r5, r8}

        mov             r11, r5

        add             sp, sp, #M33_STL_TE40_STACK_WORDS4

        ldr.w           r7, =M33_STL_TE40_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r8

        bl              m33_stl_compare_gpr

m33_stl_close_te40:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 40
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n010 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n010:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n010

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n010 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n010 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n010:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n010

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n010 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n010 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n010:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n010 PROCEDURE
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
