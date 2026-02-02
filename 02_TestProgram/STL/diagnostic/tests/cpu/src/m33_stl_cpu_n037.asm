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

        .section .s_m33_stl_cpu_n037,"ax"
        .global m33_stl_cpu_n037
        .type m33_stl_cpu_n037, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n037,"ax"
        .global m33_stl_cpu_n037

#endif
m33_stl_cpu_n037:
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

        adr             r3, error_m33_stl_cpu_n037

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 224
//-----------------------------------------------------------------------------/

// This TE tests UQADD16 instruction

// GP Registers initialization with input value, UQADD16 operations test
// and compare the output result with expected value

m33_stl_te224:

        ldr             r10, =M33_STL_TE224_INPUT_VAL1

        ldr             r8, =M33_STL_TE224_INPUT_VAL2

        uqadd16         r11, r10, r8

        ldr             r12, =M33_STL_TE224_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE224_INPUT_VAL3

        ldr             r6, =M33_STL_TE224_INPUT_VAL4

        uqadd16         r11, r5, r6

        ldr             r12, =M33_STL_TE224_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te224:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 224
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 225
//-----------------------------------------------------------------------------/

// This TE tests UQADD8 instruction

// GP Registers initialization with input value, UQADD8 operations test
// and compare the output result with expected value

m33_stl_te225:

        ldr             r10, =M33_STL_TE225_INPUT_VAL1

        ldr             r8, =M33_STL_TE225_INPUT_VAL2

        uqadd8          r11, r10, r8

        ldr             r12, =M33_STL_TE225_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE225_INPUT_VAL3

        ldr             r6, =M33_STL_TE225_INPUT_VAL4

        uqadd8          r11, r5, r6

        ldr             r12, =M33_STL_TE225_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE225_INPUT_VAL5

        ldr             r6, =M33_STL_TE225_INPUT_VAL5

        uqadd8          r11, r5, r6

        ldr             r12, =M33_STL_TE225_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te225:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 225
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 226
//-----------------------------------------------------------------------------/

// This TE tests UQASX and UQSAX instructions

// GP Registers initialization with input value, UQASX and UQSAX operations test
// and compare the output result with expected value

m33_stl_te226:

        ldr             r10, =M33_STL_TE226_INPUT_VAL1

        ldr             r8, =M33_STL_TE226_INPUT_VAL2

        uqasx           r11, r10, r8

        ldr             r12, =M33_STL_TE226_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE226_INPUT_VAL3

        ldr             r8, =M33_STL_TE226_INPUT_VAL4

        uqasx           r11, r10, r8

        ldr             r12, =M33_STL_TE226_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE226_INPUT_VAL5

        ldr             r8, =M33_STL_TE226_INPUT_VAL6

        uqasx           r11, r10, r8

        ldr             r12, =M33_STL_TE226_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE226_INPUT_VAL1

        ldr             r8, =M33_STL_TE226_INPUT_VAL2

        uqsax           r11, r10, r8

        ldr             r12, =M33_STL_TE226_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE226_INPUT_VAL5

        ldr             r8, =M33_STL_TE226_INPUT_VAL6

        uqsax           r11, r10, r8

        ldr             r12, =M33_STL_TE226_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE226_INPUT_VAL3

        ldr             r8, =M33_STL_TE226_INPUT_VAL6

        uqsax           r11, r10, r8

        ldr             r12, =M33_STL_TE226_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te226:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 226
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 227
//-----------------------------------------------------------------------------/

// This TE tests UQSUB16 instruction

// GP Registers initialization with input value, UQSUB16 operation test
// and compare the output result with expected value

