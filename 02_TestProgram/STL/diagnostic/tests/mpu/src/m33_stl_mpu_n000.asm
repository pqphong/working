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

        .section .s_m33_stl_mpu_n000,"ax"
        .global m33_stl_mpu_n000
        .type m33_stl_mpu_n000, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_mpu_n000,"ax"
        .global m33_stl_mpu_n000

#endif
m33_stl_mpu_n000:
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

        adr             r3, error_m33_stl_mpu_n000

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 269
//-----------------------------------------------------------------------------/

// This TE tests the write operation into a not permitted area

// Read from the Stack Pointer the addressMPU and mpu_region parameters,
// configure the memory region, write into the specified memory area,
// in the exception handler a known value is written into r11 register,
// restore the MPU registers and compare the r11 register with the r12 register (expected value)

//-----------------------------------------------------------------------------/
// Disabled interrupts and exceptions
//-----------------------------------------------------------------------------/

        mrs             r0, faultmask
        push            {r0}
        cpsid           f

m33_stl_te269:

        ldr             r11, =M33_STL_TE269_INPUT_VAL1

        ldr             r1, [sp, M33_STL_TE269_INPUT_VAL2]
        and             r1, r1, M33_STL_TE269_MASK_VAL1

        ldr             r12, [sp, M33_STL_TE269_INPUT_VAL9]

        ldr             r0, =VTOR
        ldr             r10, [r0]

        ldr             r0, =MAIR0
        ldr             r9, [r0]

        ldr             r0, =MPU_RNR
        ldr             r4, [r0]

        ldr             r0, =MPU_RBAR
        ldr             r5, [r0]

        ldr             r0, =MPU_RLAR
        ldr             r6, [r0]

        ldr             r0, =MPU_CTRL
        ldr             r7, [r0]

        ldr             r0, =SHCSR
        ldr             r8, [r0]

        push            {r4-r10}

        ldr             r7, =M33_STL_TE269_INPUT_VAL3
        ldr             r0, =MPU_CTRL
        ldr             r7, [r0]
        and             r7, r7, r0
        str             r7, [r0]

        ldr             r0, =MAIR0
        ldr             r5, [r0]
        ldr             r2, =M33_STL_TE269_INPUT_VAL4
        and             r5, r5, r2
        orr             r5, r5, #M33_STL_TE269_INPUT_VAL5
        str             r5, [r0]

        ldr             r0, =MPU_RNR
        str             r12, [r0]

        orr             r2, r1, M33_STL_TE269_INPUT_VAL7
        ldr             r0, =MPU_RBAR
        str             r2, [r0]

        ldr             r5, =M33_STL_TE269_INPUT_VAL8
        add             r2, r1, r5
        orr             r2, r2, #M33_STL_TE269_INPUT_VAL9
        ldr             r0, =MPU_RLAR
        str             r2, [r0]

        ldr             r0, =M33_STL_TE269_INPUT_VAL10
        ldr             r4, =SHCSR
        str             r0, [r4]

        ldr             r0, =vector_table
        ldr             r2, =VTOR
        str             r0, [r2]

        mov             r7, #M33_STL_TE269_INPUT_VAL11
        ldr             r0, =MPU_CTRL
        str             r7, [r0]

        dsb
        isb

        cpsie           f

        ldr             r5, =exc_MPU
        movs            r2, #M33_STL_TE269_INPUT_VAL9
        str             r2, [r5]

        str             r4, [r1]

        pop             {r4-r10}

        ldr             r0, =VTOR
        str             r10, [r0]

        ldr             r0, =MAIR0
        str             r9, [r0]

        ldr             r0, =MPU_RNR
        str             r4, [r0]

        ldr             r0, =MPU_RBAR
        str             r5, [r0]

        ldr             r0, =MPU_RLAR
        str             r6, [r0]

        ldr             r0, =SHCSR
        str             r8, [r0]

        ldr             r0, =MPU_CTRL
        str             r7, [r0]

        dsb
        isb

        ldr             r12, =M33_STL_TE269_EXP_VAL1
        bl              m33_stl_compare_gpr

m33_stl_close_te269:

//-----------------------------------------------------------------------------/
// Restore interrupts and exceptions
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             faultmask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 269
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 270
//-----------------------------------------------------------------------------/

