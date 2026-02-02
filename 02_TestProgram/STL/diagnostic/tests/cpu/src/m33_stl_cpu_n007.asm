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
#include "m33_stl_datavect_Data.h"

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_cpu_n007,"ax"
        .global m33_stl_cpu_n007
        .type m33_stl_cpu_n007, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n007,"ax"
        .global m33_stl_cpu_n007

#endif
m33_stl_cpu_n007:
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

        adr             r3, error_m33_stl_cpu_n007

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 32
//-----------------------------------------------------------------------------/

// This TE tests SDIV instruction

// GP Registers initialization with data vector elements,
// execute SDIV operation and compare output with expected value.
// This concept used data vector


m33_stl_te32:

        ldr             r1, =DATA_VECT_SDIV_0

        ldr             r2, =DATA_VECT_SDIV_0_SIZE

        bl              m33_stl_sdiv_test

m33_stl_close_te32:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 32
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 33
//-----------------------------------------------------------------------------/

// This TE tests UDIV instruction

// GP Registers initialization with data vector elements,
// execute UDIV operation and compare output with expected value.
// This concept used data vector


m33_stl_te33:

        ldr             r1, =DATA_VECT_UDIV_0

        ldr             r2, =DATA_VECT_UDIV_0_SIZE

        bl              m33_stl_udiv_test

m33_stl_close_te33:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 33
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n007 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n007:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n007

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n007 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n007 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n007:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n007

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n007 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n007 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n007:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n007 PROCEDURE
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
