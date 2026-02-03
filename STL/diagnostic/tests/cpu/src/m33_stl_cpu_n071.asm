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

        .section .s_m33_stl_cpu_n071,"ax"
        .global m33_stl_cpu_n071
        .type m33_stl_cpu_n071, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n071,"ax"
        .global m33_stl_cpu_n071

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n071
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n071.asm"
        .section        .s_m33_stl_cpu_n071,"ax",%progbits
        .global         m33_stl_cpu_n071
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n071
        .global m33_stl_cpu_n071

        .align           4

#endif
m33_stl_cpu_n071:
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
        adr             r3, error_m33_stl_cpu_n071
#else
        adr.w           r3, error_m33_stl_cpu_n071
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 316
//-----------------------------------------------------------------------------/

// Sequence of Integer instructions

// GP Registers initialization with input value, integer operations test
// and compare the output result with expected value

m33_stl_te316:

        ldr             r5, =M33_STL_TE316_INPUT_VAL1
        ldr             r6, =M33_STL_TE316_INPUT_VAL2
        ldr             r7, =M33_STL_TE316_INPUT_VAL3
        ldr             r8, =M33_STL_TE316_INPUT_VAL4
        ldr             r9, =M33_STL_TE316_INPUT_VAL5
        ldr             r10,=M33_STL_TE316_INPUT_VAL6
        ldr             r11,=M33_STL_TE316_INPUT_VAL7
        ldr             r12,=M33_STL_TE316_INPUT_VAL8
        ldr             r0, =M33_STL_TE316_INPUT_VAL18
        ldr             r1, =M33_STL_TE316_INPUT_VAL19
        ldr             r2, =M33_STL_TE316_INPUT_VAL20

        sdiv            r6, r5, r6
        smlad           r8, r10, r12, r8
        muls            r5, r6, r5
        eors            r6, r6, r9
        adds            r10, r7, r11
        ssat            r9, #M33_STL_TE316_INPUT_VAL17, r8
        udiv            r7, r6, r9
        mla             r10, r9, r5, r10
        shasx           r5, r5, r8
        orn             r9, r12, r11
        rev             r6, r8
        uqadd8          r8, r9, r7
        smlawt          r0, r10, r11, r0
        clz             r2, r7
        smull           r1, r2, r5, r6
        sxtb            r0, r9
        pkhtb           r1, r6, r8, asr #M33_STL_TE316_INPUT_VAL17
        adc             r2, r2, r0
        uxtb            r0, r11
        ror             r1, r1, r0

        mov             r11, r0
        ldr             r12, =M33_STL_TE316_EXP_VAL1
        bl              m33_stl_compare_gpr

        mov             r11, r1
        ldr             r12, =M33_STL_TE316_EXP_VAL2
        bl              m33_stl_compare_gpr

        mov             r11, r2
        ldr             r12, =M33_STL_TE316_EXP_VAL3
        bl              m33_stl_compare_gpr

        mov             r11, r5
        ldr             r12, =M33_STL_TE316_EXP_VAL4
        bl              m33_stl_compare_gpr

        mov             r11, r6
        ldr             r12, =M33_STL_TE316_EXP_VAL5
        bl              m33_stl_compare_gpr

        mov             r11, r7
        ldr             r12, =M33_STL_TE316_EXP_VAL6
        bl              m33_stl_compare_gpr

        mov             r11, r10
        ldr             r12, =M33_STL_TE316_EXP_VAL7
        bl              m33_stl_compare_gpr

        mov             r11, r8
        ldr             r12, =M33_STL_TE316_EXP_VAL8
        bl              m33_stl_compare_gpr

        mov             r11, r9
        ldr             r12, =M33_STL_TE316_EXP_VAL9
        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE316_INPUT_VAL9
        ldr             r6, =M33_STL_TE316_INPUT_VAL10
        ldr             r7, =M33_STL_TE316_INPUT_VAL11
        ldr             r8, =M33_STL_TE316_INPUT_VAL12
        ldr             r9, =M33_STL_TE316_INPUT_VAL13
        ldr             r10,=M33_STL_TE316_INPUT_VAL14
        ldr             r11,=M33_STL_TE316_INPUT_VAL15
        ldr             r12,=M33_STL_TE316_INPUT_VAL16
        ldr             r0, =M33_STL_TE316_INPUT_VAL18
        ldr             r1, =M33_STL_TE316_INPUT_VAL19
        ldr             r2, =M33_STL_TE316_INPUT_VAL20

        orrs            r7, r6, r9
        smladx          r8, r9, r11, r8
        mul             r7, r6, r8
        qadd            r10, r8, r6
        asrs            r6, r10, #M33_STL_TE316_INPUT_VAL3
        udiv            r6, r5, r7
        bics            r8, r7, r5
        subs            r9, r7, r10
        lsl             r6, r6, #M33_STL_TE316_INPUT_VAL5
        shsax           r9, r5, r8
        uhsub8          r10, r11, r10
        adds            r7, r7, r12
        umull           r0, r1, r5, r6
        qadd            r2, r8, r6
        rsb             r0, r5, r6
        and             r1, r2, r9
        bic             r2, r2, r5
        sbc             r1, r1, r0
        clz             r0, r10
        qsub            r2, r2, r6

        mov             r11, r0
        ldr             r12, =M33_STL_TE316_EXP_VAL10
        bl              m33_stl_compare_gpr

        mov             r11, r1
        ldr             r12, =M33_STL_TE316_EXP_VAL11
        bl              m33_stl_compare_gpr

        mov             r11, r2
        ldr             r12, =M33_STL_TE316_EXP_VAL12
        bl              m33_stl_compare_gpr

        mov             r11, r9
        ldr             r12, =M33_STL_TE316_EXP_VAL13
        bl              m33_stl_compare_gpr

        mov             r11, r10
        ldr             r12, =M33_STL_TE316_EXP_VAL14
        bl              m33_stl_compare_gpr

        mov             r11, r6
        ldr             r12, =M33_STL_TE316_EXP_VAL15
        bl              m33_stl_compare_gpr

        mov             r11, r7
        ldr             r12, =M33_STL_TE316_EXP_VAL16
        bl              m33_stl_compare_gpr

        mov             r11, r8
        ldr             r12, =M33_STL_TE316_EXP_VAL17
        bl              m33_stl_compare_gpr

m33_stl_close_te316:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 316
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n071 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n071:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n071

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n071 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n071 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n071:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n071

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n071 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n071 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n071:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n071 PROCEDURE
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
