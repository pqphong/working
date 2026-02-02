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

        .section .s_m33_stl_cpu_n032,"ax"
        .global m33_stl_cpu_n032
        .type m33_stl_cpu_n032, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n032,"ax"
        .global m33_stl_cpu_n032

#endif
m33_stl_cpu_n032:
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

        adr             r3, error_m33_stl_cpu_n032

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 191
//-----------------------------------------------------------------------------/

// This TE tests SMLABB, SMLABT, SMLATB and SMLATT instructions

// GP Registers initialization with input value, write in APSR register,
// SMLABB, SMLABT, SMLATB and SMLATT operations test, read from APSR register
// and compare and compare the output result with expected value

m33_stl_te191:

        ldr             r9, =M33_STL_TE191_MASK_VAL1

        ldr             r5, =M33_STL_TE191_INPUT_VAL16
        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL1
        ldr             r8, =M33_STL_TE191_INPUT_VAL2
        ldr             r10, =M33_STL_TE191_INPUT_VAL3

        smlabb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL2
        ldr             r8, =M33_STL_TE191_INPUT_VAL1
        ldr             r10, =M33_STL_TE191_INPUT_VAL4

        smlabb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL5
        ldr             r8, =M33_STL_TE191_INPUT_VAL6
        ldr             r10, =M33_STL_TE191_INPUT_VAL7

        smlabb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL8
        ldr             r8, =M33_STL_TE191_INPUT_VAL9
        ldr             r10, =M33_STL_TE191_INPUT_VAL10

        smlabb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL1
        ldr             r8, =M33_STL_TE191_INPUT_VAL2
        ldr             r10, =M33_STL_TE191_INPUT_VAL3

        smlabt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL2
        ldr             r8, =M33_STL_TE191_INPUT_VAL1
        ldr             r10, =M33_STL_TE191_INPUT_VAL4

        smlabt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL5
        ldr             r8, =M33_STL_TE191_INPUT_VAL11
        ldr             r10, =M33_STL_TE191_INPUT_VAL7

        smlabt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL8
        ldr             r8, =M33_STL_TE191_INPUT_VAL12
        ldr             r10, =M33_STL_TE191_INPUT_VAL10

        smlabt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL1
        ldr             r8, =M33_STL_TE191_INPUT_VAL2
        ldr             r10, =M33_STL_TE191_INPUT_VAL3

        smlatb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL2
        ldr             r8, =M33_STL_TE191_INPUT_VAL1
        ldr             r10, =M33_STL_TE191_INPUT_VAL4

        smlatb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL13
        ldr             r8, =M33_STL_TE191_INPUT_VAL6
        ldr             r10, =M33_STL_TE191_INPUT_VAL7

        smlatb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL14
        ldr             r8, =M33_STL_TE191_INPUT_VAL9
        ldr             r10, =M33_STL_TE191_INPUT_VAL10

        smlatb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL1
        ldr             r8, =M33_STL_TE191_INPUT_VAL2
        ldr             r10, =M33_STL_TE191_INPUT_VAL3

        smlatt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL2
        ldr             r8, =M33_STL_TE191_INPUT_VAL1
        ldr             r10, =M33_STL_TE191_INPUT_VAL4

        smlatt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL13
        ldr             r8, =M33_STL_TE191_INPUT_VAL11
        ldr             r10, =M33_STL_TE191_INPUT_VAL7

        smlatt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE191_INPUT_VAL15
        ldr             r8, =M33_STL_TE191_INPUT_VAL12
        ldr             r10, =M33_STL_TE191_INPUT_VAL10

        smlatt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE191_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE191_EXP_VAL9

        bl              m33_stl_compare_gpr

m33_stl_close_te191:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 191
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 192
//-----------------------------------------------------------------------------/

// This TE tests SMLAD, SMLADX, SMLAWB and SMLAWT instructions

// GP Registers initialization with input value, write in APSR register,
// SMLAD, SMLADX, SMLAWB and SMLAWT operations test, read from APSR register
// and compare and compare the output result with expected value

