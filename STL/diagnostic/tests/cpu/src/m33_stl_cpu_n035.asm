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

        .section .s_m33_stl_cpu_n035,"ax"
        .global m33_stl_cpu_n035
        .type m33_stl_cpu_n035, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n035,"ax"
        .global m33_stl_cpu_n035

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n035
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n035.asm"
        .section        .s_m33_stl_cpu_n035,"ax",%progbits
        .global         m33_stl_cpu_n035
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n035
        .global m33_stl_cpu_n035

        .align           4

#endif
m33_stl_cpu_n035:
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
        adr             r3, error_m33_stl_cpu_n035
#else
        adr.w           r3, error_m33_stl_cpu_n035
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 215
//-----------------------------------------------------------------------------/

// This TE tests UADD16 and UADD8 instructions

// GP Registers initialization with input value, write in APSR register,
// UADD16 and UADD8 operations test, read from APSR register and compare
// the output result with expected value

m33_stl_te215:

        ldr.w           r10, =M33_STL_TE215_INPUT_VAL1
        ldr.w           r1, =M33_STL_TE215_MASK_VAL1

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE215_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_nzcvqg, r10
#endif

        ldr.w           r8, =M33_STL_TE215_INPUT_VAL2
        ldr.w           r5, =M33_STL_TE215_INPUT_VAL2

        uadd16          r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE215_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE215_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE215_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_nzcvqg, r10
#endif

        ldr.w           r8, =M33_STL_TE215_INPUT_VAL3
        ldr.w           r5, =M33_STL_TE215_INPUT_VAL3

        uadd16          r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE215_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE215_EXP_VAL4

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE215_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_nzcvqg, r10
#endif

        ldr.w           r8, =M33_STL_TE215_INPUT_VAL4
        ldr.w           r5, =M33_STL_TE215_INPUT_VAL4

        uadd8           r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE215_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE215_EXP_VAL6

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE215_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_nzcvqg, r10
#endif

        ldr.w           r8, =M33_STL_TE215_INPUT_VAL5
        ldr.w           r5, =M33_STL_TE215_INPUT_VAL5

        uadd8           r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE215_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE215_EXP_VAL8

        bl              m33_stl_compare_gpr

m33_stl_close_te215:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 215
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 216
//-----------------------------------------------------------------------------/

// This TE tests UASX and USAX instructions

// GP Registers initialization with input value, write in APSR register,
// UASX and USAX operations test, read from APSR register and compare
// the output result with expected value

m33_stl_te216:

        ldr.w           r10, =M33_STL_TE216_INPUT_VAL1
        ldr.w           r1, =M33_STL_TE216_MASK_VAL1

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE216_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_g, r10
#endif

        ldr.w           r8, =M33_STL_TE216_INPUT_VAL2
        ldr.w           r5, =M33_STL_TE216_INPUT_VAL3

        uasx            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE216_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE216_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE216_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_g, r10
#endif

        ldr.w           r8, =M33_STL_TE216_INPUT_VAL3
        ldr.w           r5, =M33_STL_TE216_INPUT_VAL2

        uasx            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE216_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE216_EXP_VAL4

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE216_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_g, r10
#endif

        ldr.w           r8, =M33_STL_TE216_INPUT_VAL2
        ldr.w           r5, =M33_STL_TE216_INPUT_VAL2

        uasx            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE216_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE216_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE216_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_g, r10
#endif

        ldr.w           r8, =M33_STL_TE216_INPUT_VAL3
        ldr.w           r5, =M33_STL_TE216_INPUT_VAL3

        usax            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE216_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE216_EXP_VAL6

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE216_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_g, r10
#endif

        ldr.w           r8, =M33_STL_TE216_INPUT_VAL2
        ldr.w           r5, =M33_STL_TE216_INPUT_VAL2

        usax            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE216_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE216_EXP_VAL8

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r10, =M33_STL_TE216_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r10
        msr             apsr, r6
