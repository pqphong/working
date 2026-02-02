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
#include "m33_stl_registerInfo.h"

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_nvic_n000,"ax"
        .global m33_stl_nvic_n000
        .type m33_stl_nvic_n000, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_nvic_n000,"ax"
        .global m33_stl_nvic_n000

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

        adr             r3, error_m33_stl_nvic_n000

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

        ldr             r5, =m33_stl_nvicRegisterInfo
        ldr             r6, =M33_STL_NVIC_TOT_REGS

        ldr             r7, =M33_STL_TE273_INPUT_VAL1
        ldr             r8, =M33_STL_TE273_INPUT_VAL2

loop_nvic:

        ldmia           r5!, {r0-r2}

        ldr             r11, [r0]

        and             r11, r11, r1

        mov             r12, r2

        bl              m33_stl_compare_gpr

        add             r7, r7, r8

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

        .align 4
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
#ifdef __GHS__
        .align          8
        .end
#endif
#ifdef GCC_COMPILER
        .align          8
        .end
#endif
        end