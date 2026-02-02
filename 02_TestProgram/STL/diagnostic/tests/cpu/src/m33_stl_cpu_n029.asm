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

        .section .s_m33_stl_cpu_n029,"ax"
        .global m33_stl_cpu_n029
        .type m33_stl_cpu_n029, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n029,"ax"
        .global m33_stl_cpu_n029

#endif
m33_stl_cpu_n029:
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

        adr             r3, error_m33_stl_cpu_n029

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 163
//-----------------------------------------------------------------------------/

// This TE tests QADD instruction

// GP Registers initialization with input value, write in APSR register,
// QADD operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te163:

        ldr             r4, =M33_STL_TE163_INPUT_VAL3
        ldr             r1, =M33_STL_TE163_MASK_VAL1

        msr             apsr_nzcvqg, r4

        ldr             r10, =M33_STL_TE163_INPUT_VAL1

        ldr             r8, =M33_STL_TE163_INPUT_VAL2

        qadd            r5, r10, r8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE163_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE163_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r10, =M33_STL_TE163_INPUT_VAL4
        ldr             r8, =M33_STL_TE163_INPUT_VAL5

        qadd            r5, r10, r8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE163_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE163_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r10, =M33_STL_TE163_INPUT_VAL2
        ldr             r8, =M33_STL_TE163_INPUT_VAL2

        qadd            r5, r10, r8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE163_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE163_EXP_VAL5

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r10, =M33_STL_TE163_INPUT_VAL5
        ldr             r8, =M33_STL_TE163_INPUT_VAL5

        qadd            r5, r10, r8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE163_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE163_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te163:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 163
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 164
//-----------------------------------------------------------------------------/

// This TE tests QADD16 instruction

// GP Registers initialization with input value, QADD16 operation test
// and compare the output result with expected value

m33_stl_te164:

        ldr             r10, =M33_STL_TE164_INPUT_VAL1

        ldr             r8, =M33_STL_TE164_INPUT_VAL2

        qadd16          r11, r10, r8

        ldr             r12, =M33_STL_TE164_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE164_INPUT_VAL3

        ldr             r6, =M33_STL_TE164_INPUT_VAL4

        qadd16          r11, r5, r6

        ldr             r12, =M33_STL_TE164_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE164_INPUT_VAL5

        ldr             r6, =M33_STL_TE164_INPUT_VAL5

        qadd16          r11, r5, r6

        ldr             r12, =M33_STL_TE164_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE164_INPUT_VAL6

        ldr             r6, =M33_STL_TE164_INPUT_VAL6

        qadd16          r11, r5, r6

        ldr             r12, =M33_STL_TE164_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te164:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 164
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 165
//-----------------------------------------------------------------------------/

// This TE tests QADD8 instruction

// GP Registers initialization with input value, QADD8 operation test
// and compare the output result with expected value

m33_stl_te165:

        ldr             r10, =M33_STL_TE165_INPUT_VAL1

        ldr             r8, =M33_STL_TE165_INPUT_VAL2

        qadd8           r11, r10, r8

        ldr             r12, =M33_STL_TE165_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE165_INPUT_VAL3

        ldr             r6, =M33_STL_TE165_INPUT_VAL4

        qadd8           r11, r5, r6

        ldr             r12, =M33_STL_TE165_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE165_INPUT_VAL5

        ldr             r6, =M33_STL_TE165_INPUT_VAL5

        qadd8           r11, r5, r6

        ldr             r12, =M33_STL_TE165_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE165_INPUT_VAL6

        ldr             r6, =M33_STL_TE165_INPUT_VAL6

        qadd8           r11, r5, r6

        ldr             r12, =M33_STL_TE165_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te165:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 165
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 166
//-----------------------------------------------------------------------------/

// This TE tests QASX and QSAX instructions

// GP Registers initialization with input value, QASX and QSAX operations test
// and compare the output result with expected value

m33_stl_te166:

        ldr             r10, =M33_STL_TE166_INPUT_VAL1
        ldr             r8, =M33_STL_TE166_INPUT_VAL2

        qasx            r11, r10, r8

        ldr             r12, =M33_STL_TE166_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE166_INPUT_VAL3
        ldr             r8, =M33_STL_TE166_INPUT_VAL4

        qasx            r11, r10, r8

        ldr             r12, =M33_STL_TE166_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE166_INPUT_VAL4
        ldr             r8, =M33_STL_TE166_INPUT_VAL3

        qasx            r11, r10, r8

        ldr             r12, =M33_STL_TE166_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE166_INPUT_VAL1
        ldr             r8, =M33_STL_TE166_INPUT_VAL5

        qsax            r11, r10, r8

        ldr             r12, =M33_STL_TE166_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE166_INPUT_VAL6
        ldr             r8, =M33_STL_TE166_INPUT_VAL7

        qsax            r11, r10, r8

        ldr             r12, =M33_STL_TE166_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE166_INPUT_VAL4
        ldr             r8, =M33_STL_TE166_INPUT_VAL2

        qsax            r11, r10, r8

        ldr             r12, =M33_STL_TE166_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te166:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 166
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 167
//-----------------------------------------------------------------------------/

