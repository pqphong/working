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

        .section .s_m33_stl_cpu_n024,"ax"
        .global m33_stl_cpu_n024
        .type m33_stl_cpu_n024, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n024,"ax"
        .global m33_stl_cpu_n024

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

        adr             r3, error_m33_stl_cpu_n024

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 132
//-----------------------------------------------------------------------------/

// This TE tests AND instruction

// GP Registers initialization with input value, write in APSR register,
// AND operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te132:

        ldr             r4, =M33_STL_TE132_INPUT_VAL7
        ldr             r1, =M33_STL_TE132_MASK_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE132_INPUT_VAL1

        ands            r5, r5, M33_STL_TE132_INPUT_VAL2

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE132_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE132_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE132_INPUT_VAL3

        and             r11, r5, M33_STL_TE132_INPUT_VAL4

        ldr             r12, =M33_STL_TE132_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE132_INPUT_VAL5
        ldr             r6, =M33_STL_TE132_INPUT_VAL6

        and             r11, r5, r6, rrx

        ldr             r12, =M33_STL_TE132_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE132_INPUT_VAL1
        ldr             r6, =M33_STL_TE132_INPUT_VAL6

        and             r11, r5, r6, asr #M33_STL_TE132_INPUT_VAL9

        ldr             r12, =M33_STL_TE132_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE132_INPUT_VAL3
        ldr             r6, =M33_STL_TE132_INPUT_VAL5

        ands            r5, r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE132_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE132_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE132_INPUT_VAL3
        ldr             r6, =M33_STL_TE132_INPUT_VAL6

        ands            r5, r5, r6, ror #M33_STL_TE132_INPUT_VAL8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE132_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE132_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE132_INPUT_VAL10
        ldr             r6, =M33_STL_TE132_INPUT_VAL10

        ands.w          r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE132_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE132_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE132_INPUT_VAL7
        ldr             r6, =M33_STL_TE132_INPUT_VAL10

        ands.w          r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE132_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE132_EXP_VAL1

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

        ldr             r4, =M33_STL_TE143_INPUT_VAL9
        ldr             r1, =M33_STL_TE143_MASK_VAL1

        ldr             r7, =M33_STL_TE143_INPUT_VAL2

        ldr             r6, =M33_STL_TE143_INPUT_VAL2

        eor             r11, r7, #M33_STL_TE143_INPUT_VAL1
        eor             r10, r6, #M33_STL_TE143_INPUT_VAL1

        ldr             r12, =M33_STL_TE143_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE143_INPUT_VAL3
        ldr             r6, =M33_STL_TE143_INPUT_VAL3

        eor             r11, r7, #M33_STL_TE143_INPUT_VAL4
        eor             r10, r6, #M33_STL_TE143_INPUT_VAL4

        ldr             r12, =M33_STL_TE143_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r7, =M33_STL_TE143_INPUT_VAL5
        ldr             r6, =M33_STL_TE143_INPUT_VAL5

        eors            r5, r7, #M33_STL_TE143_INPUT_VAL6
        eors            r10, r6, #M33_STL_TE143_INPUT_VAL6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE143_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr             r12, =M33_STL_TE143_EXP_VAL3

        mov             r11, r5

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE143_INPUT_VAL5
        ldr             r6, =M33_STL_TE143_INPUT_VAL6

        eor             r11, r5, r6, rrx

        ldr             r12, =M33_STL_TE143_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE143_INPUT_VAL1
        ldr             r6, =M33_STL_TE143_INPUT_VAL6

        eor             r11, r5, r6, lsr #M33_STL_TE143_INPUT_VAL10

        ldr             r12, =M33_STL_TE143_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE143_INPUT_VAL3
        ldr             r6, =M33_STL_TE143_INPUT_VAL5

        eors            r5, r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE143_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE143_EXP_VAL11

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE143_INPUT_VAL3
        ldr             r6, =M33_STL_TE143_INPUT_VAL6

        eors            r5, r5, r6, lsl #M33_STL_TE143_INPUT_VAL11

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE143_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE143_EXP_VAL12

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE143_INPUT_VAL9
        ldr             r6, =M33_STL_TE143_INPUT_VAL9

        eors.w          r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE143_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE143_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE143_INPUT_VAL2
        ldr             r6, =M33_STL_TE143_INPUT_VAL7

        eors            r5, r5, r6, ror #M33_STL_TE143_INPUT_VAL12

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE143_EXP_VAL13

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE143_EXP_VAL14

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE143_INPUT_VAL9
        ldr             r6, =M33_STL_TE143_INPUT_VAL9

        eors.w          r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE143_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE143_EXP_VAL10

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

        ldr             r4, =M33_STL_TE158_INPUT_VAL3
        ldr             r4, =M33_STL_TE158_MASK_VAL1

        ldr             r6, =M33_STL_TE158_INPUT_VAL1
        ldr             r5, =M33_STL_TE158_INPUT_VAL1

        orn             r11, r6, #M33_STL_TE158_INPUT_VAL3
        orn             r10, r5, #M33_STL_TE158_INPUT_VAL3

        ldr             r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE158_INPUT_VAL2
        ldr             r5, =M33_STL_TE158_INPUT_VAL2

        orn             r11, r6, #M33_STL_TE158_INPUT_VAL3
        orn             r10, r5, #M33_STL_TE158_INPUT_VAL3

        ldr             r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE158_INPUT_VAL3
        ldr             r5, =M33_STL_TE158_INPUT_VAL3

        orns            r8, r6, #M33_STL_TE158_INPUT_VAL4
        orns            r10, r5, #M33_STL_TE158_INPUT_VAL4

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE158_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE158_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE158_INPUT_VAL3

        orns            r8, r6, #M33_STL_TE158_INPUT_VAL3

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE158_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE158_INPUT_VAL1
        ldr             r6, =M33_STL_TE158_INPUT_VAL2

        orn             r11, r5, r6, rrx

        ldr             r12, =M33_STL_TE158_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE158_INPUT_VAL1
        ldr             r6, =M33_STL_TE158_INPUT_VAL4

        orn             r11, r5, r6, lsr #M33_STL_TE158_INPUT_VAL7

        ldr             r12, =M33_STL_TE158_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE158_INPUT_VAL4
        ldr             r6, =M33_STL_TE158_INPUT_VAL5

        orns            r5, r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE158_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE158_INPUT_VAL4
        ldr             r6, =M33_STL_TE158_INPUT_VAL6

        orns            r5, r5, r6, lsl #M33_STL_TE158_INPUT_VAL8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE158_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE158_INPUT_VAL3
        ldr             r6, =M33_STL_TE158_INPUT_VAL3

        orns.w          r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE158_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE158_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE158_INPUT_VAL5
        ldr             r6, =M33_STL_TE158_INPUT_VAL6

        orns            r5, r5, r6, ror #M33_STL_TE158_INPUT_VAL9

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE158_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE158_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE158_INPUT_VAL3
        ldr             r6, =M33_STL_TE158_INPUT_VAL4

        orns.w          r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE158_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE158_EXP_VAL2

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

        ldr             r4, =M33_STL_TE160_INPUT_VAL3
        ldr             r1, =M33_STL_TE160_MASK_VAL1

        ldr             r6, =M33_STL_TE160_INPUT_VAL14

        orr             r11, r6, #M33_STL_TE160_INPUT_VAL3

        ldr             r12, =M33_STL_TE160_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE160_INPUT_VAL15

        orr             r11, r6, #M33_STL_TE160_INPUT_VAL3

        ldr             r12, =M33_STL_TE160_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE160_INPUT_VAL3

        orrs            r8, r6, #M33_STL_TE160_INPUT_VAL16

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE160_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE160_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE160_INPUT_VAL3

        orrs            r8, r6, #M33_STL_TE160_INPUT_VAL3

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE160_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE160_EXP_VAL12

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE160_INPUT_VAL1
        ldr             r6, =M33_STL_TE160_INPUT_VAL2

        ldr             r7, =M33_STL_TE160_INPUT_VAL1
        ldr             r8, =M33_STL_TE160_INPUT_VAL2

        orr             r11, r5, r6, lsl #M33_STL_TE160_INPUT_VAL3
        orr             r10, r7, r8, lsl #M33_STL_TE160_INPUT_VAL3

        ldr             r12, =M33_STL_TE160_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE160_INPUT_VAL4
        ldr             r6, =M33_STL_TE160_INPUT_VAL5

        ldr             r7, =M33_STL_TE160_INPUT_VAL4
        ldr             r8, =M33_STL_TE160_INPUT_VAL5

        orr             r11, r5, r6, lsl #M33_STL_TE160_INPUT_VAL6
        orr             r10, r7, r8, lsl #M33_STL_TE160_INPUT_VAL6

        ldr             r12, =M33_STL_TE160_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE160_INPUT_VAL7
        ldr             r6, =M33_STL_TE160_INPUT_VAL8

        ldr             r7, =M33_STL_TE160_INPUT_VAL7
        ldr             r8, =M33_STL_TE160_INPUT_VAL8

        orrs            r9, r5, r6, lsr #M33_STL_TE160_INPUT_VAL9
        orrs            r10, r7, r8, lsr #M33_STL_TE160_INPUT_VAL9

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE160_EXP_VAL13

        bl              m33_stl_compare_gpr

        ldr             r12, =M33_STL_TE160_EXP_VAL3

        mov             r11, r9

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE160_INPUT_VAL10
        ldr             r6, =M33_STL_TE160_INPUT_VAL11

        ldr             r7, =M33_STL_TE160_INPUT_VAL10
        ldr             r8, =M33_STL_TE160_INPUT_VAL11

        orrs.w          r9, r5, r6
        orrs.w          r10, r7, r8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE160_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr             r12, =M33_STL_TE160_EXP_VAL4

        mov             r11, r9

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r7, =M33_STL_TE160_INPUT_VAL3
        ldr             r8, =M33_STL_TE160_INPUT_VAL3

        orrs.w          r9, r7, r8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE160_EXP_VAL11

        bl              m33_stl_compare_gpr

        ldr             r12, =M33_STL_TE160_EXP_VAL12

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

        .align 4
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
#ifdef __GHS__
        .align          8
        .end
#endif
#ifdef GCC_COMPILER
        .align          8
        .end
#endif
        end
