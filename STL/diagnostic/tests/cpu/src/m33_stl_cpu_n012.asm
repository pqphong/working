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

        .section .s_m33_stl_cpu_n012,"ax"
        .global m33_stl_cpu_n012
        .type m33_stl_cpu_n012, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n012,"ax"
        .global m33_stl_cpu_n012

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n012
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n012.asm"
        .section        .s_m33_stl_cpu_n012,"ax",%progbits
        .global         m33_stl_cpu_n012
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n012
        .global m33_stl_cpu_n012

        .align           4

#endif
m33_stl_cpu_n012:
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
        adr             r3, error_m33_stl_cpu_n012
#else
        adr.w           r3, error_m33_stl_cpu_n012
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 55
//-----------------------------------------------------------------------------/

// This TE tests GP registers

// GP Registers initialization with input value, test GP register and
// compare the output result with expected value.

m33_stl_te55:

        ldr.w           r2, =M33_STL_TE55_INPUT_VAL1

        mov             r0, r2
        mov             r1, r2
        mov             r4, r2
        mov             r5, r2
        mov             r6, r2
        mov             r7, r2
        mov             r8, r2
        mov             r9, r2
        mov             r10, r2

        ldr.w           r2, =M33_STL_TE55_INPUT_VAL2

        movw            r12, #M33_STL_TE55_EXP_VAL1
        movt            r12, #M33_STL_TE55_EXP_VAL1

        mov             r0, r2

        mov             r11, r0

        bl              m33_stl_compare_gpr

        mov             r1, r2

        mov             r11, r1

        bl              m33_stl_compare_gpr

        mov             r4, r2

        mov             r11, r4

        bl              m33_stl_compare_gpr

        mov             r5, r2

        mov             r11, r5

        bl              m33_stl_compare_gpr

        mov             r6, r2

        mov             r11, r6

        bl              m33_stl_compare_gpr

        mov             r7, r2

        mov             r11, r7

        bl              m33_stl_compare_gpr

        mov             r8, r2

        mov             r11, r8

        bl              m33_stl_compare_gpr

        mov             r9, r2

        mov             r11, r9

        bl              m33_stl_compare_gpr

        mov             r10, r2

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr.w           r2, =M33_STL_TE55_INPUT_VAL2

        mov             r0, r2
        mov             r1, r2
        mov             r4, r2
        mov             r5, r2
        mov             r6, r2
        mov             r7, r2
        mov             r8, r2
        mov             r9, r2
        mov             r10, r2

        ldr.w           r2, =M33_STL_TE55_INPUT_VAL1

        movw            r12, #M33_STL_TE55_EXP_VAL2
        movt            r12, #M33_STL_TE55_EXP_VAL2

        mov             r0, r2

        mov             r11, r0

        bl              m33_stl_compare_gpr

        mov             r1, r2

        mov             r11, r1

        bl              m33_stl_compare_gpr

        mov             r4, r2

        mov             r11, r4

        bl              m33_stl_compare_gpr

        mov             r5, r2

        mov             r11, r5

        bl              m33_stl_compare_gpr

        mov             r6, r2

        mov             r11, r6

        bl              m33_stl_compare_gpr

        mov             r7, r2

        mov             r11, r7

        bl              m33_stl_compare_gpr

        mov             r8, r2

        mov             r11, r8

        bl              m33_stl_compare_gpr

        mov             r9, r2

        mov             r11, r9

        bl              m33_stl_compare_gpr

        mov             r10, r2

        mov             r11, r10

        bl              m33_stl_compare_gpr

m33_stl_close_te55:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 55
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 56
//-----------------------------------------------------------------------------/

// This TE tests R3 GP register

// GP Registers initialization with input value, test R3 GP register and
// compare the output result with expected value.

m33_stl_te56:

        ldr.w           r2, =M33_STL_TE56_INPUT_VAL1

        mov             r0, r3
        mov             r3, r2

        ldr.w           r2, =M33_STL_TE56_INPUT_VAL2

        movw            r12, #M33_STL_TE56_EXP_VAL1
        movt            r12, #M33_STL_TE56_EXP_VAL1

        mov             r3, r2

        mov             r11, r3

        mov             r3, r0

        bl              m33_stl_compare_gpr

        ldr.w           r2, =M33_STL_TE56_INPUT_VAL2

        mov             r0, r3
        mov             r3, r2

        ldr.w           r2, =M33_STL_TE56_INPUT_VAL1

        movw            r12, #M33_STL_TE56_EXP_VAL2
        movt            r12, #M33_STL_TE56_EXP_VAL2

        mov             r3, r2

        mov             r11, r3

        mov             r3, r0

        bl              m33_stl_compare_gpr

m33_stl_close_te56:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 56
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 57
//-----------------------------------------------------------------------------/

// This TE tests R11 GP register

// GP Registers initialization with input value, test R11 GP register and
// compare the output result with expected value.

m33_stl_te57:

        ldr.w           r2, =M33_STL_TE57_INPUT_VAL1

        mov             r11, r2

        ldr.w           r2, =M33_STL_TE57_INPUT_VAL2

        movw            r12, #M33_STL_TE57_EXP_VAL1
        movt            r12, #M33_STL_TE57_EXP_VAL1

        mov             r11, r2

        mov             r5, r11

        mov             r11, r5

        bl              m33_stl_compare_gpr

        ldr.w           r2, =M33_STL_TE57_INPUT_VAL2

        mov             r11, r2

        ldr.w           r2, =M33_STL_TE57_INPUT_VAL1

        movw            r12, #M33_STL_TE57_EXP_VAL2
        movt            r12, #M33_STL_TE57_EXP_VAL2

        mov             r11, r2

        mov             r5, r11

        mov             r11, r5

        bl              m33_stl_compare_gpr

m33_stl_close_te57:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 57
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 58
//-----------------------------------------------------------------------------/

// This TE tests R12 GP register

// GP Registers initialization with input value, test R12 GP register and
// compare the output result with expected value.

m33_stl_te58:

        ldr.w           r2, =M33_STL_TE58_INPUT_VAL1

        mov             r12, r2

        ldr.w           r2, =M33_STL_TE58_INPUT_VAL2

        mov             r12, r2

        mov             r11, r12

        movw            r12, #M33_STL_TE58_EXP_VAL1
        movt            r12, #M33_STL_TE58_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r2, =M33_STL_TE58_INPUT_VAL2

        mov             r12, r2

        ldr.w           r2, =M33_STL_TE58_INPUT_VAL1

        mov             r12, r2

        mov             r11, r12

        movw            r12, #M33_STL_TE58_EXP_VAL2
        movt            r12, #M33_STL_TE58_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te58:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 58
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 59
//-----------------------------------------------------------------------------/

// This TE tests R2 GP register

// GP Registers initialization with input value, test R2 GP register and
// compare the output result with expected value.

m33_stl_te59:

        ldr.w           r4, =M33_STL_TE59_INPUT_VAL1

        mov             r2, r4

        ldr.w           r4, =M33_STL_TE59_INPUT_VAL2

        mov             r2, r4

        mov             r11, r2

        movw            r12, #M33_STL_TE59_EXP_VAL1
        movt            r12, #M33_STL_TE59_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE59_INPUT_VAL2

        mov             r2, r4

        ldr.w           r4, =M33_STL_TE59_INPUT_VAL1

        mov             r2, r4

        mov             r11, r2

        movw            r12, #M33_STL_TE59_EXP_VAL2
        movt            r12, #M33_STL_TE59_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te59:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 59
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n012 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n012:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n012

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n012 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n012 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n012:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n012

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n012 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n012 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n012:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n012 PROCEDURE
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
