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

        .section .s_m33_stl_cpu_n059,"ax"
        .global m33_stl_cpu_n059
        .type m33_stl_cpu_n059, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n059,"ax"
        .global m33_stl_cpu_n059

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n059
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n059.asm"
        .section        .s_m33_stl_cpu_n059,"ax",%progbits
        .global         m33_stl_cpu_n059
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n059
        .global m33_stl_cpu_n059

        .align           4

#endif
m33_stl_cpu_n059:
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
        adr             r3, error_m33_stl_cpu_n059
#else
        adr.w           r3, error_m33_stl_cpu_n059
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 336
//-----------------------------------------------------------------------------/

// This TE tests VLDM and VSTM instructions

// GP Registers initialization with input value,
// move GP register in FP register, execute VLDM and VSTM operations
// and compare output with expected value

m33_stl_te336:

        ldr.w           r5, =M33_STL_TE336_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE336_INPUT_VAL2

        vmov            s0, r5
        vmov            s1, r6
        vmov            s3, r5
        vmov            s2, r6

        sub             sp, sp, #M33_STL_TE336_STACK_WORDS8

        mov             r7, sp

        add             r7, r7, #M33_STL_TE336_INPUT_VAL5

        mov             r10, r7

        sub             r10, r10, #M33_STL_TE336_INPUT_VAL3

        vstmia          r10, {s0, s1}

        add             r10, r10, #M33_STL_TE336_INPUT_VAL3

        vldmdb          r10!, {s2, s3}
        vmov            r11, s2

        ldr.w           r12, =M33_STL_TE336_EXP_VAL1

        add             sp, sp, #M33_STL_TE336_STACK_WORDS8

        bl              m33_stl_compare_gpr

        vmov            r11, s3

        ldr.w           r12, =M33_STL_TE336_EXP_VAL2

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE336_STACK_WORDS8

#ifdef TASKING
        vmov            s1, r5
        vmov            s0, r6
#else
        vmov.f32        s1, r5
        vmov.f32        s0, r6
#endif
        vstmia          r10, {s0, s1}

        vldmia          r10, {s2, s3}
        vmov            r11, s2

        ldr.w           r12, =M33_STL_TE336_EXP_VAL2

        add             sp, sp, #M33_STL_TE336_STACK_WORDS8

        bl              m33_stl_compare_gpr

        vmov            r11, s3

        ldr.w           r12, =M33_STL_TE336_EXP_VAL1

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            s0, r5
        vmov            s1, r6
        vmov            s2, r5
        vmov            s3, r6
#else
        vmov.f32        s0, r5
        vmov.f32        s1, r6
        vmov.f32        s2, r5
        vmov.f32        s3, r6
#endif

        sub             sp, sp, #M33_STL_TE336_STACK_WORDS8

        mov             r10, r7

        vstmdb          r10!, {d0, d1}

        vldmia          r10, {s4, s5, s6, s7}
        vmov            r11, s4

        ldr.w           r12, =M33_STL_TE336_EXP_VAL1

        add             sp, sp, #M33_STL_TE336_STACK_WORDS8

        bl              m33_stl_compare_gpr

        vmov            r11, s5

        ldr.w           r12, =M33_STL_TE336_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmov            r11, s6

        ldr.w           r12, =M33_STL_TE336_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmov            r11, s7

        ldr.w           r12, =M33_STL_TE336_EXP_VAL2

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE336_STACK_WORDS8

        mov             r10, r7
        vstr.64         d1, [r10, #M33_STL_TE336_INPUT_VAL4]
        sub             r10, r10, #M33_STL_TE336_INPUT_VAL3
        vldmia          r10, {s8, s9}
        vmov            r11, s8

        ldr.w           r12, =M33_STL_TE336_EXP_VAL1

        add             sp, sp, #M33_STL_TE336_STACK_WORDS8

        bl              m33_stl_compare_gpr

        vmov            r11, s9

        ldr.w           r12, =M33_STL_TE336_EXP_VAL2

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE336_STACK_WORDS8

        mov             r10, r7

        vstr.32         s1, [r10]
        vldm            r10, {s0}
        vmov            r11, s0

        ldr.w           r12, =M33_STL_TE336_EXP_VAL2

        add             sp, sp, #M33_STL_TE336_STACK_WORDS8

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE336_STACK_WORDS8

        mov             r10, r7

        vstr.32         s2, [r10]
        vldm            r10, {s0}
        vmov            r11, s0

        ldr.w           r12, =M33_STL_TE336_EXP_VAL1

        add             sp, sp, #M33_STL_TE336_STACK_WORDS8

        bl              m33_stl_compare_gpr

m33_stl_close_te336:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 336
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 337
//-----------------------------------------------------------------------------/

// This TE tests VLDR and VSTR instructions

// GP Registers initialization with input value,
// move GP register in FP register, execute VLDR and VSTR operations
// and compare output with expected value

m33_stl_te337:

        ldr.w           r4, =M33_STL_TE337_INPUT_VAL1

        vmov            s4, r4

        sub             sp, sp, #M33_STL_TE337_STACK_WORDS3

        vstr            s4, [sp, #M33_STL_TE337_INPUT_VAL3]
        vldr            s4, [sp, #M33_STL_TE337_INPUT_VAL3]

        add             sp, sp, #M33_STL_TE337_STACK_WORDS3

        ldr.w           r12, =M33_STL_TE337_EXP_VAL1

        vmov            r11, s4
        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE337_INPUT_VAL2

        vmov            s5, r5

        sub             sp, sp, #M33_STL_TE337_STACK_WORDS3

        vstr.32         s5, [sp, #M33_STL_TE337_INPUT_VAL4]
        vldr.32         s5, [sp, #M33_STL_TE337_INPUT_VAL4]

        add             sp, sp, #M33_STL_TE337_STACK_WORDS3

        ldr.w           r12, =M33_STL_TE337_EXP_VAL2

        vmov            r11, s5
        bl              m33_stl_compare_gpr

m33_stl_close_te337:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 337
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n059 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n059:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n059

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n059 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n059 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n059:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n059

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n059 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n059 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n059:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n059 PROCEDURE
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
