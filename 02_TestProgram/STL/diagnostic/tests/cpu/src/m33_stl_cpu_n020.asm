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

        .section .s_m33_stl_cpu_n020,"ax"
        .global m33_stl_cpu_n020
        .type m33_stl_cpu_n020, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n020,"ax"
        .global m33_stl_cpu_n020

#endif
m33_stl_cpu_n020:
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

        adr             r3, error_m33_stl_cpu_n020

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 128
//-----------------------------------------------------------------------------/

// This TE tests ADC instruction

// GP Registers initialization with input value, write in APSR register,
// ADC operation test, read from APSR register and compare
// the output result with expected value

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te128:

        ldr             r4, =M33_STL_TE128_INPUT_VAL7
        ldr             r2, =M33_STL_TE128_INPUT_VAL8
        ldr             r1, =M33_STL_TE128_MASK_VAL1

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE128_INPUT_VAL1

        adcs            r5, r5, M33_STL_TE128_INPUT_VAL2

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE128_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE128_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r5, =M33_STL_TE128_INPUT_VAL3

        adc             r11, r5, M33_STL_TE128_INPUT_VAL4

        ldr             r12, =M33_STL_TE128_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r5, =M33_STL_TE128_INPUT_VAL5
        ldr             r6, =M33_STL_TE128_INPUT_VAL6

        adc             r11, r5, r6, rrx

        ldr             r12, =M33_STL_TE128_EXP_VAL5

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r5, =M33_STL_TE128_INPUT_VAL1
        ldr             r6, =M33_STL_TE128_INPUT_VAL6

        adc             r11, r5, r6, lsl #M33_STL_TE128_INPUT_VAL9

        ldr             r12, =M33_STL_TE128_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE128_INPUT_VAL3
        ldr             r6, =M33_STL_TE128_INPUT_VAL5

        adcs            r5, r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE128_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE128_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r5, =M33_STL_TE128_INPUT_VAL3
        ldr             r6, =M33_STL_TE128_INPUT_VAL6

        adcs            r5, r5, r6, lsr #M33_STL_TE128_INPUT_VAL10

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE128_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE128_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r2

        ldr             r5, =M33_STL_TE128_INPUT_VAL12
        ldr             r6, =M33_STL_TE128_INPUT_VAL13

        adcs            r5, r5, r6, lsr #M33_STL_TE128_INPUT_VAL11

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE128_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE128_EXP_VAL9

        bl              m33_stl_compare_gpr

m33_stl_close_te128:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 128
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 129
//-----------------------------------------------------------------------------/

// This TE tests ADD (immediate) instruction

// GP Registers initialization with input value, ADD operation test and compare
// the output result with expected value.

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te129:

        ldr             r4, =M33_STL_TE129_INPUT_VAL1
        ldr             r1, =M33_STL_TE129_MASK_VAL1

        ldr             r5, =M33_STL_TE129_INPUT_VAL1

        add             r11, r5, M33_STL_TE129_INPUT_VAL2

        ldr             r12, =M33_STL_TE129_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE129_INPUT_VAL3

        addw            r11, r5, M33_STL_TE129_INPUT_VAL4

        ldr             r12, =M33_STL_TE129_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE129_INPUT_VAL1

        addw            r11, r5, M33_STL_TE129_INPUT_VAL2

        ldr             r12, =M33_STL_TE129_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE129_INPUT_VAL5

        addw            r11, r5, M33_STL_TE129_INPUT_VAL6

        ldr             r12, =M33_STL_TE129_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE129_INPUT_VAL7

        addw            r11, r5, M33_STL_TE129_INPUT_VAL8

        ldr             r12, =M33_STL_TE129_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te129:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 129
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 130
//-----------------------------------------------------------------------------/

// This TE tests ADD (Register) instruction

