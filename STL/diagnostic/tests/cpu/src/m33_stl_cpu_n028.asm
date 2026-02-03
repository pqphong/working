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

        .section .s_m33_stl_cpu_n028,"ax"
        .global m33_stl_cpu_n028
        .type m33_stl_cpu_n028, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n028,"ax"
        .global m33_stl_cpu_n028

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n028
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n028.asm"
        .section        .s_m33_stl_cpu_n028,"ax",%progbits
        .global         m33_stl_cpu_n028
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n028
        .global m33_stl_cpu_n028

        .align           4

#endif
m33_stl_cpu_n028:
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
        adr             r3, error_m33_stl_cpu_n028
#else
        adr.w           r3, error_m33_stl_cpu_n028
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 161
//-----------------------------------------------------------------------------/

// This TE tests PKHBT instruction

// GP Registers initialization with input value, PKHBT operation test
// and compare the output result with expected value

m33_stl_te161:

        ldr.w           r6, =M33_STL_TE161_INPUT_VAL1
        ldr.w           r5, =M33_STL_TE161_INPUT_VAL2

        pkhbt           r11, r6, r5, lsl #M33_STL_TE161_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE161_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE161_INPUT_VAL4
        ldr.w           r5, =M33_STL_TE161_INPUT_VAL5

        pkhbt           r11, r6, r5, lsl #M33_STL_TE161_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE161_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE161_INPUT_VAL1
        ldr.w           r5, =M33_STL_TE161_INPUT_VAL5

        pkhbt           r11, r6, r5

        ldr.w           r12, =M33_STL_TE161_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te161:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 161
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 162
//-----------------------------------------------------------------------------/

// This TE tests PKHTB instruction

// GP Registers initialization with input value, PKHTB operation test
// and compare the output result with expected value

m33_stl_te162:

        ldr.w           r5, =M33_STL_TE162_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE162_INPUT_VAL2

        pkhtb           r11, r5, r6

        ldr.w           r12, =M33_STL_TE162_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE162_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE162_INPUT_VAL1

        pkhtb           r11, r5, r6, asr #M33_STL_TE162_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE162_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te162:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 162
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n028:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n028

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n028:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n028

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n028 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n028:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n028 PROCEDURE
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
