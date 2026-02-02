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

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_cpu_n044,"ax"
        .global m33_stl_cpu_n044
        .type m33_stl_cpu_n044, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n044,"ax"
        .global m33_stl_cpu_n044

#endif
m33_stl_cpu_n044:
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

        adr             r3, error_m33_stl_cpu_n044

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 245
//-----------------------------------------------------------------------------/

// This TE tests VCMP.F32, VCMPE.F32 and VSEL instructions

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register, VCMP.F32 and VCMPE.F32 operations test,
// execute VSEL operation, read from FPSCR register
// and compare the output result with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te245:

        vmrs            r0, fpscr

        ldr             r5, =M33_STL_TE245_INPUT_VAL5
        ldr             r7, =M33_STL_TE245_INPUT_VAL1

        vmov.f32        s12, r5
        vmov.f32        s11, r7

        ldr             r6, =M33_STL_TE245_INPUT_VAL8

        vmsr            fpscr, r6

        ldr             r4, =M33_STL_TE245_MASK_VAL1

        ldr             r11, =M33_STL_TE245_INPUT_VAL5

        vmov.f32        s9, r11
        vmov.f32        s10, r11

        vcmp.f32        s9, s10

        vseleq.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr             r1, =M33_STL_TE245_INPUT_VAL1

        vmov.f32        s10, r1

        vcmp.f32        s9, s10

        vselge.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        vmov.f32        s9, r1

        vcmp.f32        s9, s10

        vselgt.f32      s13, s11, s12

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        vcmp.f32        s10, #M33_STL_0_FP

        vselvs.f32      s13, s11, s12

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL3

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        vmov.f32        s9, r10

        vcmp.f32        s9, #M33_STL_0_FP

        vseleq.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr             r1, =M33_STL_TE245_INPUT_VAL1
        ldr             r2, =M33_STL_TE245_INPUT_VAL4

        vmov.f32        s10, r1
        vmov.f32        s9, r2

        vcmp.f32        s9, s10

        vselge.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL4

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr             r1, =M33_STL_TE245_INPUT_VAL9
        ldr             r2, =M33_STL_TE245_INPUT_VAL9

        vmov.f32        s10, r1
        vmov.f32        s9, r2

        vcmp.f32        s9, s10

        vselgt.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL5

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        vmov.f32        s9, M33_STL_TE245_INPUT_VAL3
        vmov.f32        s10, M33_STL_TE245_INPUT_VAL3

        vcmpe.f32       s9, s10

        vselvs.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        vcmpe.f32       s10, #M33_STL_0_FP

        vselge.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL3

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        vmov.f32        s9, r10

        vcmpe.f32       s9, s10

        vselgt.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr             r10, =M33_STL_TE245_INPUT_VAL4
        vmov.f32        s1, r10

        vcmpe.f32       s1, s9

        vselvs.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL4

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr             r10, =M33_STL_TE245_INPUT_VAL6

        vmsr            fpscr, r6

        vmov.f32        s1, r10

        vcmpe.f32       s1, s9

        vseleq.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL4

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr             r10, =M33_STL_TE245_INPUT_VAL7
        vmov.f32        s9, r10

        ldr             r10, =M33_STL_TE245_INPUT_VAL2
        vmov.f32        s1, r10

        vcmpe.f32       s1, s9

        vselge.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr             r12, =M33_STL_TE245_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov.f32        r11, s13

        ldr             r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te245:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 245
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 325
//-----------------------------------------------------------------------------/

// This TE tests VMAXNM.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register,
// VMAXNM.F32 operation test and compare the output result with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te325:

        vmrs            r0, fpscr

        ldr             r4, =M33_STL_TE325_INPUT_VAL1

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE325_INPUT_VAL1
        ldr             r6, =M33_STL_TE325_INPUT_VAL2

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE325_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE325_INPUT_VAL2
        ldr             r6, =M33_STL_TE325_INPUT_VAL1

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE325_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE325_INPUT_VAL3
        ldr             r6, =M33_STL_TE325_INPUT_VAL1

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE325_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE325_INPUT_VAL2
        ldr             r6, =M33_STL_TE325_INPUT_VAL3

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE325_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE325_INPUT_VAL4
        ldr             r6, =M33_STL_TE325_INPUT_VAL4

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE325_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE325_INPUT_VAL5
        ldr             r6, =M33_STL_TE325_INPUT_VAL5

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE325_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te325:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 325
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 326
//-----------------------------------------------------------------------------/

// This TE tests VMINNM.F32 instruction

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register,
// VMINNM.F32 operation test and compare the output result with expected value

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te326:

        vmrs            r0, fpscr

        ldr             r4, =M33_STL_TE326_INPUT_VAL1

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE326_INPUT_VAL1
        ldr             r6, =M33_STL_TE326_INPUT_VAL2

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE326_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE326_INPUT_VAL2
        ldr             r6, =M33_STL_TE326_INPUT_VAL1

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE326_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE326_INPUT_VAL3
        ldr             r6, =M33_STL_TE326_INPUT_VAL1

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE326_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE326_INPUT_VAL2
        ldr             r6, =M33_STL_TE326_INPUT_VAL3

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE326_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE326_INPUT_VAL4
        ldr             r6, =M33_STL_TE326_INPUT_VAL4

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE326_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr             r5, =M33_STL_TE326_INPUT_VAL5
        ldr             r6, =M33_STL_TE326_INPUT_VAL5

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr             r12, =M33_STL_TE326_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te326:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 326
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n044 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n044:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n044

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n044 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n044 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n044:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n044

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n044 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n044 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n044:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n044 PROCEDURE
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
