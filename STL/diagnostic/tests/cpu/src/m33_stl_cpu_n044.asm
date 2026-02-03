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

        .section .s_m33_stl_cpu_n044,"ax"
        .global m33_stl_cpu_n044
        .type m33_stl_cpu_n044, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n044,"ax"
        .global m33_stl_cpu_n044

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n044
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n044.asm"
        .section        .s_m33_stl_cpu_n044,"ax",%progbits
        .global         m33_stl_cpu_n044
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n044
        .global m33_stl_cpu_n044

        .align           4

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

#ifdef TASKING
        adr             r3, error_m33_stl_cpu_n044
#else
        adr.w           r3, error_m33_stl_cpu_n044
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 245
//-----------------------------------------------------------------------------/

// This TE tests VCMP.F32 and VSEL instructions

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register, VCMP.F32 operation test,
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te245:

        vmrs            r0, fpscr

        ldr.w           r5, =M33_STL_TE245_INPUT_VAL3
        ldr.w           r7, =M33_STL_TE245_INPUT_VAL1

#ifdef TASKING
        vmov            s12, r5
        vmov            s11, r7
#else
        vmov.f32        s12, r5
        vmov.f32        s11, r7
#endif

        ldr.w           r6, =M33_STL_TE245_INPUT_VAL4

        vmsr            fpscr, r6

        ldr.w           r4, =M33_STL_TE245_MASK_VAL1

        ldr.w           r11, =M33_STL_TE245_INPUT_VAL3

#ifdef TASKING
        vmov            s9, r11
        vmov            s10, r11
#else
        vmov.f32        s9, r11
        vmov.f32        s10, r11
#endif

        vcmp.f32        s9, s10

        vseleq.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE245_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE245_EXP_VAL7

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r1, =M33_STL_TE245_INPUT_VAL1

#ifdef TASKING
        vmov            s10, r1
#else
        vmov.f32        s10, r1
#endif

        vcmp.f32        s9, s10

        vselge.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE245_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

#ifdef TASKING
        vmov            s9, r1
#else
        vmov.f32        s9, r1
#endif

        vcmp.f32        s9, s10

        vselgt.f32      s13, s11, s12

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE245_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        vcmp.f32        s10, #M33_STL_0_FP

        vselvs.f32      s13, s11, s12

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE245_EXP_VAL3

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

#ifdef TASKING
        vmov            s9, r10
#else
        vmov.f32        s9, r10
#endif

        vcmp.f32        s9, #M33_STL_0_FP

        vseleq.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE245_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r1, =M33_STL_TE245_INPUT_VAL1
        ldr.w           r2, =M33_STL_TE245_INPUT_VAL2

#ifdef TASKING
        vmov            s10, r1
        vmov            s9, r2
#else
        vmov.f32        s10, r1
        vmov.f32        s9, r2
#endif

        vcmp.f32        s9, s10

        vselge.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE245_EXP_VAL4

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE245_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r1, =M33_STL_TE245_INPUT_VAL5
        ldr.w           r2, =M33_STL_TE245_INPUT_VAL5

#ifdef TASKING
        vmov            s10, r1
        vmov            s9, r2
#else
        vmov.f32        s10, r1
        vmov.f32        s9, r2
#endif

        vcmp.f32        s9, s10

        vselgt.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE245_EXP_VAL5

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE245_EXP_VAL7

        bl              m33_stl_compare_gpr

m33_stl_close_te245:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ICPR0
        ldr.w           r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
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
// START TEST ELEMENT 338
//-----------------------------------------------------------------------------/

// This TE tests VCMPE.F32 and VSEL instructions

// GP Registers initialization with input value,
// move GP register in FP register, write in FPSCR register, VCMPE.F32 operation test,
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te338:

        vmrs            r0, fpscr

        ldr.w           r4, =M33_STL_TE338_MASK_VAL1
        ldr.w           r6, =M33_STL_TE338_INPUT_VAL6

        vmsr            fpscr, r6

