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

        .section .s_m33_stl_cpu_n069,"ax"
        .global m33_stl_cpu_n069
        .type m33_stl_cpu_n069, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n069,"ax"
        .global m33_stl_cpu_n069

#endif
#ifdef __IAR__
        extern          m33_stl_full_context_save
        extern          m33_stl_full_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_full_context_restore

        public m33_stl_cpu_n069
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n069.asm"
        .section        .s_m33_stl_cpu_n069,"ax",%progbits
        .global         m33_stl_cpu_n069
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_full_context_save
        .extern          m33_stl_full_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_full_context_restore

        .section .text.m33_stl_cpu_n069
        .global m33_stl_cpu_n069

        .align           4

#endif
m33_stl_cpu_n069:
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
        adr             r3, error_m33_stl_cpu_n069
#else
        adr.w           r3, error_m33_stl_cpu_n069
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 310
//-----------------------------------------------------------------------------/

// This TE tests the VADD.F32 instruction

// FP Registers initialization with input values, write in FPSCR register,
// execute VADD.F32 operation, read from FPSCR register
// and compare output with expected value

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

m33_stl_te310:

        vmrs            r0, fpscr

        ldr.w           r9, =M33_STL_TE310_INPUT_VAL1

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE310_INPUT_VAL2
        ldr.w           r2, =M33_STL_TE310_INPUT_VAL3

        vmov            s1, r1
        vmov            s0, r2

        vadd.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE310_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE310_EXP_VAL1

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE310_INPUT_VAL4
        ldr.w           r2, =M33_STL_TE310_INPUT_VAL5

        vmov            s1, r1
        vmov            s0, r2

        vadd.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE310_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE310_EXP_VAL2

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE310_INPUT_VAL6
        ldr.w           r2, =M33_STL_TE310_INPUT_VAL7

        vmov            s1, r1
        vmov            s0, r2

        vadd.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE310_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE310_EXP_VAL3

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE310_INPUT_VAL8
        ldr.w           r2, =M33_STL_TE310_INPUT_VAL9

        vmov            s1, r1
        vmov            s0, r2

        vadd.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE310_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE310_EXP_VAL1

        vmov            r11, s2

        bl              m33_stl_compare_gpr

m33_stl_close_te310:

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
// END TEST ELEMENT 310
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 311
//-----------------------------------------------------------------------------/

// This TE tests the VCMP.F32 and VCMPE.F32 instructions

// FP Registers initialization with input values, write in FPSCR register,
// execute VCMP.F32 and VCMPE.F32 operations, read from FPSCR register
// and compare output with expected value

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

m33_stl_te311:

        vmrs            r0, fpscr

        ldr.w           r6, =M33_STL_TE311_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE311_MASK_VAL1

        vmsr            fpscr, r6

        ldr.w           r5, =M33_STL_TE311_INPUT_VAL2
        ldr.w           r7, =M33_STL_TE311_INPUT_VAL3

        vmov            s9, r5
        vmov            s10, r7

        vcmp.f32        s9, s10

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE311_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r5, =M33_STL_TE311_INPUT_VAL4
        ldr.w           r7, =M33_STL_TE311_INPUT_VAL5

        vmov            s9, r5
        vmov            s10, r7

        vcmp.f32        s9, s10

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE311_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r5, =M33_STL_TE311_INPUT_VAL5
        ldr.w           r7, =M33_STL_TE311_INPUT_VAL4

        vmov            s9, r5
        vmov            s10, r7

        vcmp.f32        s9, s10

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE311_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r5, =M33_STL_TE311_INPUT_VAL6
        ldr.w           r7, =M33_STL_TE311_INPUT_VAL7

        vmov            s9, r5
        vmov            s10, r7

        vcmpe.f32       s9, s10

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE311_EXP_VAL1

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r5, =M33_STL_TE311_INPUT_VAL4

        vmov            s9, r5
        vmov            s10, r5

        vcmpe.f32       s9, s10

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE311_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r6

        ldr.w           r5, =M33_STL_TE311_INPUT_VAL5

        vmov            s9, r5
        vmov            s10, r5

        vcmpe.f32       s9, s10

        vmrs            r11, fpscr
        and             r11, r11, r4

        ldr.w           r12, =M33_STL_TE311_EXP_VAL2

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

m33_stl_close_te311:

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
// END TEST ELEMENT 311
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 314
//-----------------------------------------------------------------------------/

// This TE tests the VMUL.F32 instruction - First

// FP Registers initialization with input values, write in FPSCR register,
// execute VMUL.F32 operation, read from FPSCR register
// and compare output with expected value

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

m33_stl_te314:

        vmrs            r0, fpscr

        ldr.w           r9, =M33_STL_TE314_INPUT_VAL1

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE314_INPUT_VAL1

        vmov            s1, r1
        vmov            s0, r1

        vmul.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE314_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE314_INPUT_VAL2

        vmov            s1, r1
        vmov            s0, r1

        vmul.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE314_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE314_EXP_VAL2

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE314_INPUT_VAL3

        vmov            s1, r1
        vmov            s0, r1

        vmul.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE314_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE314_EXP_VAL2

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE314_INPUT_VAL4

        vmov            s1, r1
        vmov            s0, r1

        vmul.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE314_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE314_EXP_VAL1

        vmov            r11, s2

        bl              m33_stl_compare_gpr

m33_stl_close_te314:

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
// END TEST ELEMENT 314
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 339
//-----------------------------------------------------------------------------/

// This TE tests the VMUL.F32 instruction - Second

// FP Registers initialization with input values, write in FPSCR register,
// execute VMUL.F32 operation, read from FPSCR register
// and compare output with expected value

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

m33_stl_te339:

        vmrs            r0, fpscr

        ldr.w           r9, =M33_STL_TE339_INPUT_VAL1

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE339_INPUT_VAL2
        ldr.w           r2, =M33_STL_TE339_INPUT_VAL3

        vmov            s1, r1
        vmov            s0, r2

        vmul.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE339_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE339_EXP_VAL3

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE339_INPUT_VAL4
        ldr.w           r2, =M33_STL_TE339_INPUT_VAL5

        vmov            s1, r1
        vmov            s0, r2

        vmul.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE339_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE339_EXP_VAL4

        vmov            r11, s2

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r9

        ldr.w           r1, =M33_STL_TE339_INPUT_VAL6
        ldr.w           r2, =M33_STL_TE339_INPUT_VAL7

        vmov            s1, r1
        vmov            s0, r2

        vmul.f32        s2, s1, s0

        ldr.w           r12, =M33_STL_TE339_EXP_VAL1

        vmrs            r11, fpscr

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        ldr.w           r12, =M33_STL_TE339_EXP_VAL2

        vmov            r11, s2

        bl              m33_stl_compare_gpr

m33_stl_close_te339:

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
// END TEST ELEMENT 339
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n069 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n069:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n069

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n069 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n069 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n069:

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
        b               context_restore_m33_stl_cpu_n069

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n069 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n069 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n069:

        bl              m33_stl_full_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n069 PROCEDURE
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