#else
        msr             apsr_g, r10
#endif

        ldr.w           r8, =M33_STL_TE216_INPUT_VAL4
        ldr.w           r5, =M33_STL_TE216_INPUT_VAL5

        usax            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE216_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE216_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te216:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 216
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 218
//-----------------------------------------------------------------------------/

// This TE tests UHADD16 and UHADD8 instructions

// GP Registers initialization with input value, UHADD16 and UHADD8 operations test
// and compare the output result with expected value

m33_stl_te218:

        ldr.w           r8, =M33_STL_TE218_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE218_INPUT_VAL2

        uhadd8          r11, r8, r10

        ldr.w           r12, =M33_STL_TE218_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE218_INPUT_VAL3
        ldr.w           r10, =M33_STL_TE218_INPUT_VAL3

        uhadd8          r11, r10, r8

        ldr.w           r12, =M33_STL_TE218_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE218_INPUT_VAL4
        ldr.w           r10, =M33_STL_TE218_INPUT_VAL5

        uhadd16         r11, r8, r10

        ldr.w           r12, =M33_STL_TE218_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE218_INPUT_VAL3
        ldr.w           r10, =M33_STL_TE218_INPUT_VAL6

        uhadd16         r11, r8, r10

        ldr.w           r12, =M33_STL_TE218_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te218:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 218
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 219
//-----------------------------------------------------------------------------/

// This TE tests UHASX and UHSAX instructions

// GP Registers initialization with input value, UHASX and UHSAX operations test
// and compare the output result with expected value

m33_stl_te219:

        ldr.w           r8, =M33_STL_TE219_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE219_INPUT_VAL2

        uhasx           r11, r8, r10

        ldr.w           r12, =M33_STL_TE219_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE219_INPUT_VAL2
        ldr.w           r10, =M33_STL_TE219_INPUT_VAL1

        uhasx           r11, r10, r8

        ldr.w           r12, =M33_STL_TE219_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE219_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE219_INPUT_VAL1

        uhasx           r11, r10, r8

        ldr.w           r12, =M33_STL_TE219_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE219_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE219_INPUT_VAL1

        uhsax           r11, r8, r10

        ldr.w           r12, =M33_STL_TE219_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE219_INPUT_VAL2
        ldr.w           r10, =M33_STL_TE219_INPUT_VAL2

        uhsax           r11, r8, r10

        ldr.w           r12, =M33_STL_TE219_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE219_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE219_INPUT_VAL2

        uhsax           r11, r8, r10

        ldr.w           r12, =M33_STL_TE219_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te219:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 219
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 220
//-----------------------------------------------------------------------------/

// This TE tests UHSUB16 and UHSUB8 instructions

// GP Registers initialization with input value, UHSUB16 and UHSUB8 operations test
// and compare the output result with expected value

m33_stl_te220:

        ldr.w           r8, =M33_STL_TE220_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE220_INPUT_VAL2

        uhsub8          r11, r8, r10

        ldr.w           r12, =M33_STL_TE220_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE220_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE220_INPUT_VAL2

        uhsub8          r11, r8, r10

        ldr.w           r12, =M33_STL_TE220_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE220_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE220_INPUT_VAL2

        uhsub16         r11, r8, r10

        ldr.w           r12, =M33_STL_TE220_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE220_INPUT_VAL2
        ldr.w           r10, =M33_STL_TE220_INPUT_VAL1

        uhsub16         r11, r8, r10

        ldr.w           r12, =M33_STL_TE220_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te220:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 220
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 229
//-----------------------------------------------------------------------------/

// This TE tests USAD8 and USADA8 instructions

// GP Registers initialization with input value, USAD8 and USADA8 operations test
// and compare the output result with expected value

