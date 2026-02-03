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

        .section .s_m33_stl_cpu_n072,"ax"
        .global m33_stl_cpu_n072
        .type m33_stl_cpu_n072, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n072,"ax"
        .global m33_stl_cpu_n072

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n072
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n072.asm"
        .section        .s_m33_stl_cpu_n072,"ax",%progbits
        .global         m33_stl_cpu_n072
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n072
        .global m33_stl_cpu_n072

        .align           4

#endif
m33_stl_cpu_n072:
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
        adr             r3, error_m33_stl_cpu_n072
#else
        adr.w           r3, error_m33_stl_cpu_n072
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 317
//-----------------------------------------------------------------------------/

// Sequence of FP instructions

// GP Registers initialization with input value, move to FP registers,
// FP operations test, move to GP registers
// and compare the output result with expected value

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

m33_stl_te317:

        vmrs            r0, fpscr

        ldr             r1, =M33_STL_TE317_INPUT_VAL17
        vmsr            fpscr, r1

        ldr             r5, =M33_STL_TE317_INPUT_VAL1
        ldr             r6, =M33_STL_TE317_INPUT_VAL2
        ldr             r7, =M33_STL_TE317_INPUT_VAL3
        ldr             r8, =M33_STL_TE317_INPUT_VAL4
        ldr             r9, =M33_STL_TE317_INPUT_VAL5
        ldr             r10,=M33_STL_TE317_INPUT_VAL6
        ldr             r11,=M33_STL_TE317_INPUT_VAL7
        ldr             r12,=M33_STL_TE317_INPUT_VAL8

        vmov            s2, r5
        vmov            s3, r6
        vmov            s4, r7
        vmov            s5, r8
        vmov            s8, r9
        vmov            s9, r10
        vmov            s12, r11
        vmov            s13, r12


        vmul.f32        s14, s2, s3
        vdiv.f32        s15, s14, s4
        vadd.f32        s16, s5, s15
        vmla.f32        s14, s15, s16
        vmls.f32        s15, s14, s16
        vmul.f32        s17, s2, s14
        vadd.f32        s18, s17, s15
        vadd.f32        s19, s17, s16
        vmla.f32        s16, s19, s18
        vmls.f32        s15, s18, s14

        vmsr            fpscr, r0

        vmov            r11, s14
        ldr             r12, =M33_STL_TE317_EXP_VAL1
        bl              m33_stl_compare_gpr

        vmov            r11, s15
        ldr             r12, =M33_STL_TE317_EXP_VAL2
        bl              m33_stl_compare_gpr

        vmov            r11, s16
        ldr             r12, =M33_STL_TE317_EXP_VAL3
        bl              m33_stl_compare_gpr

        vmov            r11, s17
        ldr             r12, =M33_STL_TE317_EXP_VAL4
        bl              m33_stl_compare_gpr

        vmov            r11, s18
        ldr             r12, =M33_STL_TE317_EXP_VAL5
        bl              m33_stl_compare_gpr

        vmov            r11, s19
        ldr             r12, =M33_STL_TE317_EXP_VAL6
        bl              m33_stl_compare_gpr

        vmsr            fpscr, r1

        ldr             r5, =M33_STL_TE317_INPUT_VAL9
        ldr             r6, =M33_STL_TE317_INPUT_VAL10
        ldr             r7, =M33_STL_TE317_INPUT_VAL11
        ldr             r8, =M33_STL_TE317_INPUT_VAL12
        ldr             r9, =M33_STL_TE317_INPUT_VAL13
        ldr             r10,=M33_STL_TE317_INPUT_VAL14
        ldr             r11,=M33_STL_TE317_INPUT_VAL15
        ldr             r12,=M33_STL_TE317_INPUT_VAL16

        vmov            s2, r5
        vmov            s3, r6
        vmov            s4, r7
        vmov            s5, r8
        vmov            s8, r9
        vmov            s9, r10
        vmov            s12, r11
        vmov            s13, r12

        vmul.f32        s14, s2, s3
        vdiv.f32        s15, s14, s4
        vadd.f32        s16, s5, s15
        vmla.f32        s14, s15, s16
        vmls.f32        s15, s14, s16
        vmul.f32        s17, s16, s4
        vmul.f32        s18, s14, s2
        vadd.f32        s19, s18, s4
        vadd.f32        s20, s18, s15
        vmla.f32        s16, s20, s19
        vmls.f32        s15, s19, s17

        vmsr            fpscr, r0

        vmov            r11, s14
        ldr             r12, =M33_STL_TE317_EXP_VAL7
        bl              m33_stl_compare_gpr

        vmov            r11, s15
        ldr             r12, =M33_STL_TE317_EXP_VAL8
        bl              m33_stl_compare_gpr

        vmov            r11, s16
        ldr             r12, =M33_STL_TE317_EXP_VAL9
        bl              m33_stl_compare_gpr

        vmov            r11, s17
        ldr             r12, =M33_STL_TE317_EXP_VAL10
        bl              m33_stl_compare_gpr

        vmov            r11, s18
        ldr             r12, =M33_STL_TE317_EXP_VAL11
        bl              m33_stl_compare_gpr

        vmov            r11, s19
        ldr             r12, =M33_STL_TE317_EXP_VAL10
        bl              m33_stl_compare_gpr

        vmov            r11, s20
        ldr             r12, =M33_STL_TE317_EXP_VAL12
        bl              m33_stl_compare_gpr

m33_stl_close_te317:

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
// END TEST ELEMENT 317
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n072 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n072:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n072

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n072 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n072 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n072:

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
        b               context_restore_m33_stl_cpu_n072

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n072 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n072 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n072:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n072 PROCEDURE
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
