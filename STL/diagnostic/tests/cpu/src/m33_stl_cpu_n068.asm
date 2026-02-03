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

        .section .s_m33_stl_cpu_n068,"ax"
        .global m33_stl_cpu_n068
        .type m33_stl_cpu_n068, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n068,"ax"
        .global m33_stl_cpu_n068

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n068
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n068.asm"
        .section        .s_m33_stl_cpu_n068,"ax",%progbits
        .global         m33_stl_cpu_n068
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n068
        .global m33_stl_cpu_n068

        .align           4

#endif
m33_stl_cpu_n068:
//-----------------------------------------------------------------------------/
// SAVE LINK REGISTER TO RETURN FROM TEST TO CALLER
//-----------------------------------------------------------------------------/

        push            {lr}

//-----------------------------------------------------------------------------/
// START CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/

        bl              m33_stl_full_context_save


        bl              m33_stl_full_init

//-----------------------------------------------------------------------------/
// END CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// SAVE LABEL ERROR
//-----------------------------------------------------------------------------/

#ifdef TASKING
        adr             r3, error_m33_stl_cpu_n068
#else
        adr.w           r3, error_m33_stl_cpu_n068
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 302
//-----------------------------------------------------------------------------/

// This TE tests the dual-issue strategy (ALU / FPU)

// Initialize GP registers with input value, move in FP registers, execute
// two operation of the ALU/FPU with dual-issue strategy
// and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te302:

        vmrs            r0, fpscr

        ldr.w           r9, =M33_STL_TE302_INPUT_VAL9

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE302_INPUT_VAL1
        ldr.w           r2, =M33_STL_TE302_INPUT_VAL2
        ldr.w           r4, =M33_STL_TE302_INPUT_VAL3
        ldr.w           r5, =M33_STL_TE302_INPUT_VAL4

        vmov            s1, r4
        vmov            s0, r5

        add             r11, r1, r2
        vadd.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE302_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE302_EXP_VAL2

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE302_INPUT_VAL5
        ldr.w           r2, =M33_STL_TE302_INPUT_VAL6
        ldr.w           r4, =M33_STL_TE302_INPUT_VAL7
        ldr.w           r5, =M33_STL_TE302_INPUT_VAL8

        vmov            s1, r4
        vmov            s0, r5

        vadd.f32        s2, s1, s0
        add             r11, r1, r2

        ldr.w           r12, =M33_STL_TE302_EXP_VAL3

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE302_EXP_VAL4

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE302_INPUT_VAL6
        ldr.w           r2, =M33_STL_TE302_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE302_INPUT_VAL5
        ldr.w           r5, =M33_STL_TE302_INPUT_VAL8

        vmov            s1, r4
        vmov            s0, r5

        sub             r11, r1, r2
        vsub.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE302_EXP_VAL5

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE302_EXP_VAL6

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE302_INPUT_VAL2
        ldr.w           r2, =M33_STL_TE302_INPUT_VAL5
        ldr.w           r4, =M33_STL_TE302_INPUT_VAL7
        ldr.w           r5, =M33_STL_TE302_INPUT_VAL4

        vmov            s1, r4
        vmov            s0, r5

        vsub.f32        s2, s1, s0
        sub             r11, r1, r2

        ldr.w           r12, =M33_STL_TE302_EXP_VAL7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE302_EXP_VAL8

        vmov            r11, s2

        bl              m33_stl_compare_gpr

m33_stl_close_te302:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ICPR0
        ldr.w           r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 302
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 307
//-----------------------------------------------------------------------------/

// This TE tests the dual-issue strategy (FPU / Load and Store)

