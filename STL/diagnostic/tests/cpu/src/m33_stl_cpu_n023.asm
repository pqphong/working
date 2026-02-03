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

        .section .s_m33_stl_cpu_n023,"ax"
        .global m33_stl_cpu_n023
        .type m33_stl_cpu_n023, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n023,"ax"
        .global m33_stl_cpu_n023

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n023
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n023.asm"
        .section        .s_m33_stl_cpu_n023,"ax",%progbits
        .global         m33_stl_cpu_n023
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n023
        .global m33_stl_cpu_n023

        .align           4

#endif
m33_stl_cpu_n023:
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
        adr             r3, error_m33_stl_cpu_n023
#else
        adr.w           r3, error_m33_stl_cpu_n023
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 133
//-----------------------------------------------------------------------------/

// This TE tests ASR instruction

// GP Registers initialization with input value, ASR operation test and compare
// the output result with expected value.

m33_stl_te133:

        ldr.w           r5, =M33_STL_TE133_INPUT_VAL1

#ifdef  TASKING
        asr             r11, r5, #M33_STL_TE133_INPUT_VAL2
#else
        asr.w           r11, r5, #M33_STL_TE133_INPUT_VAL2
#endif

        ldr.w           r12, =M33_STL_TE133_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE133_INPUT_VAL4

#ifdef  TASKING
        asr             r11, r5, #M33_STL_TE133_INPUT_VAL6
#else
        asr.w           r11, r5, #M33_STL_TE133_INPUT_VAL6
#endif

        ldr.w           r12, =M33_STL_TE133_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE133_INPUT_VAL1

        asr             r11, r5, #M33_STL_TE133_INPUT_VAL5

        ldr.w           r12, =M33_STL_TE133_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r11, =M33_STL_TE133_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE133_INPUT_VAL6

#ifdef  TASKING
        asr             r11, r11, r6
#else
        asr             r11, r11, r6
#endif

        ldr.w           r12, =M33_STL_TE133_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE133_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE133_INPUT_VAL5

        asr             r11, r5, r6

        ldr.w           r12, =M33_STL_TE133_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE133_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE133_INPUT_VAL7

        asr             r11, r5, r6

        ldr.w           r12, =M33_STL_TE133_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te133:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 133
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 135
//-----------------------------------------------------------------------------/

// This TE tests ASRS (Register) instruction

// GP Registers initialization with input value, write in APSR register,
// ASRS operation test, read from APSR register and compare
// and compare the output result with expected value

m33_stl_te135:

        ldr.w           r4, =M33_STL_TE135_INPUT_VAL7
        ldr.w           r1, =M33_STL_TE135_MASK_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE135_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE135_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE135_INPUT_VAL2

#ifdef TASKING
        asrs            r7, r5, r6
#else
        asrs.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE135_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE135_EXP_VAL1

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE135_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE135_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE135_INPUT_VAL2

#ifdef TASKING
        asrs            r7, r5, r6
#else
        asrs.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE135_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE135_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE135_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE135_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE135_INPUT_VAL4

#ifdef TASKING
        asrs            r7, r5, r6
#else
        asrs.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE135_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE135_EXP_VAL3

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE135_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE135_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE135_INPUT_VAL4

#ifdef TASKING
        asrs            r7, r5, r6
#else
        asrs.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE135_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE135_EXP_VAL4

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE135_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE135_INPUT_VAL1

#ifdef TASKING
        asrs            r7, r5, #M33_STL_TE135_INPUT_VAL5
#else
        asrs.w          r7, r5, #M33_STL_TE135_INPUT_VAL5
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE135_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE135_EXP_VAL5

        mov             r11, r7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE135_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE135_INPUT_VAL3

#ifdef TASKING
        asrs            r7, r5, #M33_STL_TE135_INPUT_VAL6
#else
        asrs.w          r7, r5, #M33_STL_TE135_INPUT_VAL6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE135_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE135_EXP_VAL6

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE135_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE135_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE135_INPUT_VAL7

#ifdef TASKING
        asrs            r7, r5, r6
#else
        asrs.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE135_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE135_EXP_VAL7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE135_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE135_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE135_INPUT_VAL8

#ifdef TASKING
        asrs            r7, r5, r6
#else
        asrs.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE135_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE135_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te135:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 135
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 149
//-----------------------------------------------------------------------------/