// GP Registers initialization with input value, write in APSR register,
// ADD operation test, read from APSR register and compare
// the output result with expected value.

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te130:

        ldr             r4, =M33_STL_TE130_INPUT_VAL11
        ldr             r1, =M33_STL_TE130_MASK_VAL1

        ldr             r5, =M33_STL_TE130_INPUT_VAL1
        ldr             r6, =M33_STL_TE130_INPUT_VAL2

        add             r11, r5, r6, rrx

        ldr             r12, =M33_STL_TE130_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE130_INPUT_VAL3
        ldr             r6, =M33_STL_TE130_INPUT_VAL4

        add             r11, r5, r6, lsl #M33_STL_TE130_INPUT_VAL9

        ldr             r12, =M33_STL_TE130_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE130_INPUT_VAL5
        ldr             r6, =M33_STL_TE130_INPUT_VAL6

        adds            r5, r5, r6, rrx

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE130_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE130_EXP_VAL5

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE130_INPUT_VAL7
        ldr             r6, =M33_STL_TE130_INPUT_VAL8

        adds            r5, r5, r6, lsr #M33_STL_TE130_INPUT_VAL10

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE130_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE130_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE130_INPUT_VAL15
        ldr             r6, =M33_STL_TE130_INPUT_VAL12

        adds            r5, r5, r6, lsr #M33_STL_TE130_INPUT_VAL14

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE130_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE130_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r5, =M33_STL_TE130_INPUT_VAL13
        ldr             r6, =M33_STL_TE130_INPUT_VAL12

        adds            r5, r5, r6, lsl #M33_STL_TE130_INPUT_VAL14

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr             r12, =M33_STL_TE130_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr             r12, =M33_STL_TE130_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te130:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 130
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 185
//-----------------------------------------------------------------------------/

// This TE tests SBC instruction

// GP Registers initialization with input value, write in APSR register,
// SBC operation test, read from APSR register and compare
// the output result with expected value

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te185:

        ldr             r4, =M33_STL_TE185_INPUT_VAL4
        ldr             r5, =M33_STL_TE185_INPUT_VAL17
        ldr             r1, =M33_STL_TE185_MASK_VAL1

        msr             apsr_nzcvqg, r4

        ldr             r6, =M33_STL_TE185_INPUT_VAL2

        sbcs            r11, r6, M33_STL_TE185_INPUT_VAL3

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE185_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE185_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE185_INPUT_VAL5

        sbcs            r11, r6, M33_STL_TE185_INPUT_VAL6

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE185_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE185_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE185_INPUT_VAL7

        sbcs            r11, r6, M33_STL_TE185_INPUT_VAL3

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE185_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE185_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r6, =M33_STL_TE185_INPUT_VAL8

        sbcs            r11, r6, M33_STL_TE185_INPUT_VAL9

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE185_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE185_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r6, =M33_STL_TE185_INPUT_VAL2
        ldr             r8, =M33_STL_TE185_INPUT_VAL7

        sbcs.w          r11, r6, r8

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE185_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE185_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE185_INPUT_VAL5

        sbcs            r11, r6, r8, lsl #M33_STL_TE185_INPUT_VAL10

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE185_EXP_VAL10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE185_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r6, =M33_STL_TE185_INPUT_VAL11

        sbcs            r11, r6, r8, lsl #M33_STL_TE185_INPUT_VAL12

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE185_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE185_EXP_VAL12

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE185_INPUT_VAL13
        ldr             r8, =M33_STL_TE185_INPUT_VAL13

        sbcs.w          r11, r6, r8

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE185_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE185_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r6, =M33_STL_TE185_INPUT_VAL14

        sbc             r11, r6, M33_STL_TE185_INPUT_VAL15

        ldr             r12, =M33_STL_TE185_EXP_VAL13

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r5

        ldr             r6, =M33_STL_TE185_INPUT_VAL16

        sbc             r11, r6, M33_STL_TE185_INPUT_VAL1

        ldr             r12, =M33_STL_TE185_EXP_VAL14

        bl              m33_stl_compare_gpr

m33_stl_close_te185:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 185
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 203
//-----------------------------------------------------------------------------/

// This TE tests SUB (Register) instruction

// GP Registers initialization with input value, write in APSR register,
// SUB operation test, read from APSR register and compare
// the output result with expected value

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te203:

        ldr             r1, =M33_STL_TE203_MASK_VAL1
        ldr             r4, =M33_STL_TE203_INPUT_VAL7

        msr             apsr_nzcvqg, r4

        ldr             r5, =M33_STL_TE203_INPUT_VAL2
        ldr             r6, =M33_STL_TE203_INPUT_VAL3

        subs            r11, r5, r6

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE203_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE203_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r5, =M33_STL_TE203_INPUT_VAL5
        ldr             r6, =M33_STL_TE203_INPUT_VAL5

        subs            r11, r5, r6

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE203_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE203_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r5, =M33_STL_TE203_INPUT_VAL3
        ldr             r6, =M33_STL_TE203_INPUT_VAL2

        subs            r11, r5, r6

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE203_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE203_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r5, =M33_STL_TE203_INPUT_VAL6
        ldr             r6, =M33_STL_TE203_INPUT_VAL4

        subs            r11, r5, r6, lsl #M33_STL_TE203_INPUT_VAL1

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE203_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE203_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te203:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 203
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 204
//-----------------------------------------------------------------------------/