m33_stl_te192:

        ldr             r9, =M33_STL_TE192_MASK_VAL1

        ldr             r5, =M33_STL_TE192_INPUT_VAL4

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL1
        ldr             r8, =M33_STL_TE192_INPUT_VAL2
        ldr             r10, =M33_STL_TE192_INPUT_VAL3
        ldr             r11, =M33_STL_TE192_INPUT_VAL4

        smlad           r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL2
        ldr             r8, =M33_STL_TE192_INPUT_VAL1
        ldr             r10, =M33_STL_TE192_INPUT_VAL5

        smlad           r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL6
        ldr             r8, =M33_STL_TE192_INPUT_VAL7
        ldr             r10, =M33_STL_TE192_INPUT_VAL8

        smlad           r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL1
        ldr             r8, =M33_STL_TE192_INPUT_VAL9
        ldr             r10, =M33_STL_TE192_INPUT_VAL3

        smladx          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL12

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL2
        ldr             r8, =M33_STL_TE192_INPUT_VAL10
        ldr             r10, =M33_STL_TE192_INPUT_VAL5

        smladx          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL13

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL6
        ldr             r8, =M33_STL_TE192_INPUT_VAL11
        ldr             r10, =M33_STL_TE192_INPUT_VAL8

        smladx          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL12
        ldr             r8, =M33_STL_TE192_INPUT_VAL3
        ldr             r10, =M33_STL_TE192_INPUT_VAL13

        smlawb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL14
        ldr             r8, =M33_STL_TE192_INPUT_VAL5
        ldr             r10, =M33_STL_TE192_INPUT_VAL15

        smlawb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL16
        ldr             r8, =M33_STL_TE192_INPUT_VAL17
        ldr             r10, =M33_STL_TE192_INPUT_VAL18

        smlawb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL19
        ldr             r8, =M33_STL_TE192_INPUT_VAL20
        ldr             r10, =M33_STL_TE192_INPUT_VAL21

        smlawb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL12
        ldr             r8, =M33_STL_TE192_INPUT_VAL3
        ldr             r10, =M33_STL_TE192_INPUT_VAL13

        smlawt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL14
        ldr             r8, =M33_STL_TE192_INPUT_VAL5
        ldr             r10, =M33_STL_TE192_INPUT_VAL15

        smlawt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL16
        ldr             r8, =M33_STL_TE192_INPUT_VAL22
        ldr             r10, =M33_STL_TE192_INPUT_VAL18

        smlawt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL19
        ldr             r8, =M33_STL_TE192_INPUT_VAL23
        ldr             r10, =M33_STL_TE192_INPUT_VAL21

        smlawt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL24
        ldr             r8, =M33_STL_TE192_INPUT_VAL24
        ldr             r10, =M33_STL_TE192_INPUT_VAL24

        smlawb          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL14

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE192_INPUT_VAL24
        ldr             r8, =M33_STL_TE192_INPUT_VAL24
        ldr             r10, =M33_STL_TE192_INPUT_VAL24

        smlawt          r11, r6, r8, r10

        mrs             r0, apsr

        and             r0, r0, r9

        ldr             r12, =M33_STL_TE192_EXP_VAL14

        bl              m33_stl_compare_gpr

        mov             r11, r0

        ldr             r12, =M33_STL_TE192_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te192:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 192
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 193
//-----------------------------------------------------------------------------/

// This TE tests SMLAL instruction

// GP Registers initialization with input value, SMLAL operation test
// and compare the output result with expected value

m33_stl_te193:

        ldr             r7, =M33_STL_TE193_INPUT_VAL1
        ldr             r0, =M33_STL_TE193_INPUT_VAL2
        ldr             r5, =M33_STL_TE193_INPUT_VAL3
        ldr             r6, =M33_STL_TE193_INPUT_VAL3

        smlal           r5, r6, r0, r7

        mov             r11, r5

        ldr             r12, =M33_STL_TE193_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE193_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r0, =M33_STL_TE193_INPUT_VAL4

        smlal           r5, r6, r0, r7

        mov             r11, r5

        ldr             r12, =M33_STL_TE193_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE193_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te193:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 193
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 194
//-----------------------------------------------------------------------------/

// This TE tests SMLALBB, SMLALBT, SMLALTB, SMLALTT, SMLALD and SMLALDX instructions

// GP Registers initialization with input value,
// SMLALBB, SMLALBT, SMLALTB, SMLALTT, SMLALD and SMLALDX operations test
// and compare the output result with expected value

