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

        .section .s_m33_stl_cpu_n025,"ax"
        .global m33_stl_cpu_n025
        .type m33_stl_cpu_n025, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n025,"ax"
        .global m33_stl_cpu_n025

#endif
m33_stl_cpu_n025:
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

        adr             r3, error_m33_stl_cpu_n025

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 136
//-----------------------------------------------------------------------------/

// This TE tests BFC instruction

// GP Registers initialization with input value, BFC operation test and compare
// the output result with expected value

m33_stl_te136:

        ldr             r11, =M33_STL_TE136_INPUT_VAL1
        bfc             r11, #M33_STL_TE136_INPUT_VAL2, #M33_STL_TE136_INPUT_VAL3

        ldr             r12, =M33_STL_TE136_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE136_INPUT_VAL1
        bfc             r8, #M33_STL_TE136_INPUT_VAL2, #M33_STL_TE136_INPUT_VAL4

        mov             r11, r8

        ldr             r12, =M33_STL_TE136_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE136_INPUT_VAL1
        bfc             r8, #M33_STL_TE136_INPUT_VAL2, #M33_STL_TE136_INPUT_VAL5

        mov             r11, r8

        ldr             r12, =M33_STL_TE136_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te136:

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 136
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 137
//-----------------------------------------------------------------------------/

// This TE tests BFI instruction

// GP Registers initialization with input value, BFI operation test and compare
// the output result with expected value

m33_stl_te137:

        ldr             r11, =M33_STL_TE137_INPUT_VAL1
        ldr             r7, =M33_STL_TE137_INPUT_VAL1
        ldr             r5, =M33_STL_TE137_INPUT_VAL1
        ldr             r8, =M33_STL_TE137_INPUT_VAL2

        bfi             r11, r8, #M33_STL_TE137_INPUT_VAL1, #M33_STL_TE137_INPUT_VAL4

        ldr             r12, =M33_STL_TE137_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE137_INPUT_VAL5

        bfi             r7, r8, #M33_STL_TE137_INPUT_VAL6, #M33_STL_TE137_INPUT_VAL7

        mov             r11, r7

        ldr             r12, =M33_STL_TE137_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE137_INPUT_VAL3

        bfi             r5, r8, #M33_STL_TE137_INPUT_VAL1, #M33_STL_TE137_INPUT_VAL6

        mov             r11, r5

        ldr             r12, =M33_STL_TE137_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te137:

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 137
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 138
//-----------------------------------------------------------------------------/

// This TE tests BIC (immediate) instruction

// GP Registers initialization with input value, write in APSR register,
// BIC (immediate) operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te138:

        ldr             r2, =M33_STL_TE138_INPUT_VAL1
        msr             apsr_nzcvq, r2

        ldr             r5, =M33_STL_TE138_INPUT_VAL2
        ldr             r9, =M33_STL_TE138_INPUT_VAL2

        bics            r6, r5, M33_STL_TE138_INPUT_VAL1
        bics            r10, r9, M33_STL_TE138_INPUT_VAL1

        mrs             r11, apsr
        and             r11, r11, M33_STL_TE138_MASK_VAL1

        ldr             r12, =M33_STL_TE138_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE138_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r7, =M33_STL_TE138_INPUT_VAL1
        ldr             r9, =M33_STL_TE138_INPUT_VAL1

        bics            r6, r7, #M33_STL_TE138_INPUT_VAL1
        bics            r10, r9, #M33_STL_TE138_INPUT_VAL1

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE138_MASK_VAL1

        ldr             r12, =M33_STL_TE138_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE138_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr


        ldr             r8, =M33_STL_TE138_INPUT_VAL4
        ldr             r9, =M33_STL_TE138_INPUT_VAL4

        bic             r11, r8, #M33_STL_TE138_INPUT_VAL5
        bic             r10, r9, #M33_STL_TE138_INPUT_VAL5

        ldr             r12, =M33_STL_TE138_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r7, =M33_STL_TE138_INPUT_VAL6
        ldr             r9, =M33_STL_TE138_INPUT_VAL6

        bics            r6, r7, #M33_STL_TE138_INPUT_VAL3
        bics            r10, r9, #M33_STL_TE138_INPUT_VAL3

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE138_MASK_VAL1

        ldr             r12, =M33_STL_TE138_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE138_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

m33_stl_close_te138:

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 138
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 139
//-----------------------------------------------------------------------------/

// This TE tests BIC (register) instruction

