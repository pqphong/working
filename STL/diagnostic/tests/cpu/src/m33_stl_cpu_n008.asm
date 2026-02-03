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

        .section .s_m33_stl_cpu_n008,"ax"
        .global m33_stl_cpu_n008
        .type m33_stl_cpu_n008, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n008,"ax"
        .global m33_stl_cpu_n008

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n008
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n008.asm"
        .section        .s_m33_stl_cpu_n008,"ax",%progbits
        .global         m33_stl_cpu_n008
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n008
        .global m33_stl_cpu_n008

        .align           4

#endif
m33_stl_cpu_n008:
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
        adr             r3, error_m33_stl_cpu_n008
#else
        adr.w           r3, error_m33_stl_cpu_n008
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 34
//-----------------------------------------------------------------------------/

// This TE tests CMP instruction

// GP Registers initialization with input value, write in APSR register,
// CMP operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te34:

        ldr.w           r4, =M33_STL_TE34_INPUT_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE34_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE34_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE34_INPUT_VAL3

        cmp             r5, r6

        ldr.w           r7, =M33_STL_TE34_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE34_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE34_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE34_INPUT_VAL4
        ldr.w           r6, =M33_STL_TE34_INPUT_VAL2

        cmp             r5, r6

        ldr.w           r7, =M33_STL_TE34_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE34_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE34_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE34_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE34_INPUT_VAL3

        mov             r8, r5

        cmp             r8, r6

        ldr.w           r7, =M33_STL_TE34_EXP_VAL3

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE34_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE34_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE34_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE34_INPUT_VAL1

        mov             r8, r5

        cmp             r8, r6

        ldr.w           r7, =M33_STL_TE34_EXP_VAL4

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE34_MASK_VAL1
        bl              m33_stl_compare_gpr

m33_stl_close_te34:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 34
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 35
//-----------------------------------------------------------------------------/

// This TE tests CMN instruction

// GP Registers initialization with input value, write in APSR register,
// CMN operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te35:

        ldr.w           r4, =M33_STL_TE35_INPUT_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE35_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE35_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE35_INPUT_VAL3

        cmn             r5, r6

        ldr.w           r7, =M33_STL_TE35_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE35_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE35_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE35_INPUT_VAL4
        ldr.w           r6, =M33_STL_TE35_INPUT_VAL2

        cmn             r5, r6

        ldr.w           r7, =M33_STL_TE35_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE35_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE35_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE35_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE35_INPUT_VAL3

        cmn             r5, r6

        ldr.w           r7, =M33_STL_TE35_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE35_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE35_INPUT_VAL6
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE35_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE35_INPUT_VAL5

        cmn             r5, r6

        ldr.w           r7, =M33_STL_TE35_EXP_VAL3

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE35_MASK_VAL1
        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE35_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE35_INPUT_VAL1

        cmn             r5, r6

        ldr.w           r7, =M33_STL_TE35_EXP_VAL4

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE35_MASK_VAL1
        bl              m33_stl_compare_gpr

m33_stl_close_te35:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 35
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 36
//-----------------------------------------------------------------------------/

// This TE tests CMP(immediate) instruction

// GP Registers initialization with input value, write in APSR register,
// CMP(immediate) operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te36:

        ldr.w           r4, =M33_STL_TE36_INPUT_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE36_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE36_INPUT_VAL2

        cmp             r5, #M33_STL_TE36_INPUT_VAL6

        ldr.w           r7, =M33_STL_TE36_EXP_VAL1

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE36_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE36_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE36_INPUT_VAL4

        cmp             r5, #M33_STL_TE36_INPUT_VAL7

        ldr.w           r7, =M33_STL_TE36_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE36_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE36_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE36_INPUT_VAL3

        cmp             r5, #M33_STL_TE36_INPUT_VAL6

        ldr.w           r7, =M33_STL_TE36_EXP_VAL2

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE36_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE36_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE36_INPUT_VAL7

        cmp             r5, #M33_STL_TE36_INPUT_VAL7

        ldr.w           r7, =M33_STL_TE36_EXP_VAL3

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE36_MASK_VAL1
        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE36_INPUT_VAL1

        cmp             r5, #M33_STL_TE36_INPUT_VAL5

        ldr.w           r7, =M33_STL_TE36_EXP_VAL4

        mov             r12, r7

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE36_MASK_VAL1
        bl              m33_stl_compare_gpr

m33_stl_close_te36:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 36
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n008:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n008

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n008:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n008

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n008 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n008:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n008 PROCEDURE
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
