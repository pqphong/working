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

        .section .s_m33_stl_cpu_n067,"ax"
        .global m33_stl_cpu_n067
        .type m33_stl_cpu_n067, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n067,"ax"
        .global m33_stl_cpu_n067

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n067
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n067.asm"
        .section        .s_m33_stl_cpu_n067,"ax",%progbits
        .global         m33_stl_cpu_n067
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n067
        .global m33_stl_cpu_n067

        .align           4

#endif
m33_stl_cpu_n067:
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
        adr             r3, error_m33_stl_cpu_n067
#else
        adr.w           r3, error_m33_stl_cpu_n067
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 301
//-----------------------------------------------------------------------------/

// This TE tests the dual-issue strategy (ALU / Load and Store)

// Initialize GP registers with input value, execute two operation
// of the ALU/Load and Store with dual-issue strategy
// and compare output value with expected value

m33_stl_te301:

        sub             sp, sp, #M33_STL_TE301_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE301_INPUT_VAL1

        str             r4, [sp]

        ldr.w           r1, =M33_STL_TE301_INPUT_VAL2
        ldr.w           r2, =M33_STL_TE301_INPUT_VAL3

        add             r11, r1, r2
        ldr             r6, [sp]

        ldr.w           r12, =M33_STL_TE301_EXP_VAL1

        add             sp, sp, #M33_STL_TE301_STACK_WORDS3

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE301_EXP_VAL2

        mov             r11, r6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE301_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE301_INPUT_VAL4

        str             r4, [sp]

        ldr.w           r7, =M33_STL_TE301_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE301_INPUT_VAL6

        ldr             r6, [sp]
        sub             r9, r7, r8

        ldr.w           r12, =M33_STL_TE301_EXP_VAL3

        add             sp, sp, #M33_STL_TE301_STACK_WORDS3

        mov             r11, r9

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE301_EXP_VAL4

        mov             r11, r6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE301_STACK_WORDS3

        ldr.w           r1, =M33_STL_TE301_INPUT_VAL2

        ldr.w           r5, =M33_STL_TE301_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE301_INPUT_VAL6

        str             r1, [sp]
        sub             r11, r5, r4

        ldr.w           r12, =M33_STL_TE301_EXP_VAL5

        ldr             r2, [sp]

        add             sp, sp, #M33_STL_TE301_STACK_WORDS3

        bl              m33_stl_compare_gpr

        mov             r11, r2

        ldr.w           r12, =M33_STL_TE301_EXP_VAL6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE301_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE301_INPUT_VAL3

        ldr.w           r9, =M33_STL_TE301_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE301_INPUT_VAL5

        add             r0, r9, r8
        str             r4, [sp]

        ldr.w           r12, =M33_STL_TE301_EXP_VAL7

        ldr             r5, [sp]

        add             sp, sp, #M33_STL_TE301_STACK_WORDS3

        mov             r11, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE301_EXP_VAL8

        mov             r11, r5

        bl              m33_stl_compare_gpr

m33_stl_close_te301:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 301
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 305
//-----------------------------------------------------------------------------/

// This TE tests the dual-issue strategy (ALU / Shift)

// Initialize GP registers with input value, execute two operation
// of the ALU/Shift with dual-issue strategy
// and compare output value with expected value

