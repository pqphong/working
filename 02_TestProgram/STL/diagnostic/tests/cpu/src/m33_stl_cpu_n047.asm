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
//  Release Information : Res_STL_M33_U5L4_Renesas_alpha0.0.0
//
//------------------------------------------------------------------------------
#include "m33_stl_constants.h"

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_cpu_n047,"ax"
        .global m33_stl_cpu_n047
        .type m33_stl_cpu_n047, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n047,"ax"
        .global m33_stl_cpu_n047

#endif
m33_stl_cpu_n047:
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

        adr             r3, error_m33_stl_cpu_n047

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 423
//-----------------------------------------------------------------------------/

// This TE tests VCVTB.F16.F32 instructions with RN mode and AHP enabled

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register,
// VCVTB.F16.F32 operation test,
// read from FPSCR register, and compare the output result with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te423:

        vmrs            r0, fpscr

        ldr             r4, =M33_STL_TE423_INPUT_VAL1

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE423_INPUT_VAL2

        vmov            s4, r5

        vcvtb.f16.f32   s7, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE423_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s7

        ldr             r12, =M33_STL_TE423_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE423_INPUT_VAL3

        vmov            s4, r5

        vcvtb.f16.f32   s7, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE423_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s7

        ldr             r12, =M33_STL_TE423_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te423:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 423
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 424
//-----------------------------------------------------------------------------/

// This TE tests VCVTT.F16.F32 instructions with RN mode and AHP enabled

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register,
// VCVTT.F16.F32 operation test,
// read from FPSCR register, and compare the output result with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te424:

        vmrs            r0, fpscr

        ldr             r4, =M33_STL_TE424_INPUT_VAL1

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE424_INPUT_VAL2

        vmov            s4, r5

        vcvtt.f16.f32   s7, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE424_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s7

        ldr             r12, =M33_STL_TE424_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE424_INPUT_VAL3

        vmov            s4, r5

        vcvtt.f16.f32   s7, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE424_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s7

        ldr             r12, =M33_STL_TE424_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te424:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 424
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n047 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n047:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n047

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n047 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n047 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n047:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n047

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n047 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n047 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n047:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n047 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// RESTORE LINK REGISTER TO RETURN TO CALLER
//-----------------------------------------------------------------------------/

        pop             {r0}
        mov             lr, r0

        bx              lr
#ifdef __GHS__
        .align          8
        .end
#endif
#ifdef GCC_COMPILER
        .align          8
        .end
#endif
        end