// This TE tests LSL (Immediate) instruction

// GP Registers initialization with input value, LSL operation test and compare
// the output result with expected value.

m33_stl_te149:

        ldr.w           r5, =M33_STL_TE149_INPUT_VAL1

        lsl             r11, r5, #M33_STL_TE149_INPUT_VAL2

        ldr.w           r12, =M33_STL_TE149_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE149_INPUT_VAL3

        lsl             r11, r5, #M33_STL_TE149_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE149_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE149_INPUT_VAL3

#ifdef TASKING
        lsl             r11, r5, #M33_STL_TE149_INPUT_VAL5
#else
        lsl.w           r11, r5, #M33_STL_TE149_INPUT_VAL5
#endif

        ldr.w           r12, =M33_STL_TE149_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te149:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 149
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 150
//-----------------------------------------------------------------------------/

// This TE tests LSL (Register) instruction

// GP Registers initialization with input value, LSL operation test and compare
// the output result with expected value.

m33_stl_te150:

        ldr.w           r6, =M33_STL_TE150_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE150_INPUT_VAL2

        lsl             r11, r6, r7

        ldr.w           r12, =M33_STL_TE150_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE150_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE150_INPUT_VAL4

        lsl             r11, r6, r7

        ldr.w           r12, =M33_STL_TE150_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE150_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE150_INPUT_VAL5

#ifdef TASKING
        lsl             r11, r6, r7
#else
        lsl.w           r11, r6, r7
#endif

        ldr.w           r12, =M33_STL_TE150_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE150_INPUT_VAL6
        ldr.w           r7, =M33_STL_TE150_INPUT_VAL7

#ifdef TASKING
        lsl             r11, r6, r7
#else
        lsl.w           r11, r6, r7
#endif

        ldr.w           r12, =M33_STL_TE150_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te150:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 150
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 151
//-----------------------------------------------------------------------------/

// This TE tests LSLS instruction

// GP Registers initialization with input value, write in APSR register,
// LSLS operation test, read from APSR register and compare
// and compare the output result with expected value

m33_stl_te151:

        ldr.w           r4, =M33_STL_TE151_INPUT_VAL7
        ldr.w           r1, =M33_STL_TE151_MASK_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE151_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE151_INPUT_VAL1

#ifdef TASKING
        lsls            r7, r5, #M33_STL_TE151_INPUT_VAL2
#else
        lsls.w          r7, r5, #M33_STL_TE151_INPUT_VAL2
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE151_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE151_EXP_VAL1

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE151_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE151_INPUT_VAL3

#ifdef TASKING
        lsls            r7, r5, #M33_STL_TE151_INPUT_VAL2
#else
        lsls.w          r7, r5, #M33_STL_TE151_INPUT_VAL2
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE151_EXP_VAL12

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE151_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE151_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE151_INPUT_VAL1

#ifdef TASKING
        lsls            r7, r5, #M33_STL_TE151_INPUT_VAL4
#else
        lsls.w          r7, r5, #M33_STL_TE151_INPUT_VAL4
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE151_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE151_EXP_VAL3

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE151_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE151_INPUT_VAL3

#ifdef TASKING
        lsls            r7, r5, #M33_STL_TE151_INPUT_VAL4
#else
        lsls.w          r7, r5, #M33_STL_TE151_INPUT_VAL4
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE151_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE151_EXP_VAL4

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE151_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE151_INPUT_VAL1

#ifdef TASKING
        lsls            r7, r5, #M33_STL_TE151_INPUT_VAL5
#else
        lsls.w          r7, r5, #M33_STL_TE151_INPUT_VAL5
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE151_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE151_EXP_VAL5

        mov             r11, r7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE151_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE151_INPUT_VAL3

#ifdef TASKING
        lsls            r7, r5, #M33_STL_TE151_INPUT_VAL6
#else
        lsls.w          r7, r5, #M33_STL_TE151_INPUT_VAL6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE151_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE151_EXP_VAL6

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE151_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE151_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE151_INPUT_VAL7

#ifdef TASKING
        lsls            r7, r5, r6
#else
        lsls.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE151_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE151_EXP_VAL7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE151_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE151_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE151_INPUT_VAL8

#ifdef TASKING
        lsls            r7, r5, r6
#else
        lsls.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE151_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE151_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te151:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 151
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 152
//-----------------------------------------------------------------------------/

