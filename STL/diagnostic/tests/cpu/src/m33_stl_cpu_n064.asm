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

        .section .s_m33_stl_cpu_n064,"ax"
        .global m33_stl_cpu_n064
        .type m33_stl_cpu_n064, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n064,"ax"
        .global m33_stl_cpu_n064

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n064
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n064.asm"
        .section        .s_m33_stl_cpu_n064,"ax",%progbits
        .global         m33_stl_cpu_n064
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n064
        .global m33_stl_cpu_n064

        .align           4

#endif
m33_stl_cpu_n064:
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
        adr             r3, error_m33_stl_cpu_n064
#else
        adr.w           r3, error_m33_stl_cpu_n064
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 64
//-----------------------------------------------------------------------------/

// This TE test SHPR1 Register

// Initialize GP register with input value, save in r0 register
// the value of SHPR1 register, write in SHPR1 register,
// read from SHPR1 register, restore SHPR1 register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te64:

        ldr.w           r1, =M33_STL_TE64_INPUT_VAL1

        ldr.w           r4, =M33_STL_TE64_INPUT_VAL2

        ldr             r0, [r1]

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE64_EXP_VAL1

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE64_INPUT_VAL3

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE64_EXP_VAL2

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

m33_stl_close_te64:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 64
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 65
//-----------------------------------------------------------------------------/

// This TE test SHPR2 Register

// Initialize GP register with input value, save in r0 register
// the value of SHPR2 register, write in SHPR2 register,
// read from SHPR2 register, restore SHPR2 register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te65:

        ldr.w           r1, =M33_STL_TE65_INPUT_VAL1

        ldr.w           r4, =M33_STL_TE65_INPUT_VAL2

        ldr             r0, [r1]

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE65_EXP_VAL1

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE65_INPUT_VAL3

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE65_EXP_VAL2

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

m33_stl_close_te65:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 65
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 66
//-----------------------------------------------------------------------------/

// This TE test SHPR3 Register

// Initialize GP register with input value, save in r0 register
// the value of SHPR3 register, write in SHPR3 register,
// read from SHPR3 register, restore SHPR3 register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te66:

        ldr.w           r1, =M33_STL_TE66_INPUT_VAL1

        ldr.w           r4, =M33_STL_TE66_INPUT_VAL2

        ldr             r0, [r1]

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE66_EXP_VAL1

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE66_INPUT_VAL3

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE66_EXP_VAL2

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

m33_stl_close_te66:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 66
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 67
//-----------------------------------------------------------------------------/

// This TE test VTOR Register

// Initialize GP register with input value, save in r0 register
// the value of VTOR register, write in VTOR register,
// read from VTOR register, restore VTOR register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te67:

        ldr.w           r1, =M33_STL_TE67_INPUT_VAL1

        ldr.w           r4, =M33_STL_TE67_INPUT_VAL2

        ldr             r0, [r1]

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE67_EXP_VAL1

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE67_INPUT_VAL3

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE67_EXP_VAL2

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

m33_stl_close_te67:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 67
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 297
//-----------------------------------------------------------------------------/

// This TE test SHCSR Register

// Initialize GP register with input value, save in r0 register
// the value of SHCSR register, write in SHCSR register,
// read from SHCSR register, restore SHCSR register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te297:

        ldr.w           r1, =M33_STL_TE297_INPUT_VAL1

        ldr.w           r4, =M33_STL_TE297_INPUT_VAL2

        ldr             r0, [r1]

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE297_EXP_VAL1

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE297_INPUT_VAL3

        str             r4, [r1]

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE297_EXP_VAL2

        mov             r12, r7

        str             r0, [r1]

        bl              m33_stl_compare_gpr

m33_stl_close_te297:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 297
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 274
//-----------------------------------------------------------------------------/

// This TE test BASEPRI Register

// Initialize GP register with input value, save in r0 register
// the value of BASEPRI register, write in BASEPRI register,
// read from BASEPRI register, restore BASEPRI register with the value
// in r0 register and compare output value with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

m33_stl_te274:

        ldr.w           r4, =M33_STL_TE274_INPUT_VAL1

        mrs             r0, basepri

        msr             basepri, r4

        mrs             r5, basepri

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE274_EXP_VAL1

        mov             r12, r7

        msr             basepri, r0

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE274_INPUT_VAL2

        msr             basepri, r4

        mrs             r5, basepri

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE274_EXP_VAL2

        mov             r12, r7

        msr             basepri, r0

        bl              m33_stl_compare_gpr

m33_stl_close_te274:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 274
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n064 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n064:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n064

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n064 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n064 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n064:

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n064

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n064 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n064 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n064:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n064 PROCEDURE
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
