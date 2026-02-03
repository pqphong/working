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

        .section .s_m33_stl_cpu_n066,"ax"
        .global m33_stl_cpu_n066
        .type m33_stl_cpu_n066, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n066,"ax"
        .global m33_stl_cpu_n066

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n066
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n066.asm"
        .section        .s_m33_stl_cpu_n066,"ax",%progbits
        .global         m33_stl_cpu_n066
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n066
        .global m33_stl_cpu_n066

        .align           4

#endif
m33_stl_cpu_n066:
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
        adr             r3, error_m33_stl_cpu_n066
#else
        adr.w           r3, error_m33_stl_cpu_n066
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 286
//-----------------------------------------------------------------------------/

// This TE test FPCCR Register

// Initialize GP register with input value, save in r0 register
// the value of FPCCR register, write in FPCCR register,
// read from SHPR2 register, restore SHPR2 register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te286:

        ldr.w           r1, =M33_STL_TE286_INPUT_VAL1

        ldr.w           r4, =M33_STL_TE286_INPUT_VAL2

        ldr             r0, [r1]

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE286_EXP_VAL1

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE286_INPUT_VAL3

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE286_EXP_VAL2

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

m33_stl_close_te286:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 286
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 291
//-----------------------------------------------------------------------------/

// This TE test FPCAR Register

// Initialize GP register with input value, save in r0 register
// the value of FPCAR register, write in FPCAR register,
// read from SHPR2 register, restore SHPR2 register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te291:

        ldr.w           r1, =M33_STL_TE291_INPUT_VAL1

        ldr.w           r4, =M33_STL_TE291_INPUT_VAL2

        ldr             r0, [r1]

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE291_EXP_VAL1

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE291_INPUT_VAL3

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE291_EXP_VAL2

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

m33_stl_close_te291:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 291
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 288
//-----------------------------------------------------------------------------/

// This TE test FPDSCR Register

// Initialize GP register with input value, save in r0 register
// the value of FPDSCR register, write in FPDSCR register,
// read from SHPR2 register, restore SHPR2 register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te288:

        ldr.w           r1, =M33_STL_TE288_INPUT_VAL1

        ldr.w           r4, =M33_STL_TE288_INPUT_VAL2

        ldr             r0, [r1]

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE288_EXP_VAL1

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE288_INPUT_VAL3

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE288_EXP_VAL2

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

m33_stl_close_te288:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 288
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 289
//-----------------------------------------------------------------------------/

// This TE test FPSCR Register

// Initialize GP register with input value, save in r0 register
// the value of FPSCR register, write in FPSCR register,
// read from SHPR2 register, restore SHPR2 register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te289:

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr.w           r2, =M33_STL_NVIC_ICPR0
        ldr.w           r8, =M33_STL_CLEAN_ICPR0

        ldr             r9, [r6]

        ldr.w           r4, =M33_STL_TE289_INPUT_VAL1

        vmrs            r0, fpscr

        vmsr            fpscr, r4

        vmrs            r5, fpscr

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE289_EXP_VAL1

        mov             r12, r7

        vmsr            fpscr, r0

        str             r8, [r2]

        str             r9, [r6]

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE289_INPUT_VAL2

        vmsr            fpscr, r4

        vmrs            r5, fpscr

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE289_EXP_VAL2

        mov             r12, r7

        vmsr            fpscr, r0

        str             r8, [r2]

        str             r9, [r6]

        bl              m33_stl_compare_gpr

m33_stl_close_te289:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 289
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n066 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n066:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n066

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n066 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n066 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n066:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n066

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n066 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n066 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n066:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n066 PROCEDURE
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
