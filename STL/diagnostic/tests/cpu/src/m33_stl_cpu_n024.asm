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

        .section .s_m33_stl_cpu_n024,"ax"
        .global m33_stl_cpu_n024
        .type m33_stl_cpu_n024, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n024,"ax"
        .global m33_stl_cpu_n024

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n024
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n024.asm"
        .section        .s_m33_stl_cpu_n024,"ax",%progbits
        .global         m33_stl_cpu_n024
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n024
        .global m33_stl_cpu_n024

        .align           4

#endif
m33_stl_cpu_n024:
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
        adr             r3, error_m33_stl_cpu_n024
#else
        adr.w           r3, error_m33_stl_cpu_n024
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 132
//-----------------------------------------------------------------------------/

// This TE tests AND instruction

// GP Registers initialization with input value, write in APSR register,
// AND operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te132:

        ldr.w           r4, =M33_STL_TE132_INPUT_VAL7
        ldr.w           r1, =M33_STL_TE132_MASK_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE132_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE132_INPUT_VAL1

        ands            r5, r5, #M33_STL_TE132_INPUT_VAL2

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE132_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE132_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE132_INPUT_VAL3

        and             r11, r5, #M33_STL_TE132_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE132_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE132_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE132_INPUT_VAL6

        and             r11, r5, r6, rrx

        ldr.w           r12, =M33_STL_TE132_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE132_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE132_INPUT_VAL6

        and             r11, r5, r6, asr #M33_STL_TE132_INPUT_VAL9

        ldr.w           r12, =M33_STL_TE132_EXP_VAL6

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE132_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE132_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE132_INPUT_VAL5

        ands            r5, r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE132_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE132_EXP_VAL8

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE132_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE132_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE132_INPUT_VAL6

        ands            r5, r5, r6, ror #M33_STL_TE132_INPUT_VAL8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE132_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE132_EXP_VAL8

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE132_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE132_INPUT_VAL10
        ldr.w           r6, =M33_STL_TE132_INPUT_VAL10

#ifdef TASKING
        ands            r5, r5, r6
#else
        ands.w          r5, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE132_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE132_EXP_VAL10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE132_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE132_INPUT_VAL7
        ldr.w           r6, =M33_STL_TE132_INPUT_VAL10

#ifdef TASKING
        ands            r5, r5, r6
#else
        ands.w          r5, r5, r6
#endif
        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE132_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE132_EXP_VAL1

        bl              m33_stl_compare_gpr

m33_stl_close_te132:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 132
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 143
//-----------------------------------------------------------------------------/

// This TE tests EOR instruction

// GP Registers initialization with input value, write in APSR register,
// EOR operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te143:

        ldr.w           r4, =M33_STL_TE143_INPUT_VAL9
        ldr.w           r1, =M33_STL_TE143_MASK_VAL1

        ldr.w           r7, =M33_STL_TE143_INPUT_VAL2

        ldr.w           r6, =M33_STL_TE143_INPUT_VAL2

        eor             r11, r7, #M33_STL_TE143_INPUT_VAL1
        eor             r10, r6, #M33_STL_TE143_INPUT_VAL1

        ldr.w           r12, =M33_STL_TE143_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE143_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE143_INPUT_VAL3

        eor             r11, r7, #M33_STL_TE143_INPUT_VAL4
        eor             r10, r6, #M33_STL_TE143_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE143_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE143_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r7, =M33_STL_TE143_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE143_INPUT_VAL5

        eors            r5, r7, #M33_STL_TE143_INPUT_VAL6
        eors            r10, r6, #M33_STL_TE143_INPUT_VAL6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE143_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE143_EXP_VAL3

        mov             r11, r5

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE143_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE143_INPUT_VAL6

        eor             r11, r5, r6, rrx

        ldr.w           r12, =M33_STL_TE143_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE143_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE143_INPUT_VAL6

        eor             r11, r5, r6, lsr #M33_STL_TE143_INPUT_VAL10

        ldr.w           r12, =M33_STL_TE143_EXP_VAL8

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE143_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE143_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE143_INPUT_VAL5

        eors            r5, r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE143_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE143_EXP_VAL11

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE143_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE143_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE143_INPUT_VAL6

        eors            r5, r5, r6, lsl #M33_STL_TE143_INPUT_VAL11

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE143_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE143_EXP_VAL12

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE143_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE143_INPUT_VAL9
        ldr.w           r6, =M33_STL_TE143_INPUT_VAL9

