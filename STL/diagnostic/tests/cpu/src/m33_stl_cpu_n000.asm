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

        .section .s_m33_stl_cpu_n000,"ax"
        .global m33_stl_cpu_n000
        .type m33_stl_cpu_n000, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n000,"ax"
        .global m33_stl_cpu_n000

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n000
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n000.asm"
        .section        .s_m33_stl_cpu_n000,"ax",%progbits
        .global         m33_stl_cpu_n000
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n000
        .global m33_stl_cpu_n000

        .align           4

#endif
m33_stl_cpu_n000:
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
        adr             r3, error_m33_stl_cpu_n000
#else
        adr.w           r3, error_m33_stl_cpu_n000
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 1
//-----------------------------------------------------------------------------/

// This TE tests ADC with Carry instruction

// GP Registers initialization with input value, ADC operation test and compare
// the output result with expected value.

m33_stl_te1:

        ldr.w           r4, =M33_STL_TE1_INPUT_VAL7
        ldr.w           r2, =M33_STL_TE1_INPUT_VAL8
        ldr.w           r1, =M33_STL_TE1_MASK_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE1_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE1_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE1_INPUT_VAL2

        adcs            r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r7, =M33_STL_TE1_EXP_VAL4

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE1_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE1_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r2
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r2
#endif

        ldr.w           r5, =M33_STL_TE1_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE1_INPUT_VAL4

        adcs            r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r7, =M33_STL_TE1_EXP_VAL5

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE1_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE1_INPUT_VAL9
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r2
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r2
#endif

        ldr.w           r5, =M33_STL_TE1_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE1_INPUT_VAL6

        adcs            r5, r5, r6

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r7, =M33_STL_TE1_EXP_VAL6

        mov             r12, r7

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE1_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te1:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 1
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 2
//-----------------------------------------------------------------------------/

// This TE tests ADD(immediate) instruction

// GP Registers initialization with input value, ADD operation test and compare
// the output result with expected value.

m33_stl_te2:

        ldr.w           r6, =M33_STL_TE2_INPUT_VAL1

        adds            r5, r6, #M33_STL_TE2_INPUT_VAL2

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE2_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE2_INPUT_VAL3

        adds            r5, r6, #M33_STL_TE2_INPUT_VAL4

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE2_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE2_INPUT_VAL5

        adds            r5, r6, #M33_STL_TE2_INPUT_VAL6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE2_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te2:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 2
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 3
//-----------------------------------------------------------------------------/

// This TE tests ADD(large immediate) instruction

// GP Registers initialization with input value, ADD operation test and compare
// the output result with expected value.

m33_stl_te3:

        ldr.w           r5, =M33_STL_TE3_INPUT_VAL1

        adds            r5, r5, #M33_STL_TE3_INPUT_VAL2

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE3_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE3_INPUT_VAL3

        adds            r5, r5, #M33_STL_TE3_INPUT_VAL4

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE3_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE3_INPUT_VAL5

        adds            r5, r5, #M33_STL_TE3_INPUT_VAL6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE3_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te3:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 3
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 4
//-----------------------------------------------------------------------------/

// This TE tests ADD(register) instruction

// GP Registers initialization with input value, ADD operation test and compare
// the output result with expected value.

m33_stl_te4:

        ldr.w           r7, =M33_STL_TE4_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE4_INPUT_VAL2

        adds            r5, r7, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE4_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE4_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE4_INPUT_VAL4

        adds            r5, r7, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE4_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE4_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE4_INPUT_VAL6

        adds            r5, r7, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE4_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te4:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 4
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 5
//-----------------------------------------------------------------------------/

// This TE tests ADD(high register) instruction

// GP Registers initialization with input value, ADD operation test and compare
// the output result with expected value.

m33_stl_te5:

        ldr.w           r5, =M33_STL_TE5_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE5_INPUT_VAL2

        mov             r11, r5

        add             r11, r11, r6

        ldr.w           r7, =M33_STL_TE5_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE5_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE5_INPUT_VAL4

        mov             r11, r5

        add             r11, r11, r6

        ldr.w           r7, =M33_STL_TE5_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE5_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE5_INPUT_VAL6

        mov             r11, r5

        add             r11, r11, r6

        ldr.w           r7, =M33_STL_TE5_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te5:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 5
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 6
//-----------------------------------------------------------------------------/

// This TE tests AND instruction

// GP Registers initialization with input value, AND operation test and compare
// the output result with expected value.

m33_stl_te6:

        ldr.w           r5, =M33_STL_TE6_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE6_INPUT_VAL2

        ands            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE6_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE6_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE6_INPUT_VAL4

        ands            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE6_EXP_VAL2

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE6_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE6_INPUT_VAL6

        ands            r5, r5, r6

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE6_EXP_VAL3

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te6:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 6
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 39
//-----------------------------------------------------------------------------/

// This TE tests TST instruction

// GP Registers initialization with input value, write in APSR register,
// TST operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te39:

        ldr.w           r1, =M33_STL_TE39_INPUT_VAL6

#ifdef TASKING
        ldr.w           r1, =M33_STL_TE39_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r1
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r1
#endif

        ldr.w           r5, =M33_STL_TE39_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE39_INPUT_VAL2

        tst             r5, r6

        ldr.w           r7, =M33_STL_TE39_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE39_MASK_VAL1
        bl              m33_stl_compare_gpr


#ifdef TASKING
        ldr.w           r1, =M33_STL_TE39_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r1
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r1
#endif

        ldr.w           r5, =M33_STL_TE39_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE39_INPUT_VAL4

        tst             r5, r6

        ldr.w           r7, =M33_STL_TE39_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE39_MASK_VAL1
        bl              m33_stl_compare_gpr


#ifdef TASKING
        ldr.w           r1, =M33_STL_TE39_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r1
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r1
#endif

        ldr.w           r5, =M33_STL_TE39_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE39_INPUT_VAL6

        tst             r5, r6

        ldr.w           r7, =M33_STL_TE39_EXP_VAL3

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE39_MASK_VAL1
        bl              m33_stl_compare_gpr

m33_stl_close_te39:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 39
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n000:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n000

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n000:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n000

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n000:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n000 PROCEDURE
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
