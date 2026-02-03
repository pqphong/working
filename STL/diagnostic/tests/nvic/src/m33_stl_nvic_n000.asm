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
#include "m33_stl_registerInfo.h"

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_nvic_n000,"ax"
        .global m33_stl_nvic_n000
        .type m33_stl_nvic_n000, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_nvic_n000,"ax"
        .global m33_stl_nvic_n000

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore
        extern          m33_stl_nvicRegisterInfo

        public m33_stl_nvic_n000
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_nvic_n000.asm"
        .section        .s_m33_stl_nvic_n000,"ax",%progbits
        .global         m33_stl_nvic_n000
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore
        .extern          m33_stl_nvicRegisterInfo

        .section .text.m33_stl_nvic_n000
        .global m33_stl_nvic_n000

        .align           4

#endif
m33_stl_nvic_n000:
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
        adr             r3, error_m33_stl_nvic_n000
#else
        adr.w           r3, error_m33_stl_nvic_n000
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 273
//-----------------------------------------------------------------------------/

// This TE tests the Control Registers of the NVIC module

// The test execution loads the address of m33_stl_nvicRegisterInfo into register r5,
// loads the value of M33_STL_NVIC_TOT_REGS into register r6,
// reads from the tested register, performs AND operation with the mask value,
// compares the result with the expected value. This TE is implemented with
// a loop and ends when the registers r7 and r6 are equal

m33_stl_te273:

        ldr.w           r5, =m33_stl_nvicRegisterInfo
        ldr.w           r6, =M33_STL_NVIC_TOT_REGS

        ldr.w           r7, =M33_STL_TE273_INPUT_VAL1

loop_nvic:

        ldmia           r5!, {r0-r2}

#ifdef TASKING
        ldr             r11, [r0]
#else
        ldr.w           r11, [r0]
#endif

        and             r11, r11, r1

        mov             r12, r2

        bl              m33_stl_compare_gpr

        add             r7, r7, #M33_STL_TE273_INPUT_VAL2

        cmp             r7, r6
        bne             loop_nvic

m33_stl_close_te273:


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 273
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_nvic_n000 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_nvic_n000:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_nvic_n000

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_nvic_n000 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_nvic_n000 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_nvic_n000:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_nvic_n000

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_nvic_n000 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_nvic_n000 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_nvic_n000:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_nvic_n000 PROCEDURE
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
