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

        .section .s_m33_stl_cpu_n039,"ax"
        .global m33_stl_cpu_n039
        .type m33_stl_cpu_n039, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n039,"ax"
        .global m33_stl_cpu_n039

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n039
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n039.asm"
        .section        .s_m33_stl_cpu_n039,"ax",%progbits
        .global         m33_stl_cpu_n039
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n039
        .global m33_stl_cpu_n039

        .align           4

#endif
m33_stl_cpu_n039:
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
        adr             r3, error_m33_stl_cpu_n039
#else
        adr.w           r3, error_m33_stl_cpu_n039
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 240
//-----------------------------------------------------------------------------/

// This TE tests VADD.F32 instruction with RM mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VADD.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te240:

#ifdef __IAR__
        extern          DATA_VECT_VADDF32_0
        extern          m33_stl_vaddf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VADDF32_0
        .extern          m33_stl_vaddf32_test
#endif

        ldr             r1, =DATA_VECT_VADDF32_0

        ldr             r2, =DATA_VECT_VADDF32_0_SIZE

        ldr             r5, =M33_STL_TE240_INPUT_VAL1

        bl              m33_stl_vaddf32_test

m33_stl_close_te240:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 240
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 246
//-----------------------------------------------------------------------------/

// This TE tests VDIV.F32 instruction with RM mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VDIV.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te246:

#ifdef __IAR__
        extern          DATA_VECT_VDIVF32_0
        extern          m33_stl_vdivf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VDIVF32_0
        .extern          m33_stl_vdivf32_test
#endif

        ldr             r1, =DATA_VECT_VDIVF32_0

        ldr             r2, =DATA_VECT_VDIVF32_0_SIZE

        ldr             r5, =M33_STL_TE246_INPUT_VAL1

        bl              m33_stl_vdivf32_test

m33_stl_close_te246:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 246
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 250
//-----------------------------------------------------------------------------/

// This TE tests VMUL.F32 instruction with RM mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VMUL.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te250:

#ifdef __IAR__
        extern          DATA_VECT_VMULF32_0
        extern          m33_stl_vmulf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VMULF32_0
        .extern          m33_stl_vmulf32_test
#endif

        ldr             r1, =DATA_VECT_VMULF32_0

        ldr             r2, =DATA_VECT_VMULF32_0_SIZE

        ldr             r5, =M33_STL_TE250_INPUT_VAL1

        bl              m33_stl_vmulf32_test

m33_stl_close_te250:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 250
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 261
//-----------------------------------------------------------------------------/

// This TE tests VSQRT.F32 instruction with RM mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VSQRT.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te261:

#ifdef __IAR__
        extern          DATA_VECT_VSQRTF32_0
        extern          m33_stl_vsqrtf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VSQRTF32_0
        .extern          m33_stl_vsqrtf32_test
#endif

        ldr             r1, =DATA_VECT_VSQRTF32_0

        ldr             r2, =DATA_VECT_VSQRTF32_0_SIZE

        ldr             r5, =M33_STL_TE261_INPUT_VAL1

        bl              m33_stl_vsqrtf32_test

m33_stl_close_te261:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 261
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 265
//-----------------------------------------------------------------------------/

// This TE tests VSUB.F32 instruction with RM mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VSUB.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te265:

#ifdef __IAR__
        extern          DATA_VECT_VSUBF32_0
        extern          m33_stl_vsubf32_test
#endif
#ifdef TASKING
        .extern          DATA_VECT_VSUBF32_0
        .extern          m33_stl_vsubf32_test
#endif

        ldr             r1, =DATA_VECT_VSUBF32_0

        ldr             r2, =DATA_VECT_VSUBF32_0_SIZE

        ldr             r5, =M33_STL_TE265_INPUT_VAL1

        bl              m33_stl_vsubf32_test

m33_stl_close_te265:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 265
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n039 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n039:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n039

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n039 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n039 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n039:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n039

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n039 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n039 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n039:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n039 PROCEDURE
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
