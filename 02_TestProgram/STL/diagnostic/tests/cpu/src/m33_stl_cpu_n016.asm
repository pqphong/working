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

        .section .s_m33_stl_cpu_n016,"ax"
        .global m33_stl_cpu_n016
        .type m33_stl_cpu_n016, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n016,"ax"
        .global m33_stl_cpu_n016

#endif
m33_stl_cpu_n016:
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

        adr             r3, error_m33_stl_cpu_n016

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 312
//-----------------------------------------------------------------------------/

// This TE tests VCVTR.S32.F32 and VCVTR.U32.F32 instructions with RP mode

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register,
// VCVTR.S32.F32 and VCVTR.U32.F32 operation test (<dt> can be s32 or u32 or s16 or u16),
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

m33_stl_te312:

        vmrs            r0, fpscr

        ldr             r4, =M33_STL_TE312_INPUT_VAL7

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE312_INPUT_VAL1

        vmov            s4, r5

        vcvtr.s32.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE312_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr             r12, =M33_STL_TE312_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE312_INPUT_VAL2

        vmov            s4, r5

        vcvtr.u32.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE312_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr             r12, =M33_STL_TE312_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE312_INPUT_VAL3

        vmov            s4, r5

        vcvtr.s32.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE312_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr             r12, =M33_STL_TE312_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE312_INPUT_VAL4

        vmov            s4, r5

        vcvtr.u32.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE312_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr             r12, =M33_STL_TE312_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE312_INPUT_VAL6

        vmov            s4, r5

        vcvtr.s32.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE312_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr             r12, =M33_STL_TE312_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te312:

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
// END TEST ELEMENT 312
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n016 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n016:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n016

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n016 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n016 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n016:

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
        b               context_restore_m33_stl_cpu_n016

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n016 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n016 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n016:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n016 PROCEDURE
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
