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

        .section .s_m33_stl_cpu_n046,"ax"
        .global m33_stl_cpu_n046
        .type m33_stl_cpu_n046, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n046,"ax"
        .global m33_stl_cpu_n046

#endif
m33_stl_cpu_n046:
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

        adr             r3, error_m33_stl_cpu_n046

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 258
//-----------------------------------------------------------------------------/

// This TE tests VRINTR.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, VRINTR.F32 operation test and compare
// the output result with expected value

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

m33_stl_te258:

        vmrs            r0, fpscr

        ldr             r5, =M33_STL_TE258_INPUT_VAL1

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE258_INPUT_VAL7

        vmov            s6, r6

        vrintr.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE258_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE258_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE258_INPUT_VAL2

        vmov            s6, r6

        vrintr.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE258_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE258_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE258_INPUT_VAL3

        vmov            s6, r6

        vrintr.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE258_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE258_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE258_INPUT_VAL4

        vmov            s6, r6

        vrintr.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE258_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE258_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE258_INPUT_VAL5

        vmov            s6, r6

        vrintr.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE258_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE258_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE258_INPUT_VAL6

        vmov            s6, r6

        vrintr.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE258_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE258_EXP_VAL7

        bl              m33_stl_compare_gpr

m33_stl_close_te258:

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
// END TEST ELEMENT 258
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 259
//-----------------------------------------------------------------------------/

// This TE tests VRINTX.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, VRINTX.F32 operation test and compare
// the output result with expected value

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

m33_stl_te259:

        vmrs            r0, fpscr

        ldr             r5, =M33_STL_TE259_INPUT_VAL1

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE259_INPUT_VAL7

        vmov            s6, r6

        vrintx.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE259_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE259_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE259_INPUT_VAL2

        vmov            s6, r6

        vrintx.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE259_EXP_VAL8

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE259_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE259_INPUT_VAL3

        vmov            s6, r6

        vrintx.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE259_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE259_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE259_INPUT_VAL4

        vmov            s6, r6

        vrintx.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE259_EXP_VAL8

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE259_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE259_INPUT_VAL5

        vmov            s6, r6

        vrintx.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE259_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE259_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE259_INPUT_VAL6

        vmov            s6, r6

        vrintx.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE259_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE259_EXP_VAL7

        bl              m33_stl_compare_gpr

m33_stl_close_te259:

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
// END TEST ELEMENT 259
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 260
//-----------------------------------------------------------------------------/

// This TE tests VRINTZ.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, VRINTZ.F32 operation test and compare
// the output result with expected value

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

m33_stl_te260:

        vmrs            r0, fpscr

        ldr             r5, =M33_STL_TE260_INPUT_VAL1

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE260_INPUT_VAL7

        vmov            s6, r6

        vrintz.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE260_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE260_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE260_INPUT_VAL2

        vmov            s6, r6

        vrintz.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE260_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE260_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE260_INPUT_VAL3

        vmov            s6, r6

        vrintz.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE260_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE260_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE260_INPUT_VAL4

        vmov            s6, r6

        vrintz.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE260_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE260_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE260_INPUT_VAL5

        vmov            s6, r6

        vrintz.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE260_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE260_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr             r6, =M33_STL_TE260_INPUT_VAL6

        vmov            s6, r6

        vrintz.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr             r12, =M33_STL_TE260_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr             r12, =M33_STL_TE260_EXP_VAL7

        bl              m33_stl_compare_gpr

m33_stl_close_te260:

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
// END TEST ELEMENT 260
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n046 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n046:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n046

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n046 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n046 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n046:

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
        b               context_restore_m33_stl_cpu_n046

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n046 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n046 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n046:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n046 PROCEDURE
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
