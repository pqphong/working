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

        .section .s_m33_stl_cpu_n033,"ax"
        .global m33_stl_cpu_n033
        .type m33_stl_cpu_n033, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n033,"ax"
        .global m33_stl_cpu_n033

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n033
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n033.asm"
        .section        .s_m33_stl_cpu_n033,"ax",%progbits
        .global         m33_stl_cpu_n033
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n033
        .global m33_stl_cpu_n033

        .align           4

#endif
m33_stl_cpu_n033:
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
        adr             r3, error_m33_stl_cpu_n033
#else
        adr.w           r3, error_m33_stl_cpu_n033
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 205
//-----------------------------------------------------------------------------/

// This TE tests SXTAB instruction

// GP Registers initialization with input value, SXTAB operation test and compare
// the output result with expected value

m33_stl_te205:

        ldr.w           r11, =M33_STL_TE205_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE205_INPUT_VAL1

        sxtab           r8, r11, r7, ror #M33_STL_TE205_INPUT_VAL2

        mov             r11, r8

        ldr.w           r12, =M33_STL_TE205_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r11, =M33_STL_TE205_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE205_INPUT_VAL3

        sxtab           r8, r11, r7, ror #M33_STL_TE205_INPUT_VAL4

        mov             r11, r8

        ldr.w           r12, =M33_STL_TE205_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE205_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE205_INPUT_VAL6

        sxtab           r11, r7, r8, ror #M33_STL_TE205_INPUT_VAL7

        ldr.w           r12, =M33_STL_TE205_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE205_INPUT_VAL8
        ldr.w           r8, =M33_STL_TE205_INPUT_VAL9

        sxtab           r11, r7, r8, ror #M33_STL_TE205_INPUT_VAL10

        ldr.w           r12, =M33_STL_TE205_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te205:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 205
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 206
//-----------------------------------------------------------------------------/

// This TE tests SXTAB16 instruction

// GP Registers initialization with input value, SXTAB16 operation test and compare
// the output result with expected value

m33_stl_te206:

        ldr.w           r11, =M33_STL_TE206_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE206_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE206_INPUT_VAL2

        sxtab16         r11, r7, r8, ror #M33_STL_TE206_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE206_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE206_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE206_INPUT_VAL4

        sxtab16         r11, r7, r8, ror #M33_STL_TE206_INPUT_VAL5

        ldr.w           r12, =M33_STL_TE206_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE206_INPUT_VAL6
        ldr.w           r8, =M33_STL_TE206_INPUT_VAL7

        sxtab16         r11, r7, r8, ror #M33_STL_TE206_INPUT_VAL8

        ldr.w           r12, =M33_STL_TE206_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE206_INPUT_VAL9
        ldr.w           r8, =M33_STL_TE206_INPUT_VAL10

        sxtab16         r11, r7, r8, ror #M33_STL_TE206_INPUT_VAL11

        ldr.w           r12, =M33_STL_TE206_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te206:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 206
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 207
//-----------------------------------------------------------------------------/

// This TE tests SXTAH instruction

// GP Registers initialization with input value, SXTAH operation test and compare
// the output result with expected value

m33_stl_te207:

        ldr.w           r11, =M33_STL_TE207_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE207_INPUT_VAL1

        sxtah           r8, r11, r7, ror #M33_STL_TE207_INPUT_VAL2

        mov             r11, r8

        ldr.w           r12, =M33_STL_TE207_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r11, =M33_STL_TE207_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE207_INPUT_VAL3

        sxtah           r8, r11, r7, ror #M33_STL_TE207_INPUT_VAL4

        mov             r11, r8

        ldr.w           r12, =M33_STL_TE207_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE207_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE207_INPUT_VAL6

        sxtah           r11, r7, r8, ror #M33_STL_TE207_INPUT_VAL10

        ldr.w           r12, =M33_STL_TE207_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE207_INPUT_VAL7
        ldr.w           r8, =M33_STL_TE207_INPUT_VAL8

        sxtah           r11, r7, r8, ror #M33_STL_TE207_INPUT_VAL9

        ldr.w           r12, =M33_STL_TE207_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te207:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 207
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 208
//-----------------------------------------------------------------------------/

// This TE tests SXTB instruction

// GP Registers initialization with input value, SXTB operation test and compare
// the output result with expected value

m33_stl_te208:

        ldr.w           r11, =M33_STL_TE208_INPUT_VAL2
        ldr.w           r7, =M33_STL_TE208_INPUT_VAL3

        sxtb            r11, r7, ror #M33_STL_TE208_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE208_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE208_INPUT_VAL1

        sxtb            r11, r7, ror #M33_STL_TE208_INPUT_VAL5

        ldr.w           r12, =M33_STL_TE208_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE208_INPUT_VAL6

        sxtb            r11, r7, ror #M33_STL_TE208_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE208_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te208:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 208
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 209
//-----------------------------------------------------------------------------/

// This TE tests SXTB16 instruction

// GP Registers initialization with input value, SXTB16 operation test and compare
// the output result with expected value

m33_stl_te209:

        ldr.w           r11, =M33_STL_TE209_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE209_INPUT_VAL2

        sxtb16          r11, r8, ror #M33_STL_TE209_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE209_EXP_VAL1

        bl              m33_stl_compare_gpr

        sxtb16          r11, r8, ror #M33_STL_TE209_INPUT_VAL5

        ldr.w           r12, =M33_STL_TE209_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r11, =M33_STL_TE209_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE209_INPUT_VAL7

        sxtb16          r11, r8, ror #M33_STL_TE209_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE209_EXP_VAL3

        bl              m33_stl_compare_gpr

        sxtb16          r11, r8, ror #M33_STL_TE209_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE209_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te209:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 209
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 210
//-----------------------------------------------------------------------------/

// This TE tests SXTH instruction

// GP Registers initialization with input value, SXTH operation test and compare
// the output result with expected value

m33_stl_te210:

        ldr.w           r11, =M33_STL_TE210_INPUT_VAL1

        ldr.w           r10, =M33_STL_TE210_INPUT_VAL2

#ifdef TASKING
        sxth            r11, r10
#else
        sxth.w          r11, r10
#endif

        ldr.w           r12, =M33_STL_TE210_EXP_VAL1

        bl              m33_stl_compare_gpr

        sxth            r11, r10, ror #M33_STL_TE210_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE210_EXP_VAL2

        bl              m33_stl_compare_gpr

        sxth            r11, r10, ror #M33_STL_TE210_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE210_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te210:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 210
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n033 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n033:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n033

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n033 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n033 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n033:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n033

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n033 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n033 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n033:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n033 PROCEDURE
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