m33_stl_te194:

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r7, =M33_STL_TE194_INPUT_VAL2
        ldr             r0, =M33_STL_TE194_INPUT_VAL3

        smlalbb         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r0, =M33_STL_TE194_INPUT_VAL4
        ldr             r7, =M33_STL_TE194_INPUT_VAL5
        ldr             r11, =M33_STL_TE194_INPUT_VAL6
        ldr             r8, =M33_STL_TE194_INPUT_VAL7

        smlalbb         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r7, =M33_STL_TE194_INPUT_VAL8
        ldr             r0, =M33_STL_TE194_INPUT_VAL9

        smlalbt         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r0, =M33_STL_TE194_INPUT_VAL10
        ldr             r7, =M33_STL_TE194_INPUT_VAL11

        smlalbt         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r7, =M33_STL_TE194_INPUT_VAL12
        ldr             r0, =M33_STL_TE194_INPUT_VAL3

        smlaltb         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r0, =M33_STL_TE194_INPUT_VAL13

        smlaltb         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r7, =M33_STL_TE194_INPUT_VAL14
        ldr             r0, =M33_STL_TE194_INPUT_VAL9

        smlaltt         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r0, =M33_STL_TE194_INPUT_VAL15

        smlaltt         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r7, =M33_STL_TE194_INPUT_VAL16
        ldr             r0, =M33_STL_TE194_INPUT_VAL17

        smlald          r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL12

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r7, =M33_STL_TE194_INPUT_VAL18
        ldr             r0, =M33_STL_TE194_INPUT_VAL19

        smlald          r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL13

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r7, =M33_STL_TE194_INPUT_VAL20
        ldr             r0, =M33_STL_TE194_INPUT_VAL17

        smlaldx         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL14

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE194_INPUT_VAL1
        ldr             r8, =M33_STL_TE194_INPUT_VAL1
        ldr             r0, =M33_STL_TE194_INPUT_VAL21

        smlaldx         r11, r8, r7, r0

        ldr             r12, =M33_STL_TE194_EXP_VAL15

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE194_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te194:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 194
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 195
//-----------------------------------------------------------------------------/

// This TE tests SMLSD, SMLSDX, SMLSLD and SMLSLDX instructions

// GP Registers initialization with input value, write in APSR register
// (only for the SMLSD and SMLSDX instructions), SMLSD, SMLSDX,
// SMLSLD and SMLSLDX operations tests, read from APSR register
// (only for the SMLSD and SMLSDX instructions)
// and compare the output result with expected value

m33_stl_te195:

        ldr             r10, =M33_STL_TE195_MASK_VAL1
        ldr             r1, =M33_STL_TE195_INPUT_VAL3

        msr             apsr_nzcvqg, r1

        ldr             r11, =M33_STL_TE195_INPUT_VAL3
        ldr             r8, =M33_STL_TE195_INPUT_VAL4
        ldr             r6, =M33_STL_TE195_INPUT_VAL5
        ldr             r7, =M33_STL_TE195_INPUT_VAL3

        smlsd           r11, r8, r6, r7

        mrs             r5, apsr
        and             r5, r5, r10

        ldr             r12, =M33_STL_TE195_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE195_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r1

        ldr             r7, =M33_STL_TE195_INPUT_VAL6

        smlsd           r11, r8, r6, r7

        mrs             r5, apsr
        and             r5, r5, r10

        ldr             r12, =M33_STL_TE195_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE195_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r1

        ldr             r8, =M33_STL_TE195_INPUT_VAL7
        ldr             r6, =M33_STL_TE195_INPUT_VAL8
        ldr             r7, =M33_STL_TE195_INPUT_VAL3

        smlsdx          r11, r8, r6, r7

        mrs             r5, apsr
        and             r5, r5, r10

        ldr             r12, =M33_STL_TE195_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE195_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r1

        ldr             r7, =M33_STL_TE195_INPUT_VAL9

        smlsdx          r11, r8, r6, r7

        mrs             r5, apsr
        and             r5, r5, r10

        ldr             r12, =M33_STL_TE195_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE195_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r1

        ldr             r8, =M33_STL_TE195_INPUT_VAL1
        ldr             r6, =M33_STL_TE195_INPUT_VAL10
        ldr             r7, =M33_STL_TE195_INPUT_VAL12

        smlsdx          r11, r8, r6, r7

        mrs             r5, apsr
        and             r5, r5, r10

        ldr             r12, =M33_STL_TE195_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE195_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE195_INPUT_VAL3
        ldr             r8, =M33_STL_TE195_INPUT_VAL10
        ldr             r6, =M33_STL_TE195_INPUT_VAL10
        ldr             r7, =M33_STL_TE195_INPUT_VAL3

        smlsld          r11, r8, r6, r7

        ldr             r12, =M33_STL_TE195_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE195_EXP_VAL11

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE195_INPUT_VAL6
        ldr             r8, =M33_STL_TE195_INPUT_VAL2
        ldr             r7, =M33_STL_TE195_INPUT_VAL11

        smlsld          r11, r8, r6, r7

        ldr             r12, =M33_STL_TE195_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE195_EXP_VAL12

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE195_INPUT_VAL9
        ldr             r8, =M33_STL_TE195_INPUT_VAL4
        ldr             r6, =M33_STL_TE195_INPUT_VAL12
        ldr             r7, =M33_STL_TE195_INPUT_VAL13

        smlsldx         r11, r8, r6, r7

        ldr             r12, =M33_STL_TE195_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE195_EXP_VAL13

        bl              m33_stl_compare_gpr

        ldr             r11, =M33_STL_TE195_INPUT_VAL3
        ldr             r8, =M33_STL_TE195_INPUT_VAL13
        ldr             r6, =M33_STL_TE195_INPUT_VAL1
        ldr             r7, =M33_STL_TE195_INPUT_VAL2

        smlsldx         r11, r8, r6, r7

        ldr             r12, =M33_STL_TE195_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r8

        ldr             r12, =M33_STL_TE195_EXP_VAL14

        bl              m33_stl_compare_gpr