m33_stl_te227:

        ldr             r7, =M33_STL_TE227_INPUT_VAL1
        ldr             r8, =M33_STL_TE227_INPUT_VAL2

        uqsub16         r11, r7, r8

        ldr             r12, =M33_STL_TE227_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE227_INPUT_VAL4
        ldr             r8, =M33_STL_TE227_INPUT_VAL5

        uqsub16         r11, r7, r8

        ldr             r12, =M33_STL_TE227_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE227_INPUT_VAL5
        ldr             r8, =M33_STL_TE227_INPUT_VAL3

        uqsub16         r11, r7, r8

        ldr             r12, =M33_STL_TE227_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te227:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 227
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 228
//-----------------------------------------------------------------------------/

// This TE tests UQSUB8 instruction

// GP Registers initialization with input value, UQSUB8 operation test
// and compare the output result with expected value

m33_stl_te228:

        ldr             r7, =M33_STL_TE228_INPUT_VAL1
        ldr             r8, =M33_STL_TE228_INPUT_VAL2
        ldr             r11, =M33_STL_TE228_INPUT_VAL3

        uqsub8          r11, r7, r8

        ldr             r12, =M33_STL_TE228_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE228_INPUT_VAL3
        ldr             r12, =M33_STL_TE228_INPUT_VAL4
        ldr             r5, =M33_STL_TE228_INPUT_VAL5

        uqsub8          r11, r12, r5

        ldr             r12, =M33_STL_TE228_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te228:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 228
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 230
//-----------------------------------------------------------------------------/

// This TE tests USAT instruction

// GP Registers initialization with input value, USAT operation test
// and compare the output result with expected value

m33_stl_te230:

        ldr             r5, =M33_STL_TE230_INPUT_VAL1
        ldr             r1, =M33_STL_TE230_MASK_VAL1

        msr             apsr_nzcvq, r5

        ldr             r8, =M33_STL_TE230_INPUT_VAL2

        usat            r6, M33_STL_TE230_INPUT_VAL3, r8

        mrs             r11, apsr

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE230_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE230_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE230_INPUT_VAL4

        msr             apsr_nzcvq, r5

        usat            r7, M33_STL_TE230_INPUT_VAL5, r9, asr #M33_STL_TE230_INPUT_VAL6

        mrs             r11, apsr

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE230_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE230_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE230_INPUT_VAL7

        msr             apsr_nzcvq, r5

        usat            r7, M33_STL_TE230_INPUT_VAL5, r9

        mrs             r11, apsr

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE230_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE230_EXP_VAL1

        bl              m33_stl_compare_gpr

m33_stl_close_te230:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 230
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 231
//-----------------------------------------------------------------------------/

// This TE tests USAT16 instruction

// GP Registers initialization with input value, USAT16 operation test
// and compare the output result with expected value

m33_stl_te231:

        ldr             r11, =M33_STL_TE231_INPUT_VAL1
        ldr             r7, =M33_STL_TE231_INPUT_VAL3

        ldr             r5, =M33_STL_TE231_INPUT_VAL2

        ldr             r8, =M33_STL_TE231_INPUT_VAL7

        msr             apsr_nzcvqg, r8

        usat16          r11, M33_STL_TE231_INPUT_VAL4, r7

        mrs             r10, apsr
        and             r10, r10, r5

        ldr             r12, =M33_STL_TE231_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr             r12, =M33_STL_TE231_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE231_INPUT_VAL1
        ldr             r7, =M33_STL_TE231_INPUT_VAL5

        msr             apsr_nzcvq, r8

        usat16          r11, M33_STL_TE231_INPUT_VAL6, r7

        mrs             r10, apsr

        and             r10, r10, r5

        ldr             r12, =M33_STL_TE231_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr             r12, =M33_STL_TE231_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE231_INPUT_VAL9

        msr             apsr_nzcvq, r8

        usat16          r11, M33_STL_TE231_INPUT_VAL8, r7

        mrs             r10, apsr

        and             r10, r10, r5

        ldr             r12, =M33_STL_TE231_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr             r12, =M33_STL_TE231_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te231:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 231
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n037 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n037:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n037

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n037 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n037 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n037:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n037

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n037 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n037 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n037:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n037 PROCEDURE
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