#ifdef TASKING
        eors            r5, r5, r6
#else
        eors.w          r5, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE143_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE143_EXP_VAL10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE143_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE143_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE143_INPUT_VAL7

        eors            r5, r5, r6, ror #M33_STL_TE143_INPUT_VAL12

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE143_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE143_EXP_VAL5

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE143_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE143_INPUT_VAL9
        ldr.w           r6, =M33_STL_TE143_INPUT_VAL9

#ifdef TASKING
        eors            r5, r5, r6
#else
        eors.w          r5, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE143_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE143_EXP_VAL10

        bl              m33_stl_compare_gpr

m33_stl_close_te143:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 143
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 158
//-----------------------------------------------------------------------------/

// This TE tests ORN instruction

// GP Registers initialization with input value, write in APSR register,
// ORN operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te158:

        ldr.w           r4, =M33_STL_TE158_INPUT_VAL3
        ldr.w           r4, =M33_STL_TE158_MASK_VAL1

        ldr.w           r6, =M33_STL_TE158_INPUT_VAL1
        ldr.w           r5, =M33_STL_TE158_INPUT_VAL1

        orn             r11, r6, #M33_STL_TE158_INPUT_VAL3
        orn             r10, r5, #M33_STL_TE158_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE158_INPUT_VAL2
        ldr.w           r5, =M33_STL_TE158_INPUT_VAL2

        orn             r11, r6, #M33_STL_TE158_INPUT_VAL3
        orn             r10, r5, #M33_STL_TE158_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE158_INPUT_VAL10
        ldr.w           r5, =M33_STL_TE158_MASK_VAL1
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE158_INPUT_VAL3
        ldr.w           r5, =M33_STL_TE158_INPUT_VAL3
        ldr.w           r10, =M33_STL_TE158_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE158_INPUT_VAL1

        orns            r8, r6, #M33_STL_TE158_INPUT_VAL4
        orns            r10, r5, #M33_STL_TE158_INPUT_VAL4

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE158_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr.w           r12, =M33_STL_TE158_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE158_INPUT_VAL10
        ldr.w           r5, =M33_STL_TE158_MASK_VAL1
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE158_INPUT_VAL3

        orns            r8, r6, #M33_STL_TE158_INPUT_VAL3

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE158_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr.w           r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE158_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE158_INPUT_VAL2

        orn             r11, r5, r6, rrx

        ldr.w           r12, =M33_STL_TE158_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE158_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE158_INPUT_VAL4

        orn             r11, r5, r6, lsr #M33_STL_TE158_INPUT_VAL7

        ldr.w           r12, =M33_STL_TE158_EXP_VAL8

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE158_INPUT_VAL10
        ldr.w           r5, =M33_STL_TE158_MASK_VAL1
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE158_INPUT_VAL4
        ldr.w           r6, =M33_STL_TE158_INPUT_VAL5

        orns            r5, r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE158_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE158_INPUT_VAL10
        ldr.w           r5, =M33_STL_TE158_MASK_VAL1
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE158_INPUT_VAL4
        ldr.w           r6, =M33_STL_TE158_INPUT_VAL6

        orns            r5, r5, r6, lsl #M33_STL_TE158_INPUT_VAL8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE158_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE158_INPUT_VAL10
        ldr.w           r5, =M33_STL_TE158_MASK_VAL1
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE158_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE158_INPUT_VAL3

#ifdef TASKING
        orns            r5, r5, r6
