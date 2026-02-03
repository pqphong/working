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

        .section .s_m33_stl_cpu_n065,"ax"
        .global m33_stl_cpu_n065
        .type m33_stl_cpu_n065, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n065,"ax"
        .global m33_stl_cpu_n065

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n065
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n065.asm"
        .section        .s_m33_stl_cpu_n065,"ax",%progbits
        .global         m33_stl_cpu_n065
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n065
        .global m33_stl_cpu_n065

        .align           4

#endif
m33_stl_cpu_n065:
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
        adr             r3, error_m33_stl_cpu_n065
#else
        adr.w           r3, error_m33_stl_cpu_n065
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 70
//-----------------------------------------------------------------------------/

// This TE test CCSIDR Register

// Read from CCSIDR register and compare output value with expected value

m33_stl_te70:

        ldr.w           r1, =M33_STL_TE70_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE70_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te70:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 70
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 71
//-----------------------------------------------------------------------------/

// This TE test CLIDR Register

// Read from CLIDR register and compare output value with expected value

m33_stl_te71:

        ldr.w           r1, =M33_STL_TE71_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE71_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te71:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 71
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 72
//-----------------------------------------------------------------------------/

// This TE test CTR Register

// Read from CTR register and compare output value with expected value

m33_stl_te72:

        ldr.w           r1, =M33_STL_TE72_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE72_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te72:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 72
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 73
//-----------------------------------------------------------------------------/

// This TE test ICTR Register

// Read from ICTR register and compare output value with expected value

m33_stl_te73:

        ldr.w           r1, =M33_STL_TE73_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE73_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te73:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 73
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 277
//-----------------------------------------------------------------------------/

// This TE test ID_PFR0 Register

// Read from ID_PFR0 register and compare output value with expected value

m33_stl_te277:

        ldr.w           r1, =M33_STL_TE277_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE277_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te277:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 277
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 299
//-----------------------------------------------------------------------------/

// This TE test ID_ISAR4 Register

// Read from ID_ISAR4 register and compare output value with expected value

m33_stl_te299:

        ldr.w           r1, =M33_STL_TE299_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE299_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te299:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 299
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 279
//-----------------------------------------------------------------------------/

// This TE test ID_MMFR2 Register

// Read from ID_MMFR2 register and compare output value with expected value

m33_stl_te279:

        ldr.w           r1, =M33_STL_TE279_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE279_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te279:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 279
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 280
//-----------------------------------------------------------------------------/

// This TE test ID_MMFR0 Register

// Read from ID_MMFR0 register and compare output value with expected value

m33_stl_te280:

        ldr.w           r1, =M33_STL_TE280_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE280_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te280:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 280
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 294
//-----------------------------------------------------------------------------/

// This TE test MVFR2 Register

// Read from MVFR2 register and compare output value with expected value

m33_stl_te294:

        ldr.w           r1, =M33_STL_TE294_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE294_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te294:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 294
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 282
//-----------------------------------------------------------------------------/

// This TE test MVFR0 Register

// Read from MVFR0 register and compare output value with expected value

m33_stl_te282:

        ldr.w           r1, =M33_STL_TE282_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE282_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te282:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 282
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 283
//-----------------------------------------------------------------------------/

// This TE test MVFR1 Register

// Read from MVFR1 register and compare output value with expected value

m33_stl_te283:

        ldr.w           r1, =M33_STL_TE283_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE283_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te283:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 283
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 292
//-----------------------------------------------------------------------------/

// This TE test ID_DFR0 Register

// Read from ID_DFR0 register and compare output value with expected value

m33_stl_te292:

        ldr.w           r1, =M33_STL_TE292_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE292_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te292:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 292
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 285
//-----------------------------------------------------------------------------/

// This TE test ID_PFR1 Register

// Read from ID_PFR1 register and compare output value with expected value

m33_stl_te285:

        ldr.w           r1, =M33_STL_TE285_INPUT_VAL1

        ldr             r5, [r1]

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE285_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te285:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 285
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n065 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n065:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n065

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n065 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n065 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n065:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n065

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n065 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n065 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n065:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n065 PROCEDURE
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