#ifdef TASKING
        ldr.w           r1, =M33_STL_TE338_INPUT_VAL2
        vmov            s9, r1
        vmov            s10, r1
#else
        vmov.f32        s9, #M33_STL_TE338_INPUT_VAL2
        vmov.f32        s10, #M33_STL_TE338_INPUT_VAL2
#endif

        vcmpe.f32       s9, s10

        vselvs.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE338_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE338_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        vcmpe.f32       s10, #M33_STL_0_FP

        vselge.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE338_EXP_VAL3

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE338_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

#ifdef TASKING
        vmov            s9, r10
#else
        vmov.f32        s9, r10
#endif

        vcmpe.f32       s9, s10

        vselgt.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE338_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE338_EXP_VAL5

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r10, =M33_STL_TE338_INPUT_VAL3

#ifdef TASKING
        vmov            s1, r10
#else
        vmov.f32        s1, r10
#endif

        vcmpe.f32       s1, s9

        vselvs.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE338_EXP_VAL4

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE338_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr.w           r10, =M33_STL_TE338_INPUT_VAL4

        vmsr            fpscr, r6

#ifdef TASKING
        vmov            s1, r10
#else
        vmov.f32        s1, r10
#endif

        vcmpe.f32       s1, s9

        vseleq.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE338_EXP_VAL4

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif

        ldr.w           r12, =M33_STL_TE338_EXP_VAL6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r10, =M33_STL_TE338_INPUT_VAL5

#ifdef TASKING
        vmov            s9, r10
#else
        vmov.f32        s9, r10
#endif

        ldr.w           r10, =M33_STL_TE338_INPUT_VAL1

#ifdef TASKING
        vmov            s1, r10
#else
        vmov.f32        s1, r10
#endif

        vcmpe.f32       s1, s9

        vselge.f32      s13, s12, s11

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE338_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

#ifdef TASKING
        vmov            r11, s13
#else
        vmov.f32        r11, s13
#endif
        ldr.w           r12, =M33_STL_TE338_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te338:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ICPR0
        ldr.w           r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


//-----------------------------------------------------------------------------/
// END TEST ELEMENT 338
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te325:

        vmrs            r0, fpscr

        ldr.w           r4, =M33_STL_TE325_INPUT_VAL1

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE325_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE325_INPUT_VAL2

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE325_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE325_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE325_INPUT_VAL1

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE325_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE325_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE325_INPUT_VAL1

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE325_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE325_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE325_INPUT_VAL3

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE325_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE325_INPUT_VAL4
        ldr.w           r6, =M33_STL_TE325_INPUT_VAL4

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE325_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE325_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE325_INPUT_VAL5

        vmov            s5, r5
        vmov            s6, r6

        vmaxnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE325_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te325:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ICPR0
        ldr.w           r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
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

        ldr.w           r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

m33_stl_te326:

        vmrs            r0, fpscr

        ldr.w           r4, =M33_STL_TE326_INPUT_VAL1

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE326_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE326_INPUT_VAL2

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE326_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE326_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE326_INPUT_VAL1

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE326_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE326_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE326_INPUT_VAL1

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE326_EXP_VAL1

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE326_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE326_INPUT_VAL3

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE326_EXP_VAL2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE326_INPUT_VAL4
        ldr.w           r6, =M33_STL_TE326_INPUT_VAL4

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE326_EXP_VAL3

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r4

        ldr.w           r5, =M33_STL_TE326_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE326_INPUT_VAL5

        vmov            s5, r5
        vmov            s6, r6

        vminnm.f32      s11, s6, s5

        vmsr            fpscr, r0

        vmov            r11, s11

        ldr.w           r12, =M33_STL_TE326_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te326:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ICPR0
        ldr.w           r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
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

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n044:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ICPR0
        ldr.w           r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr.w           r6, =M33_STL_NVIC_ISPR0
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