// This TE tests QDADD instruction

// GP Registers initialization with input value, write in APSR register,
// QDADD operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te167:

        ldr             r4, =M33_STL_TE167_INPUT_VAL3
        ldr             r1, =M33_STL_TE167_MASK_VAL1

        msr             apsr_nzcvqg, r4

        ldr             r10, =M33_STL_TE167_INPUT_VAL1

        ldr             r8, =M33_STL_TE167_INPUT_VAL2

        qdadd           r9, r10, r8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE167_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE167_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE167_INPUT_VAL4

        ldr             r6, =M33_STL_TE167_INPUT_VAL5

        msr             apsr_nzcvqg, r4

        qdadd           r9, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE167_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE167_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE167_INPUT_VAL6
        ldr             r6, =M33_STL_TE167_INPUT_VAL6

        msr             apsr_nzcvqg, r4

        qdadd           r9, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE167_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE167_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE167_INPUT_VAL7
        ldr             r6, =M33_STL_TE167_INPUT_VAL7

        msr             apsr_nzcvqg, r4

        qdadd           r9, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE167_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE167_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te167:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 167
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 168
//-----------------------------------------------------------------------------/

// This TE tests QDSUB instruction

// GP Registers initialization with input value, write in APSR register,
// QDSUB operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te168:

        ldr             r4, =M33_STL_TE168_INPUT_VAL3
        ldr             r1, =M33_STL_TE168_MASK_VAL1

        msr             apsr_nzcvqg, r4

        ldr             r10, =M33_STL_TE168_INPUT_VAL1

        ldr             r8, =M33_STL_TE168_INPUT_VAL2

        qdsub           r9, r10, r8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE168_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE168_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE168_INPUT_VAL4

        ldr             r6, =M33_STL_TE168_INPUT_VAL5

        msr             apsr_nzcvqg, r4

        qdsub           r9, r6, r5

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE168_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE168_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE168_INPUT_VAL6
        ldr             r6, =M33_STL_TE168_INPUT_VAL2

        msr             apsr_nzcvqg, r4

        qdsub           r9, r6, r5

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE168_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE168_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE168_INPUT_VAL2
        ldr             r6, =M33_STL_TE168_INPUT_VAL6

        msr             apsr_nzcvqg, r4

        qdsub           r9, r6, r5

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE168_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE168_EXP_VAL1

        bl              m33_stl_compare_gpr

m33_stl_close_te168:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 168
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 169
//-----------------------------------------------------------------------------/

// This TE tests QSUB instruction

// GP Registers initialization with input value, write in APSR register,
// QSUB operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te169:

        ldr             r4, =M33_STL_TE169_INPUT_VAL3
        ldr             r1, =M33_STL_TE169_MASK_VAL1

        msr             apsr_nzcvqg, r4

        ldr             r10, =M33_STL_TE169_INPUT_VAL1

        ldr             r8, =M33_STL_TE169_INPUT_VAL2

        qsub            r9, r10, r8

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE169_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE169_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE169_INPUT_VAL4

        ldr             r6, =M33_STL_TE169_INPUT_VAL5

        msr             apsr_nzcvqg, r4

        qsub            r9, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE169_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE169_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE169_INPUT_VAL4

        ldr             r6, =M33_STL_TE169_INPUT_VAL1

        msr             apsr_nzcvqg, r4

        qsub            r9, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE169_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE169_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE169_INPUT_VAL1

        ldr             r6, =M33_STL_TE169_INPUT_VAL4

        msr             apsr_nzcvqg, r4

        qsub            r9, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE169_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE169_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te169:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 169
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 170
//-----------------------------------------------------------------------------/

// This TE tests QSUB16 instruction

// GP Registers initialization with input value, QSUB16 operation test
// and compare the output result with expected value

