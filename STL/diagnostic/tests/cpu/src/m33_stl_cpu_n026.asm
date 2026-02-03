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

        .section .s_m33_stl_cpu_n026,"ax"
        .global m33_stl_cpu_n026
        .type m33_stl_cpu_n026, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n026,"ax"
        .global m33_stl_cpu_n026

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n026
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n026.asm"
        .section        .s_m33_stl_cpu_n026,"ax",%progbits
        .global         m33_stl_cpu_n026
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n026
        .global m33_stl_cpu_n026

        .align           4

#endif
m33_stl_cpu_n026:
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
        adr             r3, error_m33_stl_cpu_n026
#else
        adr.w           r3, error_m33_stl_cpu_n026
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 155
//-----------------------------------------------------------------------------/

// This TE tests MLA and MLS instructions

// GP Registers initialization with input value, write in APSR register,
// MLA and MLS operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te155:

        ldr.w           r6, =M33_STL_TE155_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE155_INPUT_VAL2
        ldr.w           r8, =M33_STL_TE155_INPUT_VAL3

        mla             r11, r6, r7, r8

        ldr.w           r12, =M33_STL_TE155_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE155_INPUT_VAL4
        ldr.w           r7, =M33_STL_TE155_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE155_INPUT_VAL6

        mla             r11, r6, r7, r8

        ldr.w           r12, =M33_STL_TE155_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE155_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE155_INPUT_VAL2
        ldr.w           r8, =M33_STL_TE155_INPUT_VAL3

        mls             r11, r6, r7, r8

        ldr.w           r12, =M33_STL_TE155_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE155_INPUT_VAL4
        ldr.w           r7, =M33_STL_TE155_INPUT_VAL5
        ldr.w           r8, =M33_STL_TE155_INPUT_VAL6

        mls             r11, r6, r7, r8

        ldr.w           r12, =M33_STL_TE155_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te155:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 155
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 157
//-----------------------------------------------------------------------------/

// This TE tests MUL instructions

// GP Registers initialization with input value, write in APSR register,
// MUL operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te157:

        ldr.w           r6, =M33_STL_TE157_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE157_INPUT_VAL2

        mul             r11, r6, r7

        ldr.w           r12, =M33_STL_TE157_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE157_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE157_INPUT_VAL4

        mul             r11, r6, r7

        ldr.w           r12, =M33_STL_TE157_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE157_INPUT_VAL5
        ldr.w           r7, =M33_STL_TE157_INPUT_VAL6

        mul             r11, r6, r7

        ldr.w           r12, =M33_STL_TE157_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te157:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 157
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n026 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n026:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n026

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n026 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n026 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n026:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n026

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n026 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n026 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n026:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n026 PROCEDURE
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
