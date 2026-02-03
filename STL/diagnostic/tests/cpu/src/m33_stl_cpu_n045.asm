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

        .section .s_m33_stl_cpu_n045,"ax"
        .global m33_stl_cpu_n045
        .type m33_stl_cpu_n045, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n045,"ax"
        .global m33_stl_cpu_n045

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n045
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n045.asm"
        .section        .s_m33_stl_cpu_n045,"ax",%progbits
        .global         m33_stl_cpu_n045
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n045
        .global m33_stl_cpu_n045

        .align           4

#endif
m33_stl_cpu_n045:
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
        adr             r3, error_m33_stl_cpu_n045
#else
        adr.w           r3, error_m33_stl_cpu_n045
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 254
//-----------------------------------------------------------------------------/

// This TE tests VRINTA.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, VRINTA.F32 operation test and compare
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te254:

        vmrs            r0, fpscr

        ldr.w           r5, =M33_STL_TE254_INPUT_VAL1

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE254_INPUT_VAL1

        vmov            s6, r6

        vrinta.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE254_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE254_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE254_INPUT_VAL2

        vmov            s6, r6

        vrinta.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE254_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE254_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE254_INPUT_VAL3

        vmov            s6, r6

        vrinta.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE254_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE254_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE254_INPUT_VAL4

        vmov            s6, r6

        vrinta.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE254_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE254_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE254_INPUT_VAL5

        vmov            s6, r6

        vrinta.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE254_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE254_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE254_INPUT_VAL6

        vmov            s6, r6

        vrinta.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE254_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE254_EXP_VAL7

        bl              m33_stl_compare_gpr

m33_stl_close_te254:

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
// END TEST ELEMENT 254
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 255
//-----------------------------------------------------------------------------/

// This TE tests VRINTM.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, VRINTM.F32 operation test and compare
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te255:

        vmrs            r0, fpscr

        ldr.w           r5, =M33_STL_TE255_INPUT_VAL1

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE255_INPUT_VAL7

        vmov            s6, r6

        vrintm.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE255_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE255_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE255_INPUT_VAL2

        vmov            s6, r6

        vrintm.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE255_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE255_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE255_INPUT_VAL3

        vmov            s6, r6

        vrintm.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE255_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE255_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE255_INPUT_VAL4

        vmov            s6, r6

        vrintm.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE255_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE255_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE255_INPUT_VAL5

        vmov            s6, r6

        vrintm.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE255_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE255_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE255_INPUT_VAL6

        vmov            s6, r6

        vrintm.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE255_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE255_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te255:

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
// END TEST ELEMENT 255
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 256
//-----------------------------------------------------------------------------/

// This TE tests VRINTN.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, VRINTN.F32 operation test and compare
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te256:

        vmrs            r0, fpscr

        ldr.w           r5, =M33_STL_TE256_INPUT_VAL1

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE256_INPUT_VAL1

        vmov            s6, r6

        vrintn.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE256_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE256_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE256_INPUT_VAL2

        vmov            s6, r6

        vrintn.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE256_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE256_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE256_INPUT_VAL3

        vmov            s6, r6

        vrintn.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE256_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE256_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE256_INPUT_VAL4

        vmov            s6, r6

        vrintn.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE256_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE256_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE256_INPUT_VAL5

        vmov            s6, r6

        vrintn.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE256_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE256_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE256_INPUT_VAL6

        vmov            s6, r6

        vrintn.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE256_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE256_EXP_VAL7

        bl              m33_stl_compare_gpr

m33_stl_close_te256:

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
// END TEST ELEMENT 256
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 257
//-----------------------------------------------------------------------------/

// This TE tests VRINTP.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, VRINTP.F32 operation test and compare
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te257:

        vmrs            r0, fpscr

        ldr.w           r5, =M33_STL_TE257_INPUT_VAL1

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE257_INPUT_VAL7

        vmov            s6, r6

        vrintp.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE257_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE257_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE257_INPUT_VAL2

        vmov            s6, r6

        vrintp.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE257_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE257_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE257_INPUT_VAL3

        vmov            s6, r6

        vrintp.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE257_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE257_EXP_VAL4

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE257_INPUT_VAL4

        vmov            s6, r6

        vrintp.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE257_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE257_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE257_INPUT_VAL5

        vmov            s6, r6

        vrintp.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE257_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE257_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        ldr.w           r6, =M33_STL_TE257_INPUT_VAL6

        vmov            s6, r6

        vrintp.f32      s11, s6

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        ldr.w           r12, =M33_STL_TE257_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE257_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te257:

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
// END TEST ELEMENT 257
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n045 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n045:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n045

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n045 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n045 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n045:

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
        b               context_restore_m33_stl_cpu_n045

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n045 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n045 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n045:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n045 PROCEDURE
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
