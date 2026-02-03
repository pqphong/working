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

        .section .s_m33_stl_cpu_n061,"ax"
        .global m33_stl_cpu_n061
        .type m33_stl_cpu_n061, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n061,"ax"
        .global m33_stl_cpu_n061

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n061
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n061.asm"
        .section        .s_m33_stl_cpu_n061,"ax",%progbits
        .global         m33_stl_cpu_n061
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n061
        .global m33_stl_cpu_n061

        .align           4

#endif
m33_stl_cpu_n061:
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

#ifdef TASKING
        adr             r3, error_m33_stl_cpu_n061
#else
        adr.w           r3, error_m33_stl_cpu_n061
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 330
//-----------------------------------------------------------------------------/

// This TE tests VFNMS.F32 instruction with RZ mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VFNMS.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te330:

#ifdef __IAR__
        extern          DATA_VECT_VFNMSF32_0
        extern          m33_stl_vfnmsf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VFNMSF32_0
        .extern          m33_stl_vfnmsf32_test
#endif

        ldr             r1, =DATA_VECT_VFNMSF32_0

        ldr             r2, =DATA_VECT_VFNMSF32_0_SIZE

        ldr             r5, =M33_STL_TE330_INPUT_VAL1

        bl              m33_stl_vfnmsf32_test

m33_stl_close_te330:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 330
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n061 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n061:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n061

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n061 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n061 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n061:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n061

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n061 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n061 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n061:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n061 PROCEDURE
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