// This TE tests the branch to execute never region (XN)

// Read from the Stack Pointer the mpu_region parameter,
// configure the MPU to set as XN the current code area
// in the exception handler a known value is written into r11 register,
// restore the MPU registers and compare the r11 register with the r12 register (expected value)

//-----------------------------------------------------------------------------/
// Disabled interrupts and exceptions
//-----------------------------------------------------------------------------/

        mrs             r0, faultmask
        push            {r0}
        cpsid           f

m33_stl_te270:

        ldr             r11, =M33_STL_TE270_INPUT_VAL1

        ldr             r12, [sp, M33_STL_TE270_INPUT_VAL9]

        ldr             r0, =VTOR
        ldr             r10, [r0]

        ldr             r0, =MAIR0
        ldr             r9, [r0]

        ldr             r0, =MPU_RNR
        ldr             r4, [r0]

        ldr             r0, =MPU_RBAR
        ldr             r5, [r0]

        ldr             r0, =MPU_RLAR
        ldr             r6, [r0]

        ldr             r0, =MPU_CTRL
        ldr             r7, [r0]

        ldr             r0, =SHCSR
        ldr             r8, [r0]

        push            {r4-r10}

        ldr             r7, =M33_STL_TE270_INPUT_VAL3
        ldr             r0, =MPU_CTRL
        ldr             r7, [r0]
        and             r7, r7, r0
        str             r7, [r0]

        isb
        dsb

        ldr             r0, =MAIR0
        ldr             r5, [r0]
        ldr             r2, =M33_STL_TE270_INPUT_VAL4
        and             r5, r5, r2
        orr             r5, r5, #M33_STL_TE270_INPUT_VAL5
        str             r5, [r0]

        ldr             r0, =MPU_RNR
        str             r12, [r0]

        mov             r1, pc
        and             r1, r1, M33_STL_TE270_INPUT_VAL12
        orr             r2, r1, M33_STL_TE270_INPUT_VAL7
        ldr             r0, =MPU_RBAR
        str             r2, [r0]

        ldr             r5, =M33_STL_TE270_INPUT_VAL8
        add             r2, r1, r5
        orr             r2, r2, #M33_STL_TE270_INPUT_VAL9
        ldr             r0, =MPU_RLAR
        str             r2, [r0]

        ldr             r0, =M33_STL_TE270_INPUT_VAL10
        ldr             r4, =SHCSR
        str             r0, [r4]

        ldr             r0, =vector_table
        ldr             r2, =VTOR
        str             r0, [r2]

        ldr             r5, =exc_MPU_XN
        movs            r2, #M33_STL_TE270_INPUT_VAL9
        str             r2, [r5]

        mov             r7, M33_STL_TE270_INPUT_VAL11
        ldr             r0, = MPU_CTRL
        str             r7, [r0]

        dsb
        isb

        ldr             r5, =M33_STL_TE270_INPUT_VAL13

        cpsie           f

        ldr             r2, =M33_STL_TE270_INPUT_VAL14

loop:
        ldr             r6, =M33_STL_TE270_INPUT_VAL15
        add             r5, r5, r2
        cmp             r5, r6
        bne             loop

        pop             {r4-r10}

        ldr             r0, =VTOR
        str             r10, [r0]

        ldr             r0, =MAIR0
        str             r9, [r0]

        ldr             r0, =MPU_RNR
        str             r4, [r0]

        ldr             r0, =MPU_RBAR
        str             r5, [r0]

        ldr             r0, =MPU_RLAR
        str             r6, [r0]

        ldr             r0, =SHCSR
        str             r8, [r0]

        ldr             r0, =MPU_CTRL
        str             r7, [r0]

        dsb
        isb

        ldr             r12, =M33_STL_TE270_EXP_VAL1
        bl              m33_stl_compare_gpr

m33_stl_close_te270:

//-----------------------------------------------------------------------------/
// Restore interrupts and exceptions
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             faultmask, r0

//-----------------------------------------------------------------------------/
// END TEST ELEMENT 270
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_mpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_mpu_n000:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_mpu_n000

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_mpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_mpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_mpu_n000:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_mpu_n000

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_mpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_mpu_n000 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_mpu_n000:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_mpu_n000 PROCEDURE
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