// GP Registers initialization with input value, write in APSR register,
// BIC (register) operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te139:

        ldr             r5, =M33_STL_TE139_INPUT_VAL2
        ldr             r9, =M33_STL_TE139_INPUT_VAL1

        bic             r11, r5, r9, rrx

        ldr             r12, =M33_STL_TE139_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE139_INPUT_VAL4
        ldr             r9, =M33_STL_TE139_INPUT_VAL1

        bic             r11, r7, r9, ror #M33_STL_TE139_INPUT_VAL7

        ldr             r12, =M33_STL_TE139_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r2, =M33_STL_TE139_INPUT_VAL1
        msr             apsr_nzcvq, r2

        ldr             r8, =M33_STL_TE139_INPUT_VAL4
        ldr             r9, =M33_STL_TE139_INPUT_VAL5

        bics            r6, r8, r9, rrx

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE139_MASK_VAL1

        ldr             r12, =M33_STL_TE139_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r12, =M33_STL_TE139_EXP_VAL4

        mov             r11, r6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r7, =M33_STL_TE139_INPUT_VAL6
        ldr             r9, =M33_STL_TE139_INPUT_VAL3

        bics            r6, r7, r9, asr #M33_STL_TE139_INPUT_VAL8

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE139_MASK_VAL1

        ldr             r12, =M33_STL_TE139_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r12, =M33_STL_TE139_EXP_VAL5

        mov             r11, r6

        bl              m33_stl_compare_gpr

m33_stl_close_te139:

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 139
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 140
//-----------------------------------------------------------------------------/

// This TE tests CLZ instruction

// GP Registers initialization with input value, CLZ operation test and compare
// the output result with expected value

m33_stl_te140:

        ldr             r5, =M33_STL_TE140_INPUT_VAL1

        clz             r11, r5

        ldr             r12, =M33_STL_TE140_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE140_INPUT_VAL2

        clz             r11, r5

        ldr             r12, =M33_STL_TE140_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE140_INPUT_VAL3

        clz             r11, r5

        ldr             r12, =M33_STL_TE140_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te140:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 140
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 186
//-----------------------------------------------------------------------------/

// This TE tests SBFX instruction

// GP Registers initialization with input value, SBFX operation test and compare
// the output result with expected value

m33_stl_te186:

        ldr             r11, =M33_STL_TE186_INPUT_VAL1
        ldr             r9, =M33_STL_TE186_INPUT_VAL1

        ldr             r8, =M33_STL_TE186_INPUT_VAL2

        sbfx            r11, r8, M33_STL_TE186_INPUT_VAL1, M33_STL_TE186_INPUT_VAL4

        ldr             r12, =M33_STL_TE186_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE186_INPUT_VAL5

        sbfx            r9, r7, M33_STL_TE186_INPUT_VAL1, M33_STL_TE186_INPUT_VAL4

        mov             r11, r9

        ldr             r12, =M33_STL_TE186_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE186_INPUT_VAL6

        sbfx            r9, r7, M33_STL_TE186_INPUT_VAL3, M33_STL_TE186_INPUT_VAL3

        mov             r11, r9

        ldr             r12, =M33_STL_TE186_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te186:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 186
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 187
//-----------------------------------------------------------------------------/

// This TE tests SEL instruction

// GP Registers initialization with input value, write in APSR_G register,
// SEL operation test and compare the output
// result with expected value

m33_stl_te187:

        ldr             r10, =M33_STL_TE187_INPUT_VAL1
        ldr             r8, =M33_STL_TE187_INPUT_VAL2

        ldr             r5, =M33_STL_TE187_INPUT_VAL3

        msr             apsr_g, r5

        sel             r11, r10, r8

        ldr             r12, =M33_STL_TE187_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE187_INPUT_VAL2
        ldr             r8, =M33_STL_TE187_INPUT_VAL1

        ldr             r5, =M33_STL_TE187_INPUT_VAL4

        msr             apsr_g, r5

        sel             r11, r10, r8

        ldr             r12, =M33_STL_TE187_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE187_INPUT_VAL1
        ldr             r8, =M33_STL_TE187_INPUT_VAL2

        ldr             r5, =M33_STL_TE187_INPUT_VAL5

        msr             apsr_g, r5

        sel             r11, r10, r8

        ldr             r12, =M33_STL_TE187_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE187_INPUT_VAL2
        ldr             r8, =M33_STL_TE187_INPUT_VAL1

        ldr             r5, =M33_STL_TE187_INPUT_VAL6

        msr             apsr_g, r5

        sel             r11, r10, r8

        ldr             r12, =M33_STL_TE187_EXP_VAL1

        bl              m33_stl_compare_gpr


m33_stl_close_te187:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 187
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 217
//-----------------------------------------------------------------------------/

// This TE tests UBFX instruction

// GP Registers initialization with input value, UBFX operation test and compare
// the output result with expected value

m33_stl_te217:

        ldr             r11, =M33_STL_TE217_INPUT_VAL1
        ldr             r8, =M33_STL_TE217_INPUT_VAL2

        ubfx            r11, r8, M33_STL_TE217_INPUT_VAL1, M33_STL_TE217_INPUT_VAL4

        ldr             r12, =M33_STL_TE217_EXP_VAL1

        bl              m33_stl_compare_gpr

        ubfx            r11, r8, M33_STL_TE217_INPUT_VAL5, M33_STL_TE217_INPUT_VAL3

        ldr             r12, =M33_STL_TE217_EXP_VAL2

        bl              m33_stl_compare_gpr

        ubfx            r11, r8, M33_STL_TE217_INPUT_VAL3, M33_STL_TE217_INPUT_VAL5

        ldr             r12, =M33_STL_TE217_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te217:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 217
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n025 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n025:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n025

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n025 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n025 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n025:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n025

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n025 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n025 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n025:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n025 PROCEDURE
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
