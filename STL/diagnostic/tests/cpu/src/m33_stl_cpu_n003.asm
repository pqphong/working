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

        .section .s_m33_stl_cpu_n003,"ax"
        .global m33_stl_cpu_n003
        .type m33_stl_cpu_n003, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n003,"ax"
        .global m33_stl_cpu_n003

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n003
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n003.asm"
        .section        .s_m33_stl_cpu_n003,"ax",%progbits
        .global         m33_stl_cpu_n003
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n003
        .global m33_stl_cpu_n003

        .align           4

#endif
m33_stl_cpu_n003:
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
        adr             r3, error_m33_stl_cpu_n003
#else
        adr.w           r3, error_m33_stl_cpu_n003
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 16
//-----------------------------------------------------------------------------/

// This TE tests MOV(immediate) instruction

// GP Registers initialization with input value, MOV(immediate) operation test
// and compare the output result with expected value.

m33_stl_te16:

        movs            r5, #M33_STL_TE16_INPUT_VAL1

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE16_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        movs            r5, #M33_STL_TE16_INPUT_VAL2

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE16_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        movs            r5, #M33_STL_TE16_INPUT_VAL3

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE16_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        movs            r5, #M33_STL_TE16_INPUT_VAL4

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE16_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te16:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 16
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 17
//-----------------------------------------------------------------------------/

// This TE tests MOV(low register) instruction

// GP Registers initialization with input value, MOV(low register) operation test
// and compare the output result with expected value.

m33_stl_te17:

        ldr.w           r6, =M33_STL_TE17_INPUT_VAL1

        movs            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE17_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE17_INPUT_VAL2

        movs            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE17_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE17_INPUT_VAL3

        movs            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE17_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE17_INPUT_VAL4

        movs            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE17_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te17:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 17
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 18
//-----------------------------------------------------------------------------/

// This TE tests MOV(high register) instruction

// GP Registers initialization with input value, MOV(high register) operation test
// and compare the output result with expected value.

m33_stl_te18:

        ldr.w           r6, =M33_STL_TE18_INPUT_VAL1

        mov             r11, r6

        ldr.w           r7, =M33_STL_TE18_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE18_INPUT_VAL2

        mov             r11, r6

        ldr.w           r7, =M33_STL_TE18_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE18_INPUT_VAL3

        mov             r11, r6

        ldr.w           r7, =M33_STL_TE18_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE18_INPUT_VAL4

        mov             r11, r6

        ldr.w           r7, =M33_STL_TE18_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te18:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 18
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 19
//-----------------------------------------------------------------------------/

// This TE tests MVN instruction

// GP Registers initialization with input value, MVN operation test and compare
// the output result with expected value.

m33_stl_te19:

        ldr.w           r6, =M33_STL_TE19_INPUT_VAL1

        mvns            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE19_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE19_INPUT_VAL2

        mvns            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE19_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE19_INPUT_VAL3

        mvns            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE19_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE19_INPUT_VAL4

        mvns            r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE19_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te19:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 19
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 37
//-----------------------------------------------------------------------------/

// This TE tests MOVT instruction

// GP Registers initialization with input value, MOVT operation test
// and compare the output result with expected value.

m33_stl_te37:

        ldr.w           r5, =M33_STL_TE37_INPUT_VAL5

        movt            r5, #M33_STL_TE37_INPUT_VAL1

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE37_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE37_INPUT_VAL6

        movt            r5, #M33_STL_TE37_INPUT_VAL2

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE37_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE37_INPUT_VAL7

        movt            r5, #M33_STL_TE37_INPUT_VAL3

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE37_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE37_INPUT_VAL8

        movt            r5, #M33_STL_TE37_INPUT_VAL4

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE37_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te37:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 37
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 38
//-----------------------------------------------------------------------------/

// This TE tests MOVW instruction

// GP Registers initialization with input value, MOVW operation test
// and compare the output result with expected value.

m33_stl_te38:

        movw            r5, #M33_STL_TE38_INPUT_VAL1

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE38_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        movw            r5, #M33_STL_TE38_INPUT_VAL2

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE38_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        movw            r5, #M33_STL_TE38_INPUT_VAL3

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE38_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        movw            r5, #M33_STL_TE38_INPUT_VAL4

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE38_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te38:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 38
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n003 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n003:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n003

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n003 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n003 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n003:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n003

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n003 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n003 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n003:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n003 PROCEDURE
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