m33_stl_te229:

        ldr.w           r8, =M33_STL_TE229_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE229_INPUT_VAL2

        usad8           r11, r8, r10

        ldr.w           r12, =M33_STL_TE229_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE229_INPUT_VAL3
        ldr.w           r10, =M33_STL_TE229_INPUT_VAL3

        usad8           r11, r8, r10

        ldr.w           r12, =M33_STL_TE229_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE229_INPUT_VAL4

        usad8           r11, r8, r10

        ldr.w           r12, =M33_STL_TE229_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE229_INPUT_VAL6
        ldr.w           r10, =M33_STL_TE229_INPUT_VAL7

        usad8           r11, r8, r10

        ldr.w           r12, =M33_STL_TE229_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE229_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE229_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE229_INPUT_VAL5

        usada8          r11, r8, r10, r6

        ldr.w           r12, =M33_STL_TE229_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r8, =M33_STL_TE229_INPUT_VAL3
        ldr.w           r10, =M33_STL_TE229_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE229_INPUT_VAL4

        usada8          r11, r8, r10, r6

        ldr.w           r12, =M33_STL_TE229_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE229_INPUT_VAL3

        usada8          r11, r6, r8, r10

        ldr.w           r12, =M33_STL_TE229_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE229_INPUT_VAL3
        ldr.w           r8, =M33_STL_TE229_INPUT_VAL6
        ldr.w           r10, =M33_STL_TE229_INPUT_VAL7

        usada8          r11, r6, r8, r10

        ldr.w           r12, =M33_STL_TE229_EXP_VAL7

        bl              m33_stl_compare_gpr

m33_stl_close_te229:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 229
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 232
//-----------------------------------------------------------------------------/

// This TE tests USUB16 and USUB8 instructions

// GP Registers initialization with input value, write in APSR register,
// USUB16 and USUB8 operations test, read from APSR register and compare
// the output result with expected value

m33_stl_te232:

        ldr.w           r9, =M33_STL_TE232_INPUT_VAL5
        ldr.w           r5, =M33_STL_TE232_MASK_VAL1

#ifdef TASKING
        ldr.w           r9, =M33_STL_TE232_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r9
        msr             apsr, r6
#else
        msr             apsr_g, r9
#endif

        ldr.w           r8, =M33_STL_TE232_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE232_INPUT_VAL2

        usub16          r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr.w           r12, =M33_STL_TE232_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE232_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r9, =M33_STL_TE232_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r9
        msr             apsr, r6
#else
        msr             apsr_g, r9
#endif

        ldr.w           r8, =M33_STL_TE232_INPUT_VAL2
        ldr.w           r10, =M33_STL_TE232_INPUT_VAL1

        usub16          r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr.w           r12, =M33_STL_TE232_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE232_EXP_VAL6

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r9, =M33_STL_TE232_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r9
        msr             apsr, r6
#else
        msr             apsr_g, r9
#endif

        ldr.w           r8, =M33_STL_TE232_INPUT_VAL3
        ldr.w           r10, =M33_STL_TE232_INPUT_VAL4

        usub8           r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr.w           r12, =M33_STL_TE232_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE232_EXP_VAL7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r9, =M33_STL_TE232_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r9
        msr             apsr, r6
#else
        msr             apsr_g, r9
#endif

        ldr.w           r8, =M33_STL_TE232_INPUT_VAL4
        ldr.w           r10, =M33_STL_TE232_INPUT_VAL3

        usub8           r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr.w           r12, =M33_STL_TE232_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE232_EXP_VAL8

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r9, =M33_STL_TE232_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r9
        msr             apsr, r6
#else
        msr             apsr_g, r9
#endif

        ldr.w           r8, =M33_STL_TE232_INPUT_VAL2
        ldr.w           r10, =M33_STL_TE232_INPUT_VAL1

        usub8           r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr.w           r12, =M33_STL_TE232_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE232_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te232:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 232
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n035 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n035:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n035

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n035 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n035 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n035:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n035

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n035 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n035 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n035:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n035 PROCEDURE
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
