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

        .section .s_m33_stl_cpu_n035,"ax"
        .global m33_stl_cpu_n035
        .type m33_stl_cpu_n035, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n035,"ax"
        .global m33_stl_cpu_n035

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

        adr             r3, error_m33_stl_cpu_n035

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 215
//-----------------------------------------------------------------------------/

// This TE tests UADD16 and UADD8 instructions

// GP Registers initialization with input value, write in APSR register,
// UADD16 and UADD8 operations test, read from APSR register and compare
// the output result with expected value

m33_stl_te215:

        ldr             r10, =M33_STL_TE215_INPUT_VAL1
        ldr             r1, =M33_STL_TE215_MASK_VAL1

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE215_INPUT_VAL2
        ldr             r5, =M33_STL_TE215_INPUT_VAL2

        uadd16          r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE215_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE215_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE215_INPUT_VAL3
        ldr             r5, =M33_STL_TE215_INPUT_VAL3

        uadd16          r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE215_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE215_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE215_INPUT_VAL4
        ldr             r5, =M33_STL_TE215_INPUT_VAL4

        uadd8           r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE215_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE215_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE215_INPUT_VAL5
        ldr             r5, =M33_STL_TE215_INPUT_VAL5

        uadd8           r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE215_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE215_EXP_VAL8

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

        ldr             r10, =M33_STL_TE216_INPUT_VAL1
        ldr             r1, =M33_STL_TE216_MASK_VAL1

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE216_INPUT_VAL2
        ldr             r5, =M33_STL_TE216_INPUT_VAL3

        uasx            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE216_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE216_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE216_INPUT_VAL3
        ldr             r5, =M33_STL_TE216_INPUT_VAL2

        uasx            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE216_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE216_EXP_VAL4

        bl              m33_stl_compare_gpr

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE216_INPUT_VAL2
        ldr             r5, =M33_STL_TE216_INPUT_VAL2

        uasx            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE216_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE216_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE216_INPUT_VAL3
        ldr             r5, =M33_STL_TE216_INPUT_VAL3

        usax            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE216_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE216_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE216_INPUT_VAL2
        ldr             r5, =M33_STL_TE216_INPUT_VAL2

        usax            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE216_EXP_VAL7

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE216_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_g, r10

        ldr             r8, =M33_STL_TE216_INPUT_VAL4
        ldr             r5, =M33_STL_TE216_INPUT_VAL5

        usax            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE216_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE216_EXP_VAL4

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

        ldr             r8, =M33_STL_TE218_INPUT_VAL1
        ldr             r10, =M33_STL_TE218_INPUT_VAL2

        uhadd8          r11, r8, r10

        ldr             r12, =M33_STL_TE218_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE218_INPUT_VAL3
        ldr             r10, =M33_STL_TE218_INPUT_VAL3

        uhadd8          r11, r10, r8

        ldr             r12, =M33_STL_TE218_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE218_INPUT_VAL4
        ldr             r10, =M33_STL_TE218_INPUT_VAL5

        uhadd16         r11, r8, r10

        ldr             r12, =M33_STL_TE218_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE218_INPUT_VAL3
        ldr             r10, =M33_STL_TE218_INPUT_VAL6

        uhadd16         r11, r8, r10

        ldr             r12, =M33_STL_TE218_EXP_VAL2

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

        ldr             r8, =M33_STL_TE219_INPUT_VAL1
        ldr             r10, =M33_STL_TE219_INPUT_VAL2

        uhasx           r11, r8, r10

        ldr             r12, =M33_STL_TE219_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE219_INPUT_VAL2
        ldr             r10, =M33_STL_TE219_INPUT_VAL1

        uhasx           r11, r10, r8

        ldr             r12, =M33_STL_TE219_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE219_INPUT_VAL1
        ldr             r10, =M33_STL_TE219_INPUT_VAL1

        uhasx           r11, r10, r8

        ldr             r12, =M33_STL_TE219_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE219_INPUT_VAL1
        ldr             r10, =M33_STL_TE219_INPUT_VAL1

        uhsax           r11, r8, r10

        ldr             r12, =M33_STL_TE219_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE219_INPUT_VAL2
        ldr             r10, =M33_STL_TE219_INPUT_VAL2

        uhsax           r11, r8, r10

        ldr             r12, =M33_STL_TE219_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE219_INPUT_VAL1
        ldr             r10, =M33_STL_TE219_INPUT_VAL2

        uhsax           r11, r8, r10

        ldr             r12, =M33_STL_TE219_EXP_VAL5

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

        ldr             r8, =M33_STL_TE220_INPUT_VAL1
        ldr             r10, =M33_STL_TE220_INPUT_VAL2

        uhsub8          r11, r8, r10

        ldr             r12, =M33_STL_TE220_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE220_INPUT_VAL1
        ldr             r10, =M33_STL_TE220_INPUT_VAL2

        uhsub8          r11, r8, r10

        ldr             r12, =M33_STL_TE220_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE220_INPUT_VAL1
        ldr             r10, =M33_STL_TE220_INPUT_VAL2

        uhsub16         r11, r8, r10

        ldr             r12, =M33_STL_TE220_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE220_INPUT_VAL2
        ldr             r10, =M33_STL_TE220_INPUT_VAL1

        uhsub16         r11, r8, r10

        ldr             r12, =M33_STL_TE220_EXP_VAL3

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

        ldr             r8, =M33_STL_TE229_INPUT_VAL1
        ldr             r10, =M33_STL_TE229_INPUT_VAL2

        usad8           r11, r8, r10

        ldr             r12, =M33_STL_TE229_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE229_INPUT_VAL3
        ldr             r10, =M33_STL_TE229_INPUT_VAL3

        usad8           r11, r8, r10

        ldr             r12, =M33_STL_TE229_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE229_INPUT_VAL4

        usad8           r11, r8, r10

        ldr             r12, =M33_STL_TE229_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE229_INPUT_VAL6
        ldr             r10, =M33_STL_TE229_INPUT_VAL7

        usad8           r11, r8, r10

        ldr             r12, =M33_STL_TE229_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE229_INPUT_VAL1
        ldr             r10, =M33_STL_TE229_INPUT_VAL2
        ldr             r6, =M33_STL_TE229_INPUT_VAL5

        usada8          r11, r8, r10, r6

        ldr             r12, =M33_STL_TE229_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE229_INPUT_VAL3
        ldr             r10, =M33_STL_TE229_INPUT_VAL3
        ldr             r6, =M33_STL_TE229_INPUT_VAL4

        usada8          r11, r8, r10, r6

        ldr             r12, =M33_STL_TE229_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE229_INPUT_VAL3

        usada8          r11, r6, r8, r10

        ldr             r12, =M33_STL_TE229_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE229_INPUT_VAL3
        ldr             r8, =M33_STL_TE229_INPUT_VAL6
        ldr             r10, =M33_STL_TE229_INPUT_VAL7

        usada8          r11, r6, r8, r10

        ldr             r12, =M33_STL_TE229_EXP_VAL7

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

        ldr             r9, =M33_STL_TE232_INPUT_VAL5
        ldr             r5, =M33_STL_TE232_MASK_VAL1

        msr             apsr_g, r9

        ldr             r8, =M33_STL_TE232_INPUT_VAL1
        ldr             r10, =M33_STL_TE232_INPUT_VAL2

        usub16          r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr             r12, =M33_STL_TE232_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE232_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_g, r9

        ldr             r8, =M33_STL_TE232_INPUT_VAL2
        ldr             r10, =M33_STL_TE232_INPUT_VAL1

        usub16          r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr             r12, =M33_STL_TE232_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE232_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_g, r9

        ldr             r8, =M33_STL_TE232_INPUT_VAL3
        ldr             r10, =M33_STL_TE232_INPUT_VAL4

        usub8           r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr             r12, =M33_STL_TE232_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE232_EXP_VAL7

        bl              m33_stl_compare_gpr

        msr             apsr_g, r9

        ldr             r8, =M33_STL_TE232_INPUT_VAL4
        ldr             r10, =M33_STL_TE232_INPUT_VAL3

        usub8           r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr             r12, =M33_STL_TE232_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE232_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_g, r9

        ldr             r8, =M33_STL_TE232_INPUT_VAL2
        ldr             r10, =M33_STL_TE232_INPUT_VAL1

        usub8           r11, r8, r10

        mrs             r7, apsr

        and             r7, r7, r5

        ldr             r12, =M33_STL_TE232_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE232_EXP_VAL6

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

        .align 4
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
#ifdef __GHS__
        .align          8
        .end
#endif
#ifdef GCC_COMPILER
        .align          8
        .end
#endif
        end
