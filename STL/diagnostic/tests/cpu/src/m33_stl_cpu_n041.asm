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

        .section .s_m33_stl_cpu_n041,"ax"
        .global m33_stl_cpu_n041
        .type m33_stl_cpu_n041, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n041,"ax"
        .global m33_stl_cpu_n041

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n041
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n041.asm"
        .section        .s_m33_stl_cpu_n041,"ax",%progbits
        .global         m33_stl_cpu_n041
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n041
        .global m33_stl_cpu_n041

        .align           4

#endif
m33_stl_cpu_n041:
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
        adr             r3, error_m33_stl_cpu_n041
#else
        adr.w           r3, error_m33_stl_cpu_n041
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 242
//-----------------------------------------------------------------------------/

// This TE tests VADD.F32 instruction with RP mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VADD.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te242:

#ifdef __IAR__
        extern          DATA_VECT_VADDF32_2
        extern          m33_stl_vaddf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VADDF32_2
        .extern          m33_stl_vaddf32_test
#endif

        ldr             r1, =DATA_VECT_VADDF32_2

        ldr             r2, =DATA_VECT_VADDF32_2_SIZE

        ldr             r5, =M33_STL_TE242_INPUT_VAL1

        bl              m33_stl_vaddf32_test

m33_stl_close_te242:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 242
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 248
//-----------------------------------------------------------------------------/

// This TE tests VDIV.F32 instruction with RP mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VDIV.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te248:

#ifdef __IAR__
        extern          DATA_VECT_VDIVF32_2
        extern          m33_stl_vdivf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VDIVF32_2
        .extern          m33_stl_vdivf32_test
#endif

        ldr             r1, =DATA_VECT_VDIVF32_2

        ldr             r2, =DATA_VECT_VDIVF32_2_SIZE

        ldr             r5, =M33_STL_TE248_INPUT_VAL1

        bl              m33_stl_vdivf32_test

m33_stl_close_te248:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 248
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 252
//-----------------------------------------------------------------------------/

// This TE tests VMUL.F32 instruction with RP mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VMUL.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te252:

#ifdef __IAR__
        extern          DATA_VECT_VMULF32_2
        extern          m33_stl_vmulf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VMULF32_2
        .extern          m33_stl_vmulf32_test
#endif

        ldr             r1, =DATA_VECT_VMULF32_2

        ldr             r2, =DATA_VECT_VMULF32_2_SIZE

        ldr             r5, =M33_STL_TE252_INPUT_VAL1

        bl              m33_stl_vmulf32_test

m33_stl_close_te252:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 252
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 263
//-----------------------------------------------------------------------------/

// This TE tests VSQRT.F32 instruction with RP mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VSQRT.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te263:

#ifdef __IAR__
        extern          DATA_VECT_VSQRTF32_2
        extern          m33_stl_vsqrtf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VSQRTF32_2
        .extern          m33_stl_vsqrtf32_test
#endif

        ldr             r1, =DATA_VECT_VSQRTF32_2

        ldr             r2, =DATA_VECT_VSQRTF32_2_SIZE

        ldr             r5, =M33_STL_TE263_INPUT_VAL1

        bl              m33_stl_vsqrtf32_test

m33_stl_close_te263:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 263
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 267
//-----------------------------------------------------------------------------/

// This TE tests VSUB.F32 instruction with RP mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VSUB.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te267:

#ifdef __IAR__
        extern          DATA_VECT_VSUBF32_2
        extern          m33_stl_vsubf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VSUBF32_2
        .extern          m33_stl_vsubf32_test
#endif

        ldr             r1, =DATA_VECT_VSUBF32_2

        ldr             r2, =DATA_VECT_VSUBF32_2_SIZE

        ldr             r5, =M33_STL_TE267_INPUT_VAL1

        bl              m33_stl_vsubf32_test

m33_stl_close_te267:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 267
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n041 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n041:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n041

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n041 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n041 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n041:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n041

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n041 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n041 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n041:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n041 PROCEDURE
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
