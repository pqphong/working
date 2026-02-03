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
#include "m33_stl_datavect_Data.h"

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_cpu_n036,"ax"
        .global m33_stl_cpu_n036
        .type m33_stl_cpu_n036, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n036,"ax"
        .global m33_stl_cpu_n036

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n036
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n036.asm"
        .section        .s_m33_stl_cpu_n036,"ax",%progbits
        .global         m33_stl_cpu_n036
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n036
        .global m33_stl_cpu_n036

        .align           4

#endif
m33_stl_cpu_n036:
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
        adr             r3, error_m33_stl_cpu_n036
#else
        adr.w           r3, error_m33_stl_cpu_n036
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 221
//-----------------------------------------------------------------------------/

// This TE tests UMAAL instruction

// GP Registers initialization with input value, UMAAL operation test
// and compare the output result with expected value

m33_stl_te221:

        ldr.w           r11, =M33_STL_TE221_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE221_INPUT_VAL1
        ldr.w           r0, =M33_STL_TE221_INPUT_VAL2
        ldr.w           r5, =M33_STL_TE221_INPUT_VAL3

        umaal           r11, r10, r0, r5

        ldr.w           r12, =M33_STL_TE221_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r9, r11
        mov             r11, r10

        ldr.w           r12, =M33_STL_TE221_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r10, r11

        ldr.w           r0, =M33_STL_TE221_INPUT_VAL4
        ldr.w           r5, =M33_STL_TE221_INPUT_VAL4

        umaal           r9, r10, r0, r5

        mov             r11, r9

        ldr.w           r12, =M33_STL_TE221_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r10

        ldr.w           r12, =M33_STL_TE221_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te221:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 221
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 222
//-----------------------------------------------------------------------------/

// This TE tests UMLAL instruction

// GP Registers initialization with input value, UMLAL operation test
// and compare the output result with expected value

m33_stl_te222:

        ldr.w           r11, =M33_STL_TE222_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE222_INPUT_VAL1

        ldr.w           r0, =M33_STL_TE222_INPUT_VAL2
        ldr.w           r5, =M33_STL_TE222_INPUT_VAL3

        umlal           r11, r6, r0, r5

        ldr.w           r12, =M33_STL_TE222_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr.w           r12, =M33_STL_TE222_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE222_INPUT_VAL4

        umlal           r11, r6, r0, r5

        ldr.w           r12, =M33_STL_TE222_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr.w           r12, =M33_STL_TE222_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r0, =M33_STL_TE222_INPUT_VAL5
        ldr.w           r5, =M33_STL_TE222_INPUT_VAL5
        ldr.w           r11, =M33_STL_TE222_INPUT_VAL6
        ldr.w           r6, =M33_STL_TE222_INPUT_VAL5

        umlal           r11, r6, r0, r5

        ldr.w           r12, =M33_STL_TE222_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr.w           r12, =M33_STL_TE222_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te222:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 222
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 223
//-----------------------------------------------------------------------------/

// This TE tests UMULL instruction

// GP Registers initialization with data vector elements,
// execute UMULL operation and compare output with expected value.
// This concept used data vector

m33_stl_te223:

#ifdef __IAR__
        extern          DATA_VECT_UMULL_0
        extern          m33_stl_umull_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_UMULL_0
        .extern          m33_stl_umull_test
#endif

        ldr             r1, =DATA_VECT_UMULL_0

        ldr             r2, =DATA_VECT_UMULL_0_SIZE

        bl              m33_stl_umull_test

m33_stl_close_te223:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 223
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n036 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n036:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n036

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n036 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n036 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n036:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n036

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n036 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n036 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n036:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n036 PROCEDURE
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
