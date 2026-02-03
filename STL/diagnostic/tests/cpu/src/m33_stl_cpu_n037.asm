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

        .section .s_m33_stl_cpu_n037,"ax"
        .global m33_stl_cpu_n037
        .type m33_stl_cpu_n037, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n037,"ax"
        .global m33_stl_cpu_n037

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n037
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n037.asm"
        .section        .s_m33_stl_cpu_n037,"ax",%progbits
        .global         m33_stl_cpu_n037
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n037
        .global m33_stl_cpu_n037

        .align           4

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

#ifdef TASKING
        adr             r3, error_m33_stl_cpu_n037
#else
        adr.w           r3, error_m33_stl_cpu_n037
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 224
//-----------------------------------------------------------------------------/

// This TE tests UQADD16 instruction

// GP Registers initialization with input value, UQADD16 operations test
// and compare the output result with expected value

m33_stl_te224:

        ldr.w           r10, =M33_STL_TE224_INPUT_VAL1

        ldr.w           r8, =M33_STL_TE224_INPUT_VAL2

        uqadd16         r11, r10, r8

        ldr.w           r12, =M33_STL_TE224_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE224_INPUT_VAL3

        ldr.w           r6, =M33_STL_TE224_INPUT_VAL4

        uqadd16         r11, r5, r6

        ldr.w           r12, =M33_STL_TE224_EXP_VAL2

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

        ldr.w           r10, =M33_STL_TE225_INPUT_VAL1

        ldr.w           r8, =M33_STL_TE225_INPUT_VAL2

        uqadd8          r11, r10, r8

        ldr.w           r12, =M33_STL_TE225_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE225_INPUT_VAL3

        ldr.w           r6, =M33_STL_TE225_INPUT_VAL4

        uqadd8          r11, r5, r6

        ldr.w           r12, =M33_STL_TE225_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE225_INPUT_VAL5

        ldr.w           r6, =M33_STL_TE225_INPUT_VAL5

        uqadd8          r11, r5, r6

        ldr.w           r12, =M33_STL_TE225_EXP_VAL3

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

        ldr.w           r10, =M33_STL_TE226_INPUT_VAL1

        ldr.w           r8, =M33_STL_TE226_INPUT_VAL2

        uqasx           r11, r10, r8

        ldr.w           r12, =M33_STL_TE226_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r10, =M33_STL_TE226_INPUT_VAL3

        ldr.w           r8, =M33_STL_TE226_INPUT_VAL4

        uqasx           r11, r10, r8

        ldr.w           r12, =M33_STL_TE226_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r10, =M33_STL_TE226_INPUT_VAL5

        ldr.w           r8, =M33_STL_TE226_INPUT_VAL6

        uqasx           r11, r10, r8

        ldr.w           r12, =M33_STL_TE226_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r10, =M33_STL_TE226_INPUT_VAL1

        ldr.w           r8, =M33_STL_TE226_INPUT_VAL2

        uqsax           r11, r10, r8

        ldr.w           r12, =M33_STL_TE226_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r10, =M33_STL_TE226_INPUT_VAL5

        ldr.w           r8, =M33_STL_TE226_INPUT_VAL6

        uqsax           r11, r10, r8

        ldr.w           r12, =M33_STL_TE226_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r10, =M33_STL_TE226_INPUT_VAL3

        ldr.w           r8, =M33_STL_TE226_INPUT_VAL6

        uqsax           r11, r10, r8

        ldr.w           r12, =M33_STL_TE226_EXP_VAL5

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

        ldr.w           r7, =M33_STL_TE227_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE227_INPUT_VAL2

        uqsub16         r11, r7, r8

        ldr.w           r12, =M33_STL_TE227_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE227_INPUT_VAL4
        ldr.w           r8, =M33_STL_TE227_INPUT_VAL5

        uqsub16         r11, r7, r8

        ldr.w           r12, =M33_STL_TE227_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE227_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE227_INPUT_VAL3

        uqsub16         r11, r7, r8

        ldr.w           r12, =M33_STL_TE227_EXP_VAL3

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

        ldr.w           r7, =M33_STL_TE228_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE228_INPUT_VAL2
        ldr.w           r11, =M33_STL_TE228_INPUT_VAL3

        uqsub8          r11, r7, r8

        ldr.w           r12, =M33_STL_TE228_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r11, =M33_STL_TE228_INPUT_VAL3
        ldr.w           r12, =M33_STL_TE228_INPUT_VAL4
        ldr.w           r5, =M33_STL_TE228_INPUT_VAL5

        uqsub8          r11, r12, r5

        ldr.w           r12, =M33_STL_TE228_EXP_VAL2

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

        ldr.w           r5, =M33_STL_TE230_INPUT_VAL1
        ldr.w           r1, =M33_STL_TE230_MASK_VAL1