m33_stl_close_te195:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 195
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 196
//-----------------------------------------------------------------------------/

// This TE tests SMMLA, SMMLAR, SMMLS, SMMLSR, SMMUL and SMMULR instructions

// GP Registers initialization with input value,
// SMMLA, SMMLAR, SMMLS, SMMLSR, SMMUL and SMMULR operations test
// and compare the output result with expected value

m33_stl_te196:

        ldr             r11, =M33_STL_TE196_INPUT_VAL1
        ldr             r8, =M33_STL_TE196_INPUT_VAL2
        ldr             r6, =M33_STL_TE196_INPUT_VAL3
        ldr             r7, =M33_STL_TE196_INPUT_VAL1

        smmla           r11, r8, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE196_INPUT_VAL4

        smmla           r11, r8, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL2

        bl              m33_stl_compare_gpr


        ldr             r8, =M33_STL_TE196_INPUT_VAL5
        ldr             r6, =M33_STL_TE196_INPUT_VAL6
        ldr             r7, =M33_STL_TE196_INPUT_VAL1

        smmlar          r11, r8, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE196_INPUT_VAL7

        smmlar          r11, r8, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL4

        bl              m33_stl_compare_gpr


        ldr             r8, =M33_STL_TE196_INPUT_VAL8
        ldr             r6, =M33_STL_TE196_INPUT_VAL9
        ldr             r7, =M33_STL_TE196_INPUT_VAL1

        smmls           r11, r8, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE196_INPUT_VAL10

        smmls           r11, r8, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL6

        bl              m33_stl_compare_gpr


        ldr             r8, =M33_STL_TE196_INPUT_VAL11
        ldr             r6, =M33_STL_TE196_INPUT_VAL12
        ldr             r7, =M33_STL_TE196_INPUT_VAL1

        smmlsr          r11, r8, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE196_INPUT_VAL13

        smmlsr          r11, r8, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL8

        bl              m33_stl_compare_gpr


        ldr             r6, =M33_STL_TE196_INPUT_VAL14
        ldr             r7, =M33_STL_TE196_INPUT_VAL15

        smmul           r11, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE196_INPUT_VAL16

        smmul           r11, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL10

        bl              m33_stl_compare_gpr


        ldr             r6, =M33_STL_TE196_INPUT_VAL17
        ldr             r7, =M33_STL_TE196_INPUT_VAL18

        smmulr          r11, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL11

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE196_INPUT_VAL16

        smmulr          r11, r6, r7

        ldr             r12, =M33_STL_TE196_EXP_VAL12

        bl              m33_stl_compare_gpr

m33_stl_close_te196:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 196
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 197
//-----------------------------------------------------------------------------/