m33_stl_te305:

        ldr.w           r1, =M33_STL_TE305_INPUT_VAL1
        ldr.w           r2, =M33_STL_TE305_INPUT_VAL2
        ldr.w           r4, =M33_STL_TE305_INPUT_VAL3
        ldr.w           r5, =M33_STL_TE305_INPUT_VAL4

        add             r11, r1, r2
        lsl             r4, r4, r5

        ldr.w           r12, =M33_STL_TE305_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE305_EXP_VAL2

        mov             r11, r4

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE305_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE305_INPUT_VAL6
        ldr.w           r7, =M33_STL_TE305_INPUT_VAL7
        ldr.w           r6, =M33_STL_TE305_INPUT_VAL8

        lsr             r7, r7, r6
        add             r11, r9, r8

        ldr.w           r12, =M33_STL_TE305_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE305_EXP_VAL4

        mov             r11, r7

        bl              m33_stl_compare_gpr

        ldr.w           r1, =M33_STL_TE305_INPUT_VAL3
        ldr.w           r2, =M33_STL_TE305_INPUT_VAL6
        ldr.w           r4, =M33_STL_TE305_INPUT_VAL1

        asr             r4, r4, #M33_STL_TE305_INPUT_VAL9
        sub             r11, r1, r2

        ldr.w           r12, =M33_STL_TE305_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE305_EXP_VAL6

        mov             r11, r4

        bl              m33_stl_compare_gpr

        ldr.w           r1, =M33_STL_TE305_INPUT_VAL7
        ldr.w           r2, =M33_STL_TE305_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE305_INPUT_VAL2

        sub             r11, r1, r2
        lsr             r4, r4, #M33_STL_TE305_INPUT_VAL9

        ldr.w           r12, =M33_STL_TE305_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE305_EXP_VAL8

        mov             r11, r4

        bl              m33_stl_compare_gpr

m33_stl_close_te305:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 305
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 308
//-----------------------------------------------------------------------------/

// This TE tests the dual-issue strategy (ALU / MAC)

// Initialize GP registers with input value, execute two operation
// of the ALU/MAC with dual-issue strategy
// and compare output value with expected value

m33_stl_te308:

        ldr.w           r1, =M33_STL_TE308_INPUT_VAL1
        ldr.w           r2, =M33_STL_TE308_INPUT_VAL2
        ldr.w           r4, =M33_STL_TE308_INPUT_VAL3
        ldr.w           r5, =M33_STL_TE308_INPUT_VAL4

        add             r11, r1, r2
        mul             r6, r5, r4

        ldr.w           r12, =M33_STL_TE308_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE308_EXP_VAL2

        mov             r11, r6

        bl              m33_stl_compare_gpr

        ldr.w           r1, =M33_STL_TE308_INPUT_VAL5
        ldr.w           r2, =M33_STL_TE308_INPUT_VAL6
        ldr.w           r4, =M33_STL_TE308_INPUT_VAL7
        ldr.w           r5, =M33_STL_TE308_INPUT_VAL8
        ldr.w           r7, =M33_STL_TE308_INPUT_VAL2

        mla             r6, r5, r4, r7
        add             r11, r1, r2

        ldr.w           r12, =M33_STL_TE308_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE308_EXP_VAL4

        mov             r11, r6

        bl              m33_stl_compare_gpr

        ldr.w           r1, =M33_STL_TE308_INPUT_VAL6
        ldr.w           r2, =M33_STL_TE308_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE308_INPUT_VAL4
        ldr.w           r5, =M33_STL_TE308_INPUT_VAL8
        ldr.w           r7, =M33_STL_TE308_INPUT_VAL1

        sub             r11, r1, r2
        mls             r6, r5, r4, r7

        ldr.w           r12, =M33_STL_TE308_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE308_EXP_VAL6

        mov             r11, r6

        bl              m33_stl_compare_gpr

        ldr.w           r1, =M33_STL_TE308_INPUT_VAL2
        ldr.w           r2, =M33_STL_TE308_INPUT_VAL5
        ldr.w           r4, =M33_STL_TE308_INPUT_VAL8
        ldr.w           r5, =M33_STL_TE308_INPUT_VAL4

        mul             r6, r5, r4
        sub             r11, r1, r2

        ldr.w           r12, =M33_STL_TE308_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE308_EXP_VAL8

        mov             r11, r6

        bl              m33_stl_compare_gpr

m33_stl_close_te308:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 308
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n067 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n067:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n067

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n067 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n067 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n067:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n067

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n067 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n067 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n067:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n067 PROCEDURE
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
