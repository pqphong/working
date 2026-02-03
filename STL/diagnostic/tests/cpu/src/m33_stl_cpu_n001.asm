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

        .section .s_m33_stl_cpu_n001,"ax"
        .global m33_stl_cpu_n001
        .type m33_stl_cpu_n001, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n001,"ax"
        .global m33_stl_cpu_n001

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n001
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n001.asm"
        .section        .s_m33_stl_cpu_n001,"ax",%progbits
        .global         m33_stl_cpu_n001
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n001
        .global m33_stl_cpu_n001

        .align           4

#endif
m33_stl_cpu_n001:
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
        adr             r3, error_m33_stl_cpu_n001
#else
        adr.w           r3, error_m33_stl_cpu_n001
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 7
//-----------------------------------------------------------------------------/

// This TE tests ASR(immediate) instruction

// GP Registers initialization with input value, ASR(immediate) operation test
// and compare the output result with expected value.

m33_stl_te7:

        ldr.w           r6, =M33_STL_TE7_INPUT_VAL1

        asrs            r5, r6, #M33_STL_TE7_INPUT_VAL2

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE7_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE7_INPUT_VAL3

        asrs            r5, r6, #M33_STL_TE7_INPUT_VAL7

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE7_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE7_INPUT_VAL4

        asrs            r5, r6, #M33_STL_TE7_INPUT_VAL6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE7_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE7_INPUT_VAL1

        asrs            r5, r6, #M33_STL_TE7_INPUT_VAL5

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE7_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE7_INPUT_VAL1

        asrs            r5, r6, #M33_STL_TE7_INPUT_VAL8

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE7_EXP_VAL5

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE7_INPUT_VAL3

        asrs            r5, r6, #M33_STL_TE7_INPUT_VAL8

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE7_EXP_VAL6

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te7:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 7
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 8
//-----------------------------------------------------------------------------/

// This TE tests ASR(register) instruction

// GP Registers initialization with input value, ASR operation test and compare
// the output result with expected value.

m33_stl_te8:

        ldr.w           r5, =M33_STL_TE8_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE8_INPUT_VAL2

        asrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE8_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE8_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE8_INPUT_VAL2

        asrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE8_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE8_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE8_INPUT_VAL4

        asrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE8_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE8_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE8_INPUT_VAL4

        asrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE8_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE8_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE8_INPUT_VAL5

        asrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE8_EXP_VAL5

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE8_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE8_INPUT_VAL6

        asrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE8_EXP_VAL6

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE8_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE8_INPUT_VAL7

        asrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE8_EXP_VAL7

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE8_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE8_INPUT_VAL8

        asrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE8_EXP_VAL6

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te8:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 8
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 9
//-----------------------------------------------------------------------------/

// This TE tests BIC instruction

// GP Registers initialization with input value, BIC operation test and compare
// the output result with expected value.

m33_stl_te9:

        ldr.w           r5, =M33_STL_TE9_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE9_INPUT_VAL2

        bics            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE9_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE9_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE9_INPUT_VAL4

        bics            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE9_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE9_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE9_INPUT_VAL6

        bics            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE9_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te9:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 9
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 10
//-----------------------------------------------------------------------------/

// This TE tests EOR instruction

// GP Registers initialization with input value, EOR operation test and compare
// the output result with expected value.

m33_stl_te10:

        ldr.w           r5, =M33_STL_TE10_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE10_INPUT_VAL2

        eors            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE10_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE10_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE10_INPUT_VAL4

        eors            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE10_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE10_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE10_INPUT_VAL6

        eors            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE10_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te10:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 10
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 11
//-----------------------------------------------------------------------------/

// This TE tests ORR instruction

// GP Registers initialization with input value, ORR operation test and compare
// the output result with expected value.

m33_stl_te11:

        ldr.w           r5, =M33_STL_TE11_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE11_INPUT_VAL2

        orrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE11_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE11_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE11_INPUT_VAL4

        orrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE11_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE11_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE11_INPUT_VAL6

        orrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE11_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE11_INPUT_VAL7
        ldr.w           r6, =M33_STL_TE11_INPUT_VAL8

        orrs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE11_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te11:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 11
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n001 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n001:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n001

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n001 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n001 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n001:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n001

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n001 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n001 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n001:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n001 PROCEDURE
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
