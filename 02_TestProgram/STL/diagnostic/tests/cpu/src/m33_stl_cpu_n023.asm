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

        .section .s_m33_stl_cpu_n023,"ax"
        .global m33_stl_cpu_n023
        .type m33_stl_cpu_n023, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n023,"ax"
        .global m33_stl_cpu_n023

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

        adr             r3, error_m33_stl_cpu_n023

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 133
//-----------------------------------------------------------------------------/

// This TE tests ASR instruction

// GP Registers initialization with input value, ASR operation test and compare
// the output result with expected value.

m33_stl_te133:

        ldr             r5, =M33_STL_TE133_INPUT_VAL1

        asr.w           r11, r5, #M33_STL_TE133_INPUT_VAL2

        ldr             r12, =M33_STL_TE133_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE133_INPUT_VAL4

        asr.w           r11, r5, #M33_STL_TE133_INPUT_VAL6

        ldr             r12, =M33_STL_TE133_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE133_INPUT_VAL1

        asr             r11, r5, #M33_STL_TE133_INPUT_VAL5

        ldr             r12, =M33_STL_TE133_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE133_INPUT_VAL1
        ldr             r6, =M33_STL_TE133_INPUT_VAL6

        asr.w           r11, r6

        ldr             r12, =M33_STL_TE133_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE133_INPUT_VAL3
        ldr             r6, =M33_STL_TE133_INPUT_VAL5

        asr             r11, r5, r6

        ldr             r12, =M33_STL_TE133_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE133_INPUT_VAL1
        ldr             r6, =M33_STL_TE133_INPUT_VAL7

        asr             r11, r5, r6

        ldr             r12, =M33_STL_TE133_EXP_VAL5

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

        ldr             r4, =M33_STL_TE135_INPUT_VAL7
        ldr             r1, =M33_STL_TE135_MASK_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE135_INPUT_VAL1
        ldr             r6, =M33_STL_TE135_INPUT_VAL2

        asrs.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE135_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE135_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE135_INPUT_VAL3
        ldr             r6, =M33_STL_TE135_INPUT_VAL2

        asrs.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE135_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE135_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE135_INPUT_VAL1
        ldr             r6, =M33_STL_TE135_INPUT_VAL4

        asrs.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE135_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE135_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE135_INPUT_VAL3
        ldr             r6, =M33_STL_TE135_INPUT_VAL4

        asrs.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE135_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE135_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE135_INPUT_VAL1

        asrs.w          r7, r5, #M33_STL_TE135_INPUT_VAL5

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE135_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr             r12, =M33_STL_TE135_EXP_VAL5

        mov             r11, r7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE135_INPUT_VAL3

        asrs.w          r7, r5, #M33_STL_TE135_INPUT_VAL6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE135_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE135_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE135_INPUT_VAL1
        ldr             r6, =M33_STL_TE135_INPUT_VAL7

        asrs.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE135_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE135_EXP_VAL7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE135_INPUT_VAL3
        ldr             r6, =M33_STL_TE135_INPUT_VAL8

        asrs.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE135_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE135_EXP_VAL8

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

        ldr             r5, =M33_STL_TE149_INPUT_VAL1

        lsl             r11, r5, M33_STL_TE149_INPUT_VAL2

        ldr             r12, =M33_STL_TE149_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE149_INPUT_VAL3

        lsl             r11, r5, M33_STL_TE149_INPUT_VAL4

        ldr             r12, =M33_STL_TE149_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE149_INPUT_VAL3

        lsl.w           r11, r5, M33_STL_TE149_INPUT_VAL5

        ldr             r12, =M33_STL_TE149_EXP_VAL2

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

        ldr             r6, =M33_STL_TE150_INPUT_VAL1
        ldr             r7, =M33_STL_TE150_INPUT_VAL2

        lsl             r11, r6, r7

        ldr             r12, =M33_STL_TE150_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE150_INPUT_VAL3
        ldr             r7, =M33_STL_TE150_INPUT_VAL4

        lsl             r11, r6, r7

        ldr             r12, =M33_STL_TE150_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE150_INPUT_VAL3
        ldr             r7, =M33_STL_TE150_INPUT_VAL5

        lsl.w           r11, r6, r7

        ldr             r12, =M33_STL_TE150_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE150_INPUT_VAL6
        ldr             r7, =M33_STL_TE150_INPUT_VAL7

        lsl.w           r11, r6, r7

        ldr             r12, =M33_STL_TE150_EXP_VAL4

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

        ldr             r4, =M33_STL_TE151_INPUT_VAL7
        ldr             r1, =M33_STL_TE151_MASK_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE151_INPUT_VAL1

        lsls.w          r7, r5, M33_STL_TE151_INPUT_VAL2

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE151_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE151_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE151_INPUT_VAL3

        lsls.w          r7, r5, M33_STL_TE151_INPUT_VAL2

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE151_EXP_VAL12

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE151_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE151_INPUT_VAL1

        lsls.w          r7, r5, M33_STL_TE151_INPUT_VAL4

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE151_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE151_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE151_INPUT_VAL3

        lsls.w          r7, r5, M33_STL_TE151_INPUT_VAL4

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE151_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE151_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE151_INPUT_VAL1

        lsls.w          r7, r5, #M33_STL_TE151_INPUT_VAL5

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE151_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr             r12, =M33_STL_TE151_EXP_VAL5

        mov             r11, r7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE151_INPUT_VAL3

        lsls.w          r7, r5, #M33_STL_TE151_INPUT_VAL6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE151_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE151_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE151_INPUT_VAL1
        ldr             r6, =M33_STL_TE151_INPUT_VAL7

        lsls.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE151_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE151_EXP_VAL7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE151_INPUT_VAL3
        ldr             r6, =M33_STL_TE151_INPUT_VAL8

        lsls.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE151_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE151_EXP_VAL8

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

        ldr             r5, =M33_STL_TE152_INPUT_VAL1

        lsr             r11, r5, M33_STL_TE152_INPUT_VAL2

        ldr             r12, =M33_STL_TE152_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE152_INPUT_VAL3

        lsr             r11, r5, M33_STL_TE152_INPUT_VAL4

        ldr             r12, =M33_STL_TE152_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE152_INPUT_VAL3

        lsr.w           r11, r5, M33_STL_TE152_INPUT_VAL5

        ldr             r12, =M33_STL_TE152_EXP_VAL2

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

        ldr             r9, =M33_STL_TE153_INPUT_VAL1
        ldr             r8, =M33_STL_TE153_INPUT_VAL2

        lsr             r11, r8, r9

        ldr             r12, =M33_STL_TE153_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE153_INPUT_VAL3

        lsr             r11, r8, r9

        ldr             r12, =M33_STL_TE153_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE153_INPUT_VAL4

        lsr             r11, r8, r9

        ldr             r12, =M33_STL_TE153_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE153_INPUT_VAL5
        ldr             r9, =M33_STL_TE153_INPUT_VAL6

        lsr             r11, r8, r9

        ldr             r12, =M33_STL_TE153_EXP_VAL3

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

        ldr             r4, =M33_STL_TE154_INPUT_VAL7
        ldr             r1, =M33_STL_TE154_MASK_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE154_INPUT_VAL1

        lsrs.w          r7, r5, M33_STL_TE154_INPUT_VAL2

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE154_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE154_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE154_INPUT_VAL3

        lsrs.w          r7, r5, M33_STL_TE154_INPUT_VAL2

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE154_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE154_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE154_INPUT_VAL1

        lsrs.w          r7, r5, M33_STL_TE154_INPUT_VAL4

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE154_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE154_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE154_INPUT_VAL3

        lsrs.w          r7, r5, M33_STL_TE154_INPUT_VAL4

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE154_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE154_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE154_INPUT_VAL1

        lsrs.w          r7, r5, #M33_STL_TE154_INPUT_VAL5

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE154_EXP_VAL8

        bl              m33_stl_compare_gpr

        ldr             r12, =M33_STL_TE154_EXP_VAL5

        mov             r11, r7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE154_INPUT_VAL3

        lsrs.w          r7, r5, #M33_STL_TE154_INPUT_VAL6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE154_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE154_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE154_INPUT_VAL1
        ldr             r6, =M33_STL_TE154_INPUT_VAL7

        lsrs.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE154_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE154_EXP_VAL7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE154_INPUT_VAL3
        ldr             r6, =M33_STL_TE154_INPUT_VAL8

        lsrs.w          r7, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE154_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE154_EXP_VAL8

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

        .align 4
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
#ifdef __GHS__
        .align          8
        .end
#endif
#ifdef GCC_COMPILER
        .align          8
        .end
#endif
        end