m33_stl_te170:

        ldr             r10, =M33_STL_TE170_INPUT_VAL1

        ldr             r8, =M33_STL_TE170_INPUT_VAL2

        qsub16          r11, r10, r8

        ldr             r12, =M33_STL_TE170_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE170_INPUT_VAL3

        ldr             r6, =M33_STL_TE170_INPUT_VAL4

        qsub16          r11, r5, r6

        ldr             r12, =M33_STL_TE170_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE170_INPUT_VAL3

        ldr             r6, =M33_STL_TE170_INPUT_VAL2

        qsub16          r11, r5, r6

        ldr             r12, =M33_STL_TE170_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE170_INPUT_VAL2

        ldr             r6, =M33_STL_TE170_INPUT_VAL3

        qsub16          r11, r5, r6

        ldr             r12, =M33_STL_TE170_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te170:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 170
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 171
//-----------------------------------------------------------------------------/

// This TE tests QSUB8 instruction

// GP Registers initialization with input value, QSUB8 operation test
// and compare the output result with expected value

m33_stl_te171:

        ldr             r10, =M33_STL_TE171_INPUT_VAL1

        ldr             r8, =M33_STL_TE171_INPUT_VAL2

        qsub8           r11, r10, r8

        ldr             r12, =M33_STL_TE171_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE171_INPUT_VAL3

        ldr             r6, =M33_STL_TE171_INPUT_VAL4

        qsub8           r11, r5, r6

        ldr             r12, =M33_STL_TE171_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE171_INPUT_VAL3

        ldr             r6, =M33_STL_TE171_INPUT_VAL2

        qsub8           r11, r5, r6

        ldr             r12, =M33_STL_TE171_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE171_INPUT_VAL2

        ldr             r6, =M33_STL_TE171_INPUT_VAL3

        qsub8           r11, r5, r6

        ldr             r12, =M33_STL_TE171_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te171:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 171
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 200
//-----------------------------------------------------------------------------/

// This TE tests SSAT instruction

// GP Registers initialization with input value, SSAT operation test
// and compare the output result with expected value

m33_stl_te200:

        ldr             r7, =M33_STL_TE200_INPUT_VAL1

        ldr             r1, =M33_STL_TE200_MASK_VAL1

        msr             apsr_nzcvq, r7

        ldr             r8, =M33_STL_TE200_INPUT_VAL2

        ssat            r5, #M33_STL_TE200_INPUT_VAL3, r8

        mrs             r11, apsr

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE200_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE200_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r7

        ldr             r8, =M33_STL_TE200_INPUT_VAL4

        ssat            r5, #M33_STL_TE200_INPUT_VAL3, r8

        mrs             r11, apsr

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE200_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE200_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE200_INPUT_VAL1

        msr             apsr_nzcvq, r7

        ldr             r8, =M33_STL_TE200_INPUT_VAL5

        ssat            r5, #M33_STL_TE200_INPUT_VAL3, r8

        mrs             r11, apsr

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE200_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE200_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE200_INPUT_VAL6

        msr             apsr_nzcvq, r7

        ssat            r6, #M33_STL_TE200_INPUT_VAL7, r9, asr #M33_STL_TE200_INPUT_VAL8

        mrs             r11, apsr

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE200_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE200_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te200:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 200
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 201
//-----------------------------------------------------------------------------/

// This TE tests SSAT16 instruction

// GP Registers initialization with input value, SSAT16 operation test
// and compare the output result with expected value

m33_stl_te201:

        ldr             r11, =M33_STL_TE201_INPUT_VAL1
        ldr             r7, =M33_STL_TE201_INPUT_VAL3

        ldr             r6, =M33_STL_TE201_MASK_VAL1

        ldr             r5, =M33_STL_TE201_INPUT_VAL2

        msr             apsr_nzcvqg, r5

        ssat16          r11, M33_STL_TE201_INPUT_VAL4, r7

        mrs             r10, apsr
        and             r10, r10, r6

        ldr             r12, =M33_STL_TE201_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr             r12, =M33_STL_TE201_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE201_INPUT_VAL1
        ldr             r7, =M33_STL_TE201_INPUT_VAL5

        msr             apsr_nzcvqg, r5

        ssat16          r11, M33_STL_TE201_INPUT_VAL6, r7

        mrs             r10, apsr
        and             r10, r10, r6

        ldr             r12, =M33_STL_TE201_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr             r12, =M33_STL_TE201_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE201_INPUT_VAL8

        msr             apsr_nzcvqg, r5

        ssat16          r11, M33_STL_TE201_INPUT_VAL7, r7

        mrs             r10, apsr
        and             r10, r10, r6

        ldr             r12, =M33_STL_TE201_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr             r12, =M33_STL_TE201_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te201:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 201
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n029 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n029:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n029

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n029 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n029 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n029:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n029

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n029 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n029 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n029:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n029 PROCEDURE
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
