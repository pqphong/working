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

        .section .s_m33_stl_cpu_n004,"ax"
        .global m33_stl_cpu_n004
        .type m33_stl_cpu_n004, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n004,"ax"
        .global m33_stl_cpu_n004

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n004
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n004.asm"
        .section        .s_m33_stl_cpu_n004,"ax",%progbits
        .global         m33_stl_cpu_n004
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n004
        .global m33_stl_cpu_n004

        .align           4

#endif
m33_stl_cpu_n004:
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
        adr             r3, error_m33_stl_cpu_n004
#else
        adr.w           r3, error_m33_stl_cpu_n004
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 20
//-----------------------------------------------------------------------------/

// This TE tests MUL instruction

// GP Registers initialization with input value, MUL operation test and compare
// the output result with expected value.

m33_stl_te20:

        ldr.w           r6, =M33_STL_TE20_INPUT_VAL1
        ldr.w           r5, =M33_STL_TE20_INPUT_VAL2

        muls            r5, r6, r5

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE20_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE20_INPUT_VAL3
        ldr.w           r5, =M33_STL_TE20_INPUT_VAL4

        muls            r5, r6, r5

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE20_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE20_INPUT_VAL5
        ldr.w           r5, =M33_STL_TE20_INPUT_VAL6

        muls            r5, r6, r5

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE20_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE20_INPUT_VAL6
        ldr.w           r5, =M33_STL_TE20_INPUT_VAL7

        muls            r5, r6, r5

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE20_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te20:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 20
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 21
//-----------------------------------------------------------------------------/

// This TE tests RSBS instruction

// GP Registers initialization with input value, RSBS operation test and compare
// the output result with expected value.

m33_stl_te21:

        ldr.w           r6, =M33_STL_TE21_INPUT_VAL2

        rsbs            r5, r6, #M33_STL_TE21_INPUT_VAL1

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE21_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE21_INPUT_VAL3

        rsbs            r5, r6, #M33_STL_TE21_INPUT_VAL1

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE21_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE21_INPUT_VAL4

        rsbs            r5, r6, #M33_STL_TE21_INPUT_VAL1

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE21_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE21_INPUT_VAL5

        rsbs            r5, r6, #M33_STL_TE21_INPUT_VAL1

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE21_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te21:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 21
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 22
//-----------------------------------------------------------------------------/

// This TE tests ROR(register) instruction

// GP Registers initialization with input value, ROR operation test and compare
// the output result with expected value.

m33_stl_te22:

        ldr.w           r5, =M33_STL_TE22_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE22_INPUT_VAL2

        rors            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE22_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE22_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE22_INPUT_VAL2

        rors            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE22_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE22_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE22_INPUT_VAL4

        rors            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE22_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE22_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE22_INPUT_VAL4

        rors            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE22_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te22:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 22
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 23
//-----------------------------------------------------------------------------/

// This TE tests SBC(register) instruction

// GP Registers initialization with input value, SBC(register) operations test register
// and compare the output result with expected value.

m33_stl_te23:

        ldr.w           r5, =M33_STL_TE23_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE23_INPUT_VAL2

        sbcs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE23_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE23_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE23_INPUT_VAL4

        sbcs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE23_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE23_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE23_INPUT_VAL6

        sbcs            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE23_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te23:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 23
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 24
//-----------------------------------------------------------------------------/

// This TE tests SUB(immediate) instruction

// GP Registers initialization with input value, SUB(immediate) operations test register
// and compare the output result with expected value.

m33_stl_te24:

        ldr.w           r6, =M33_STL_TE24_INPUT_VAL1

        subs            r5, r6, #M33_STL_TE24_INPUT_VAL2

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE24_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE24_INPUT_VAL3

        subs            r5, r6, #M33_STL_TE24_INPUT_VAL4

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE24_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE24_INPUT_VAL5

        subs            r5, r6, #M33_STL_TE24_INPUT_VAL6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE24_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te24:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 24
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 25
//-----------------------------------------------------------------------------/

// This TE tests SUB(large immediate) instruction

// GP Registers initialization with input value, SUB(large immediate) operations test register
// and compare the output result with expected value.

m33_stl_te25:

        ldr.w           r5, =M33_STL_TE25_INPUT_VAL1

        subs            r5, r5, #M33_STL_TE25_INPUT_VAL2

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE25_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE25_INPUT_VAL3

        subs            r5, r5, #M33_STL_TE25_INPUT_VAL4

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE25_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE25_INPUT_VAL5

        subs            r5, r5, #M33_STL_TE25_INPUT_VAL6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE25_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te25:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 25
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 26
//-----------------------------------------------------------------------------/

// This TE tests SUB(register) instruction

// GP Registers initialization with input value, SUB(register) operations test register
// and compare the output result with expected value.

m33_stl_te26:

        ldr.w           r4, =M33_STL_TE26_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE26_INPUT_VAL2

        subs            r5, r4, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE26_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE26_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE26_INPUT_VAL4

        subs            r5, r4, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE26_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE26_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE26_INPUT_VAL6

        subs            r5, r4, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE26_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te26:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 26
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n004 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n004:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n004

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n004 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n004 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n004:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n004

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n004 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n004 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n004:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n004 PROCEDURE
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