// This TE tests SUB (Immediatee) instruction

// GP Registers initialization with input value, write in APSR register,
// SUB operation test, read from APSR register and compare
// the output result with expected value

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te204:

        ldr             r1, =M33_STL_TE204_MASK_VAL1
        ldr             r4, =M33_STL_TE204_INPUT_VAL16

        ldr             r5, =M33_STL_TE204_INPUT_VAL2
        ldr             r6, =M33_STL_TE204_INPUT_VAL2

        sub             r11, r5, M33_STL_TE204_INPUT_VAL3
        sub             r10, r6, M33_STL_TE204_INPUT_VAL3

        ldr             r12, =M33_STL_TE204_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE204_INPUT_VAL4
        ldr             r6, =M33_STL_TE204_INPUT_VAL4

        sub             r11, r5, M33_STL_TE204_INPUT_VAL5
        sub             r10, r6, M33_STL_TE204_INPUT_VAL5

        ldr             r12, =M33_STL_TE204_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r5, =M33_STL_TE204_INPUT_VAL2
        ldr             r9, =M33_STL_TE204_INPUT_VAL2

        subs            r11, r5, M33_STL_TE204_INPUT_VAL6
        subs            r10, r9, M33_STL_TE204_INPUT_VAL6

        mrs             r6, apsr
        and             r7, r6, r1

        ldr             r12, =M33_STL_TE204_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE204_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r5, =M33_STL_TE204_INPUT_VAL8
        ldr             r9, =M33_STL_TE204_INPUT_VAL8

        subs            r11, r5, M33_STL_TE204_INPUT_VAL8
        subs            r10, r9, M33_STL_TE204_INPUT_VAL8

        mrs             r6, apsr
        and             r7, r6, r1

        ldr             r12, =M33_STL_TE204_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE204_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r5, =M33_STL_TE204_INPUT_VAL9
        ldr             r9, =M33_STL_TE204_INPUT_VAL9

        subs            r11, r5, M33_STL_TE204_INPUT_VAL10
        subs            r10, r9, M33_STL_TE204_INPUT_VAL10

        mrs             r6, apsr
        and             r7, r6, r1

        ldr             r12, =M33_STL_TE204_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE204_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r5, =M33_STL_TE204_INPUT_VAL11
        ldr             r9, =M33_STL_TE204_INPUT_VAL11

        subs            r11, r5, M33_STL_TE204_INPUT_VAL12
        subs            r10, r9, M33_STL_TE204_INPUT_VAL12

        mrs             r6, apsr
        and             r7, r6, r1

        ldr             r12, =M33_STL_TE204_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE204_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r11, =M33_STL_TE204_INPUT_VAL11
        ldr             r10, =M33_STL_TE204_INPUT_VAL11

        subs            r11, M33_STL_TE204_INPUT_VAL13
        subs            r10, M33_STL_TE204_INPUT_VAL13

        mrs             r6, apsr
        and             r7, r6, r1

        ldr             r12, =M33_STL_TE204_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE204_EXP_VAL10

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE204_INPUT_VAL9
        ldr             r7, =M33_STL_TE204_INPUT_VAL9

        sub             r11, r5, M33_STL_TE204_INPUT_VAL7
        sub             r10, r7, M33_STL_TE204_INPUT_VAL7

        ldr             r12, =M33_STL_TE204_EXP_VAL12

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE204_INPUT_VAL14
        ldr             r7, =M33_STL_TE204_INPUT_VAL14

        sub             r11, r5, M33_STL_TE204_INPUT_VAL5
        sub             r10, r7, M33_STL_TE204_INPUT_VAL5

        ldr             r12, =M33_STL_TE204_EXP_VAL13

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE204_INPUT_VAL9
        ldr             r7, =M33_STL_TE204_INPUT_VAL9

        subw            r11, r5, M33_STL_TE204_INPUT_VAL3
        subw            r10, r7, M33_STL_TE204_INPUT_VAL3

        ldr             r12, =M33_STL_TE204_EXP_VAL14

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE204_INPUT_VAL15
        ldr             r7, =M33_STL_TE204_INPUT_VAL15

        subw            r11, r5, #M33_STL_TE204_INPUT_VAL1
        subw            r10, r7, #M33_STL_TE204_INPUT_VAL1

        ldr             r12, =M33_STL_TE204_EXP_VAL15

        bl              m33_stl_compare_gpr

        mov             r11, r10

        bl              m33_stl_compare_gpr

m33_stl_close_te204:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 204
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n020 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n020:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n020

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n020 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n020 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n020:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n020

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n020 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n020 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n020:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n020 PROCEDURE
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
