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

        .section .s_m33_stl_cpu_n011,"ax"
        .global m33_stl_cpu_n011
        .type m33_stl_cpu_n011, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n011,"ax"
        .global m33_stl_cpu_n011

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n011
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n011.asm"
        .section        .s_m33_stl_cpu_n011,"ax",%progbits
        .global         m33_stl_cpu_n011
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n011
        .global m33_stl_cpu_n011

        .align           4

#endif
m33_stl_cpu_n011:
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
        adr             r3, error_m33_stl_cpu_n011
#else
        adr.w           r3, error_m33_stl_cpu_n011
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 47
//-----------------------------------------------------------------------------/

// This TE tests SXTH instruction

// GP Registers initialization with input value, SXTH operation test and compare
// the output result with expected value.

m33_stl_te47:

        ldr.w           r6, =M33_STL_TE47_INPUT_VAL1

        sxth            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE47_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE47_INPUT_VAL2

        sxth            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE47_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te47:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 47
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 48
//-----------------------------------------------------------------------------/

// This TE tests SXTB instruction

// GP Registers initialization with input value, SXTB operation test and compare
// the output result with expected value.

m33_stl_te48:

        ldr.w           r6, =M33_STL_TE48_INPUT_VAL1

        sxtb            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE48_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE48_INPUT_VAL2

        sxtb            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE48_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te48:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 48
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 49
//-----------------------------------------------------------------------------/

// This TE tests UXTH instruction

// GP Registers initialization with input value, UXTH operation test and compare
// the output result with expected value.

m33_stl_te49:

        ldr.w           r6, =M33_STL_TE49_INPUT_VAL1

        uxth            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE49_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE49_INPUT_VAL2

        uxth            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE49_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te49:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 49
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 50
//-----------------------------------------------------------------------------/

// This TE tests UXTB instruction

// GP Registers initialization with input value, UXTB operation test and compare
// the output result with expected value.

m33_stl_te50:

        ldr.w           r6, =M33_STL_TE50_INPUT_VAL1

        uxtb            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE50_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE50_INPUT_VAL2

        uxtb            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE50_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te50:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 50
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 51
//-----------------------------------------------------------------------------/

// This TE tests REV instruction

// GP Registers initialization with input value, REV operation test and compare
// the output result with expected value.

m33_stl_te51:

        ldr.w           r6, =M33_STL_TE51_INPUT_VAL1

        rev             r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE51_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE51_INPUT_VAL2

        rev             r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE51_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te51:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 51
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 52
//-----------------------------------------------------------------------------/

// This TE tests REV16 instruction

// GP Registers initialization with input value, REV16 operation test and compare
// the output result with expected value.

m33_stl_te52:

        ldr.w           r6, =M33_STL_TE52_INPUT_VAL1

        rev16           r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE52_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE52_INPUT_VAL2

        rev16           r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE52_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te52:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 52
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 53
//-----------------------------------------------------------------------------/

// This TE tests REVSH instruction

// GP Registers initialization with input value, REVSH operation test and compare
// the output result with expected value.

m33_stl_te53:

        ldr.w           r6, =M33_STL_TE53_INPUT_VAL1

        revsh           r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE53_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE53_INPUT_VAL2

        revsh           r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE53_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te53:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 53
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n011 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n011:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n011

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n011 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n011 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n011:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n011

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n011 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n011 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n011:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n011 PROCEDURE
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
