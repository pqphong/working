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

        .section .s_m33_stl_cpu_n050,"ax"
        .global m33_stl_cpu_n050
        .type m33_stl_cpu_n050, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n050,"ax"
        .global m33_stl_cpu_n050

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n050
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n050.asm"
        .section        .s_m33_stl_cpu_n050,"ax",%progbits
        .global         m33_stl_cpu_n050
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n050
        .global m33_stl_cpu_n050

        .align           4

#endif
m33_stl_cpu_n050:
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
        adr             r3, error_m33_stl_cpu_n050
#else
        adr.w           r3, error_m33_stl_cpu_n050
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 296
//-----------------------------------------------------------------------------/

// This TE tests VCVTB.F16.F32 instructions

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register,
// VCVTB.F16.F32 operation test (<dt> can be s32 or u32 or s16 or u16),
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te296:

        vmrs            r0, fpscr

        ldr.w           r4, =M33_STL_TE296_INPUT_VAL5

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE296_INPUT_VAL1

        vmov            s4, r5

        vcvtb.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE296_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE296_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE296_INPUT_VAL2

        vmov            s4, r5

        vcvtb.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE296_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE296_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE296_INPUT_VAL3

        vmov            s4, r5

        vcvtb.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE296_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE296_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE296_INPUT_VAL4

        vmov            s4, r5

        vcvtb.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE296_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE296_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE296_INPUT_VAL5

        vmov            s4, r5

        vcvtb.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE296_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE296_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE296_INPUT_VAL6

        vmov            s4, r5

        vcvtb.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE296_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE296_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te296:

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
// END TEST ELEMENT 296
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 320
//-----------------------------------------------------------------------------/

// This TE tests VCVTT.F16.F32 instructions

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register,
// VCVTT.F16.F32 operation test (<dt> can be s32 or u32 or s16 or u16),
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te320:

        vmrs            r0, fpscr

        ldr.w           r4, =M33_STL_TE320_INPUT_VAL5

        vmsr            fpscr, r4

        vmov            s6, r4

        ldr.w           r5, =M33_STL_TE320_INPUT_VAL1

        vmov            s4, r5

        vcvtt.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE320_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE320_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE320_INPUT_VAL2

        vmov            s4, r5

        vcvtt.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE320_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE320_EXP_VAL8

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE320_INPUT_VAL3

        vmov            s4, r5

        vcvtt.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE320_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE320_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE320_INPUT_VAL4

        vmov            s4, r5

        vcvtt.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE320_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE320_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE320_INPUT_VAL5

        vmov            s4, r5

        vcvtt.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE320_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE320_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE320_INPUT_VAL6

        vmov            s4, r5

        vcvtt.f16.f32   s6, s4

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE320_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE320_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te320:

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
// END TEST ELEMENT 320
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n050 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n050:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n050

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n050 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n050 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n050:

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
        b               context_restore_m33_stl_cpu_n050

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n050 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n050 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n050:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n050 PROCEDURE
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
