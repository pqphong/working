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

        .section .s_m33_stl_cpu_n042,"ax"
        .global m33_stl_cpu_n042
        .type m33_stl_cpu_n042, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n042,"ax"
        .global m33_stl_cpu_n042

#endif
m33_stl_cpu_n042:
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

        adr             r3, error_m33_stl_cpu_n042

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 243
//-----------------------------------------------------------------------------/

// This TE tests VADD.F32 instruction with RZ mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VADD.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te243:

        ldr             r1, =DATA_VECT_VADDF32_3

        ldr             r2, =DATA_VECT_VADDF32_3_SIZE

        ldr             r5, =M33_STL_TE243_INPUT_VAL1

        bl              m33_stl_vaddf32_test

m33_stl_close_te243:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 243
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 249
//-----------------------------------------------------------------------------/

// This TE tests VDIV.F32 instruction with RZ mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VDIV.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te249:

        ldr             r1, =DATA_VECT_VDIVF32_3

        ldr             r2, =DATA_VECT_VDIVF32_3_SIZE

        ldr             r5, =M33_STL_TE249_INPUT_VAL1

        bl              m33_stl_vdivf32_test

m33_stl_close_te249:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 249
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 253
//-----------------------------------------------------------------------------/

// This TE tests VMUL.F32 instruction with RZ mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VMUL.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te253:

        ldr             r1, =DATA_VECT_VMULF32_3

        ldr             r2, =DATA_VECT_VMULF32_3_SIZE

        ldr             r5, =M33_STL_TE253_INPUT_VAL1

        bl              m33_stl_vmulf32_test

m33_stl_close_te253:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 253
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 264
//-----------------------------------------------------------------------------/

// This TE tests VSQRT.F32 instruction with RZ mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VSQRT.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te264:

        ldr             r1, =DATA_VECT_VSQRTF32_3

        ldr             r2, =DATA_VECT_VSQRTF32_3_SIZE

        ldr             r5, =M33_STL_TE264_INPUT_VAL1

        bl              m33_stl_vsqrtf32_test

m33_stl_close_te264:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 264
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 268
//-----------------------------------------------------------------------------/

// This TE tests VSUB.F32 instruction with RZ mode

// FP Registers initialization with data vector elements, write in FPSCR register,
// execute VSUB.F32 operation, read from FPSCR register
// and compare output with expected value. This concept used data vector


m33_stl_te268:

        ldr             r1, =DATA_VECT_VSUBF32_3

        ldr             r2, =DATA_VECT_VSUBF32_3_SIZE

        ldr             r5, =M33_STL_TE268_INPUT_VAL1

        bl              m33_stl_vsubf32_test

m33_stl_close_te268:
//-----------------------------------------------------------------------------/
// END TEST ELEMENT 268
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n042 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n042:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n042

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n042 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n042 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n042:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n042

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n042 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n042 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n042:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n042 PROCEDURE
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