#else
        orns.w          r5, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE158_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE158_INPUT_VAL10
        ldr.w           r5, =M33_STL_TE158_MASK_VAL1
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE158_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE158_INPUT_VAL6

        orns            r5, r5, r6, ror #M33_STL_TE158_INPUT_VAL9

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE158_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE158_EXP_VAL3

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE158_INPUT_VAL10
        ldr.w           r5, =M33_STL_TE158_MASK_VAL1
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE158_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE158_INPUT_VAL4

#ifdef TASKING
        orns            r5, r5, r6
#else
        orns.w          r5, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE158_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE158_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te158:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 158
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 160
//-----------------------------------------------------------------------------/

// This TE tests ORR instruction

// GP Registers initialization with input value, write in APSR register,
// ORR operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te160:

        ldr.w           r4, =M33_STL_TE160_INPUT_VAL3
        ldr.w           r1, =M33_STL_TE160_MASK_VAL1

        ldr.w           r6, =M33_STL_TE160_INPUT_VAL14

        orr             r11, r6, #M33_STL_TE160_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE160_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE160_INPUT_VAL15

        orr             r11, r6, #M33_STL_TE160_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE160_EXP_VAL8

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE160_INPUT_VAL13
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE160_INPUT_VAL3

        orrs            r8, r6, #M33_STL_TE160_INPUT_VAL12

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE160_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr.w           r12, =M33_STL_TE160_EXP_VAL10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE160_INPUT_VAL13
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE160_INPUT_VAL3

        orrs            r8, r6, #M33_STL_TE160_INPUT_VAL3

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE160_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr.w           r12, =M33_STL_TE160_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE160_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE160_INPUT_VAL2

        ldr.w           r7, =M33_STL_TE160_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE160_INPUT_VAL2

        orr             r11, r5, r6, lsl #M33_STL_TE160_INPUT_VAL3
        orr             r10, r7, r8, lsl #M33_STL_TE160_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE160_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE160_INPUT_VAL4
        ldr.w           r6, =M33_STL_TE160_INPUT_VAL5

        ldr.w           r7, =M33_STL_TE160_INPUT_VAL4
        ldr.w           r8, =M33_STL_TE160_INPUT_VAL5

        orr             r11, r5, r6, lsl #M33_STL_TE160_INPUT_VAL6
        orr             r10, r7, r8, lsl #M33_STL_TE160_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE160_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE160_INPUT_VAL13
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE160_INPUT_VAL7
        ldr.w           r6, =M33_STL_TE160_INPUT_VAL8

        ldr.w           r7, =M33_STL_TE160_INPUT_VAL7
        ldr.w           r8, =M33_STL_TE160_INPUT_VAL8

        orrs            r9, r5, r6, lsr #M33_STL_TE160_INPUT_VAL9
        orrs            r10, r7, r8, lsr #M33_STL_TE160_INPUT_VAL9

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE160_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE160_EXP_VAL3

        mov             r11, r9

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE160_INPUT_VAL13
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE160_INPUT_VAL10
        ldr.w           r6, =M33_STL_TE160_INPUT_VAL11

        ldr.w           r7, =M33_STL_TE160_INPUT_VAL10
        ldr.w           r8, =M33_STL_TE160_INPUT_VAL11

#ifdef TASKING
        orrs            r9, r5, r6
        orrs            r10, r7, r8
#else
        orrs.w          r9, r5, r6
        orrs.w          r10, r7, r8
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE160_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE160_EXP_VAL4

        mov             r11, r9

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE160_INPUT_VAL13
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r7, =M33_STL_TE160_INPUT_VAL3
        ldr.w           r8, =M33_STL_TE160_INPUT_VAL3

#ifdef TASKING
        orrs            r9, r7, r8
#else
        orrs.w          r9, r7, r8
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE160_EXP_VAL11

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE160_EXP_VAL5

        mov             r11, r9

        bl              m33_stl_compare_gpr

m33_stl_close_te160:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 160
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n024 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n024:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n024

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n024 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n024 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n024:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n024

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n024 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n024 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n024:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n024 PROCEDURE
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