// Initialize GP registers with input value, move in FP registers, execute
// two operation of the FPU/Load and Store with dual-issue strategy
// and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te307:

        vmrs            r0, fpscr

        sub             sp, sp, #M33_STL_TE307_STACK_WORDS3

        ldr.w           r10, =M33_STL_TE307_INPUT_VAL7

        vmsr            fpscr, r10

        ldr.w           r4, =M33_STL_TE307_INPUT_VAL1

        strb            r4, [sp]

        ldr.w           r4, =M33_STL_TE307_INPUT_VAL2
        ldr.w           r5, =M33_STL_TE307_INPUT_VAL3

        vmov            s1, r4
        vmov            s0, r5

        vadd.f32        s2, s1, s0
        ldrb            r6, [sp]

        ldr.w           r12, =M33_STL_TE307_EXP_VAL1

        add             sp, sp, #M33_STL_TE307_STACK_WORDS3

        vmov            r11, s2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE307_EXP_VAL2

        mov             r11, r6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r10

        sub             sp, sp, #M33_STL_TE307_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE307_INPUT_VAL4

        strh            r4, [sp]

        ldr.w           r7, =M33_STL_TE307_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE307_INPUT_VAL6

        vmov            s1, r7
        vmov            s0, r8

        ldrh            r6, [sp]
        vsub.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE307_EXP_VAL3

        add             sp, sp, #M33_STL_TE307_STACK_WORDS3

        vmov            r11, s2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE307_EXP_VAL4

        mov             r11, r6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r10

        sub             sp, sp, #M33_STL_TE307_STACK_WORDS3

        ldr.w           r1, =M33_STL_TE307_INPUT_VAL4

        ldr.w           r5, =M33_STL_TE307_INPUT_VAL3
        ldr.w           r4, =M33_STL_TE307_INPUT_VAL6

        vmov            s1, r5
        vmov            s0, r4

        strb            r1, [sp]
        vsub.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE307_EXP_VAL5

        ldrb            r2, [sp]

        add             sp, sp, #M33_STL_TE307_STACK_WORDS3

        vmov            r11, s2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        mov             r11, r2

        ldr.w           r12, =M33_STL_TE307_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r10

        sub             sp, sp, #M33_STL_TE307_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE307_INPUT_VAL1

        ldr.w           r9, =M33_STL_TE307_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE307_INPUT_VAL2

        vmov            s1, r9
        vmov            s0, r8

        vadd.f32        s2, s1, s0
        strh            r4, [sp]

        ldr.w           r12, =M33_STL_TE307_EXP_VAL7

        ldrh            r5, [sp]

        add             sp, sp, #M33_STL_TE307_STACK_WORDS3

        vmov            r11, s2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE307_EXP_VAL8

        mov             r11, r5

        bl              m33_stl_compare_gpr

m33_stl_close_te307:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ICPR0
        ldr.w           r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 307
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 304
//-----------------------------------------------------------------------------/

// This TE tests the dual-issue strategy (FPU / FPU Load and Store)

// Initialize GP registers with input value, move in FP registers, execute
// two operation of the FPU/FPU Load and Store with dual-issue strategy
// and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te304:

        vmrs            r0, fpscr

        sub             sp, sp, #M33_STL_TE304_STACK_WORDS3

        ldr.w           r10, =M33_STL_TE304_INPUT_VAL7

        vmsr            fpscr, r10

        ldr.w           r4, =M33_STL_TE304_INPUT_VAL1

        vmov            s4, r4

        vstr            s4, [sp]

        ldr.w           r4, =M33_STL_TE304_INPUT_VAL2
        ldr.w           r5, =M33_STL_TE304_INPUT_VAL3

        vmov            s1, r4
        vmov            s0, r5

        vadd.f32        s2, s1, s0
        vldr            s6, [sp]

        ldr.w           r12, =M33_STL_TE304_EXP_VAL1

        add             sp, sp, #M33_STL_TE304_STACK_WORDS3

        vmov            r11, s2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE304_EXP_VAL2

        vmov            r11, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r10

        sub             sp, sp, #M33_STL_TE304_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE304_INPUT_VAL4

        vmov            s4, r4

        vstr            s4, [sp]

        ldr.w           r7, =M33_STL_TE304_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE304_INPUT_VAL6

        vmov            s1, r7
        vmov            s0, r8

        vldr            s6, [sp]
        vsub.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE304_EXP_VAL3

        add             sp, sp, #M33_STL_TE304_STACK_WORDS3

        vmov            r11, s2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE304_EXP_VAL4

        vmov            r11, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r10

        sub             sp, sp, #M33_STL_TE304_STACK_WORDS3

        ldr.w           r1, =M33_STL_TE304_INPUT_VAL2

        vmov            s4, r1

        ldr.w           r5, =M33_STL_TE304_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE304_INPUT_VAL6

        vmov            s1, r5
        vmov            s0, r4

        vstr            s4, [sp]
        vsub.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE304_EXP_VAL5

        vldr            s6, [sp]

        add             sp, sp, #M33_STL_TE304_STACK_WORDS3

        vmov            r11, s2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE304_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r10

        sub             sp, sp, #M33_STL_TE304_STACK_WORDS3

        ldr.w           r4, =M33_STL_TE304_INPUT_VAL3

        vmov            s4, r4

        ldr.w           r9, =M33_STL_TE304_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE304_INPUT_VAL5

        vmov            s1, r9
        vmov            s0, r8

        vadd.f32        s2, s1, s0
        vstr            s4, [sp]

        ldr.w           r12, =M33_STL_TE304_EXP_VAL7

        vldr            s6, [sp]

        add             sp, sp, #M33_STL_TE304_STACK_WORDS3

        vmov            r11, s2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE304_EXP_VAL8

        vmov            r11, s6

        bl              m33_stl_compare_gpr

m33_stl_close_te304:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ICPR0
        ldr.w           r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 304
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n068 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n068:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n068

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n068 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n068 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n068:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ICPR0
        ldr.w           r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]



//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n068

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n068 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n068 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n068:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n068 PROCEDURE
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