// This TE tests SMUAD, SMUADX, SMUSD and SMUSDX instructions

// GP Registers initialization with input value,
// SMUAD, SMUADX, SMUSD and SMUSDX operations test
// and compare the output result with expected value

m33_stl_te197:

        ldr             r7, =M33_STL_TE197_INPUT_VAL1
        ldr             r5, =M33_STL_TE197_INPUT_VAL2

        smuad           r11, r7, r5

        ldr             r12, =M33_STL_TE197_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE197_INPUT_VAL3

        smuad           r11, r7, r5

        ldr             r12, =M33_STL_TE197_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE197_INPUT_VAL4
        ldr             r5, =M33_STL_TE197_INPUT_VAL5

        smuadx          r11, r7, r5

        ldr             r12, =M33_STL_TE197_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE197_INPUT_VAL6

        smuadx          r11, r7, r5

        ldr             r12, =M33_STL_TE197_EXP_VAL4

        bl              m33_stl_compare_gpr


        ldr             r7, =M33_STL_TE197_INPUT_VAL7
        ldr             r5, =M33_STL_TE197_INPUT_VAL8

        smusd           r11, r7, r5

        ldr             r12, =M33_STL_TE197_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE197_INPUT_VAL9

        smusd           r11, r7, r5

        ldr             r12, =M33_STL_TE197_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE197_INPUT_VAL10
        ldr             r5, =M33_STL_TE197_INPUT_VAL11

        smusdx          r11, r7, r5

        ldr             r12, =M33_STL_TE197_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE197_INPUT_VAL12

        smusdx          r11, r7, r5

        ldr             r12, =M33_STL_TE197_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te197:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 197
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 198
//-----------------------------------------------------------------------------/

// This TE tests SMULBB, SMULBT, SMULTB, SMULTT, SMULWB and SMULWT instructions

// GP Registers initialization with input value,
// SMULBB, SMULBT, SMULTB, SMULTT, SMULWB and SMULWT operations test
// and compare the output result with expected value

m33_stl_te198:

        ldr             r6, =M33_STL_TE198_INPUT_VAL1
        ldr             r7, =M33_STL_TE198_INPUT_VAL2

        smulbb          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE198_INPUT_VAL3

        smulbb          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE198_INPUT_VAL4

        ldr             r7, =M33_STL_TE198_INPUT_VAL5

        smultb          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE198_EXP_VAL4

        smultb          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE198_INPUT_VAL6
        ldr             r7, =M33_STL_TE198_INPUT_VAL7

        smulbt          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE198_INPUT_VAL8

        smulbt          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL13

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE198_INPUT_VAL9

        ldr             r7, =M33_STL_TE198_INPUT_VAL10

        smultt          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE198_INPUT_VAL8

        smultt          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL8

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE198_INPUT_VAL11
        ldr             r7, =M33_STL_TE198_INPUT_VAL12

        smulwb          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL9

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE198_INPUT_VAL3

        smulwb          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL10

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE198_INPUT_VAL13
        ldr             r7, =M33_STL_TE198_INPUT_VAL14

        smulwt          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL11

        bl              m33_stl_compare_gpr

        ldr             r7, =M33_STL_TE198_INPUT_VAL15

        smulwt          r11, r6, r7

        ldr             r12, =M33_STL_TE198_EXP_VAL12

        bl              m33_stl_compare_gpr

m33_stl_close_te198:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 198
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 199
//-----------------------------------------------------------------------------/

// This TE tests SMULL instruction

// GP Registers initialization with input value, SMULL operation test
// and compare the output result with expected value

m33_stl_te199:

        ldr             r7, =M33_STL_TE199_INPUT_VAL1
        ldr             r0, =M33_STL_TE199_INPUT_VAL2
        ldr             r5, =M33_STL_TE199_INPUT_VAL3
        ldr             r6, =M33_STL_TE199_INPUT_VAL3

        smull           r5, r6, r0, r7

        mov             r11, r5

        ldr             r12, =M33_STL_TE199_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE199_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r0, =M33_STL_TE199_INPUT_VAL4

        smull           r5, r6, r0, r7

        mov             r11, r5

        ldr             r12, =M33_STL_TE199_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE199_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te199:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 199
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n032 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n032:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n032

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n032 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n032 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n032:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n032

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n032 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n032 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n032:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n032 PROCEDURE
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