// This TE tests LSR (Immediate) instruction

// GP Registers initialization with input value, LSR operation test and compare
// the output result with expected value.

m33_stl_te152:

        ldr.w           r5, =M33_STL_TE152_INPUT_VAL1

        lsr             r11, r5, #M33_STL_TE152_INPUT_VAL2

        ldr.w           r12, =M33_STL_TE152_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE152_INPUT_VAL3

        lsr             r11, r5, #M33_STL_TE152_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE152_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE152_INPUT_VAL3

#ifdef TASKING
        lsr             r11, r5, #M33_STL_TE152_INPUT_VAL5
#else
        lsr.w           r11, r5, #M33_STL_TE152_INPUT_VAL5
#endif

        ldr.w           r12, =M33_STL_TE152_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te152:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 152
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 153
//-----------------------------------------------------------------------------/

// This TE tests LSR (Register) instruction

// GP Registers initialization with input value, LSR operation test and compare
// the output result with expected value.

m33_stl_te153:

        ldr.w           r9, =M33_STL_TE153_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE153_INPUT_VAL2

        lsr             r11, r8, r9

        ldr.w           r12, =M33_STL_TE153_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE153_INPUT_VAL3

        lsr             r11, r8, r9

        ldr.w           r12, =M33_STL_TE153_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE153_INPUT_VAL4

        lsr             r11, r8, r9

        ldr.w           r12, =M33_STL_TE153_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE153_INPUT_VAL5
        ldr.w           r9, =M33_STL_TE153_INPUT_VAL6

        lsr             r11, r8, r9

        ldr.w           r12, =M33_STL_TE153_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te153:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 153
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 154
//-----------------------------------------------------------------------------/

// This TE tests LSRS instruction

// GP Registers initialization with input value, write in APSR register,
// LSRS operation test, read from APSR register and compare
// and compare the output result with expected value

m33_stl_te154:

        ldr.w           r4, =M33_STL_TE154_INPUT_VAL7
        ldr.w           r1, =M33_STL_TE154_MASK_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE154_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE154_INPUT_VAL1

#ifdef TASKING
        lsrs            r7, r5, #M33_STL_TE154_INPUT_VAL2
#else
        lsrs.w          r7, r5, #M33_STL_TE154_INPUT_VAL2
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE154_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE154_EXP_VAL1

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE154_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE154_INPUT_VAL3

#ifdef TASKING
        lsrs            r7, r5, #M33_STL_TE154_INPUT_VAL2
#else
        lsrs.w          r7, r5, #M33_STL_TE154_INPUT_VAL2
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE154_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE154_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE154_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE154_INPUT_VAL1

#ifdef TASKING
        lsrs            r7, r5, #M33_STL_TE154_INPUT_VAL4
#else
        lsrs.w          r7, r5, #M33_STL_TE154_INPUT_VAL4
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE154_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE154_EXP_VAL3

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE154_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE154_INPUT_VAL3

#ifdef TASKING
        lsrs            r7, r5, #M33_STL_TE154_INPUT_VAL4
#else
        lsrs.w          r7, r5, #M33_STL_TE154_INPUT_VAL4
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE154_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE154_EXP_VAL4

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE154_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE154_INPUT_VAL1

#ifdef TASKING
        lsrs            r7, r5, #M33_STL_TE154_INPUT_VAL5
#else
        lsrs.w          r7, r5, #M33_STL_TE154_INPUT_VAL5
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE154_EXP_VAL8

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE154_EXP_VAL5

        mov             r11, r7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE154_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE154_INPUT_VAL3

#ifdef TASKING
        lsrs            r7, r5, #M33_STL_TE154_INPUT_VAL6
#else
        lsrs.w          r7, r5, #M33_STL_TE154_INPUT_VAL6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE154_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE154_EXP_VAL6

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE154_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE154_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE154_INPUT_VAL7

#ifdef TASKING
        lsrs            r7, r5, r6
#else
        lsrs.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE154_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE154_EXP_VAL7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE154_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE154_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE154_INPUT_VAL8

#ifdef TASKING
        lsrs            r7, r5, r6
#else
        lsrs.w          r7, r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE154_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE154_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te154:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 154
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n023 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n023:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n023

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n023 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n023 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n023:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n023

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n023 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n023 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n023:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n023 PROCEDURE
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
