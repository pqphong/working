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
#include "m33_stl_datavect_Data.h"

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_cpu_n013,"ax"
        .global m33_stl_cpu_n013
        .type m33_stl_cpu_n013, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n013,"ax"
        .global m33_stl_cpu_n013

#endif
m33_stl_cpu_n013:
//-----------------------------------------------------------------------------/
// SAVE LINK REGISTER TO RETURN FROM TEST TO CALLER
//-----------------------------------------------------------------------------/

        push            {lr}

//-----------------------------------------------------------------------------/
// START CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/

        bl              m33_stl_full_context_save


        bl              m33_stl_full_init

//-----------------------------------------------------------------------------/
// END CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// SAVE LABEL ERROR
//-----------------------------------------------------------------------------/

        adr             r3, error_m33_stl_cpu_n013

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 327
//-----------------------------------------------------------------------------/

// This TE tests VFMA.F32 instruction with RM mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VFMA.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te327:

        ldr             r1, =DATA_VECT_VFMAF32_0

        ldr             r2, =DATA_VECT_VFMAF32_0_SIZE

        ldr             r5, =M33_STL_TE327_INPUT_VAL1

        bl              m33_stl_vfmaf32_test

m33_stl_close_te327:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 327
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n013 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n013:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n013

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n013 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n013 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n013:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n013

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n013 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n013 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n013:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n013 PROCEDURE
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