#ifdef TASKING
        ldr.w           r5, =M33_STL_TE230_INPUT_VAL8
        mrs             r2, apsr
        and             r2, r2, r5
        msr             apsr, r2
#else
        msr             apsr_nzcvq, r5
#endif

        ldr.w           r8, =M33_STL_TE230_INPUT_VAL2

        usat            r6, #M33_STL_TE230_INPUT_VAL3, r8

        mrs             r11, apsr

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE230_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr.w           r12, =M33_STL_TE230_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE230_INPUT_VAL4

#ifdef TASKING
        ldr.w           r5, =M33_STL_TE230_INPUT_VAL8
        mrs             r2, apsr
        and             r2, r2, r5
        msr             apsr, r2
#else
        msr             apsr_nzcvq, r5
#endif

        ldr.w           r7, =M33_STL_TE230_INPUT_VAL1

        usat            r7, #M33_STL_TE230_INPUT_VAL5, r9, asr #M33_STL_TE230_INPUT_VAL6

        mrs             r11, apsr

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE230_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE230_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE230_INPUT_VAL7

#ifdef TASKING
        ldr.w           r5, =M33_STL_TE230_INPUT_VAL8
        mrs             r2, apsr
        and             r2, r2, r5
        msr             apsr, r2
#else
        msr             apsr_nzcvq, r5
#endif

        ldr.w           r7, =M33_STL_TE230_INPUT_VAL1

        usat            r7, #M33_STL_TE230_INPUT_VAL5, r9

        mrs             r11, apsr

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE230_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE230_EXP_VAL1

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

        ldr.w           r11, =M33_STL_TE231_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE231_INPUT_VAL3

        ldr.w           r5, =M33_STL_TE231_INPUT_VAL2

        ldr.w           r8, =M33_STL_TE231_INPUT_VAL7

#ifdef TASKING
        ldr.w           r8, =M33_STL_TE231_INPUT_VAL10
        mrs             r6, apsr
        and             r6, r6, r8
        msr             apsr, r6
#else
        msr             apsr_nzcvqg, r8
#endif

        usat16          r11, #M33_STL_TE231_INPUT_VAL4, r7

        mrs             r10, apsr
        and             r10, r10, r5

        ldr.w           r12, =M33_STL_TE231_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr.w           r12, =M33_STL_TE231_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r11, =M33_STL_TE231_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE231_INPUT_VAL5

#ifdef TASKING
        ldr.w           r8, =M33_STL_TE231_INPUT_VAL10
        mrs             r6, apsr
        and             r6, r6, r8
        msr             apsr, r6
#else
        msr             apsr_nzcvqg, r8
#endif

        usat16          r11, #M33_STL_TE231_INPUT_VAL6, r7

        mrs             r10, apsr

        and             r10, r10, r5

        ldr.w           r12, =M33_STL_TE231_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr.w           r12, =M33_STL_TE231_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE231_INPUT_VAL9

#ifdef TASKING
        ldr.w           r8, =M33_STL_TE231_INPUT_VAL10
        mrs             r6, apsr
        and             r6, r6, r8
        msr             apsr, r6
#else
        msr             apsr_nzcvqg, r8
#endif

        usat16          r11, #M33_STL_TE231_INPUT_VAL8, r7

        mrs             r10, apsr

        and             r10, r10, r5

        ldr.w           r12, =M33_STL_TE231_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr.w           r12, =M33_STL_TE231_EXP_VAL2

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

#ifdef __IAR__
        data
        alignrom        2
#endif
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
