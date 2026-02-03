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

        .section .s_m33_stl_mpu_n000,"ax"
        .global m33_stl_mpu_n000
        .type m33_stl_mpu_n000, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_mpu_n000,"ax"
        .global m33_stl_mpu_n000

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_mpu_n000
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_mpu_n000.asm"
        .section        .s_m33_stl_mpu_n000,"ax",%progbits
        .global         m33_stl_mpu_n000
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_mpu_n000
        .global m33_stl_mpu_n000

        .align           4

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

#ifdef TASKING
        adr             r3, error_m33_stl_mpu_n000
#else
        adr.w           r3, error_m33_stl_mpu_n000
#endif

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

#ifdef __IAR__
        extern          exc_MPU
#endif
#ifdef TASKING
        .extern         exc_MPU
#endif

        ldr.w           r11, =M33_STL_TE269_INPUT_VAL1

        ldr             r1, [sp, #M33_STL_TE269_INPUT_VAL2]
        ldr             r2, =M33_STL_TE269_MASK_VAL1
        and             r1, r1, r2

        ldr             r12, [sp, #M33_STL_TE269_INPUT_VAL6]

        ldr.w           r0, =MAIR0

#ifdef TASKING
        ldr             r9, [r0]
#else
        ldr.w           r9, [r0]
#endif

        ldr.w           r0, =MPU_RNR

#ifdef TASKING
        ldr             r4, [r0]
#else
        ldr.w           r4, [r0]
#endif

        ldr.w           r0, =MPU_RBAR

#ifdef TASKING
        ldr             r5, [r0]
#else
        ldr.w           r5, [r0]
#endif

        ldr.w           r0, =MPU_RLAR

#ifdef TASKING
        ldr             r6, [r0]
#else
        ldr.w           r6, [r0]
#endif

        ldr.w           r0, =MPU_CTRL

#ifdef TASKING
        ldr             r7, [r0]
#else
        ldr.w           r7, [r0]
#endif

        ldr.w           r0, =SHCSR

#ifdef TASKING
        ldr             r8, [r0]
#else
        ldr.w           r8, [r0]
#endif

        mrs             r10, basepri

        push            {r4-r10}

        ldr             r0, =SHPR1
        ldr             r5, [r0]

        mrs             r6, primask

        push            {r5-r6}

        ldr             r10, =M33_STL_TE269_INPUT_VAL12

        msr             basepri, r10

        ldr             r7, =M33_STL_TE269_INPUT_VAL13
        ldr             r0, =SHPR1

        str             r7, [r0]

        ldr.w           r5, =M33_STL_TE269_INPUT_VAL3
        ldr.w           r0, =MPU_CTRL

#ifdef TASKING
        ldr             r7, [r0]
#else
        ldr.w           r7, [r0]
#endif

        and             r7, r7, r5
        str             r7, [r0]

        ldr.w           r0, =MAIR0

#ifdef TASKING
        ldr             r5, [r0]
#else
        ldr.w           r5, [r0]
#endif

        ldr.w           r2, =M33_STL_TE269_INPUT_VAL4
        and             r5, r5, r2
        orr             r5, r5, #M33_STL_TE269_INPUT_VAL5
        str             r5, [r0]

        ldr.w           r0, =MPU_RNR
        str             r12, [r0]

        orr             r2, r1, #M33_STL_TE269_INPUT_VAL7
        ldr.w           r0, =MPU_RBAR
        str             r2, [r0]

        ldr.w           r5, =M33_STL_TE269_INPUT_VAL8
        add             r2, r1, r5
        orr             r2, r2, #M33_STL_TE269_INPUT_VAL9
        ldr.w           r0, =MPU_RLAR
        str             r2, [r0]

        ldr.w           r0, =M33_STL_TE269_INPUT_VAL10
        ldr.w           r4, =SHCSR
        str             r0, [r4]

        mov             r7, #M33_STL_TE269_INPUT_VAL11
        ldr.w           r0, =MPU_CTRL
        str             r7, [r0]

        dsb
        isb

        cpsie           if

        ldr.w           r5, =exc_MPU
        movs            r2, #M33_STL_TE269_INPUT_VAL9
        strb            r2, [r5]

        str             r4, [r1]

        pop             {r5-r6}

        msr             primask, r6

        ldr             r0, =SHPR1
        str             r5, [r0]

        pop             {r4-r10}

        msr             basepri, r10

        ldr.w           r0, =MAIR0
        str             r9, [r0]

        ldr.w           r0, =MPU_RNR
        str             r4, [r0]

        ldr.w           r0, =MPU_RBAR
        str             r5, [r0]

        ldr.w           r0, =MPU_RLAR
        str             r6, [r0]

        ldr.w           r0, =SHCSR
        str             r8, [r0]

        ldr.w           r0, =MPU_CTRL
        str             r7, [r0]

        dsb
        isb

        ldr.w           r12, =M33_STL_TE269_EXP_VAL1
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

#ifdef __IAR__
        extern          exc_MPU_XN
#endif
#ifdef TASKING
        .extern         exc_MPU_XN
#endif


        ldr.w           r11, =M33_STL_TE270_INPUT_VAL1

        ldr             r12, [sp, #M33_STL_TE270_INPUT_VAL2]

        ldr.w           r0, =MAIR0

#ifdef TASKING
        ldr             r9, [r0]
#else
        ldr.w           r9, [r0]
#endif

        ldr.w           r0, =MPU_RNR

#ifdef TASKING
        ldr             r4, [r0]
#else
        ldr.w           r4, [r0]
#endif

        ldr.w           r0, =MPU_RBAR

#ifdef TASKING
        ldr             r5, [r0]
#else
        ldr.w           r5, [r0]
#endif

        ldr.w           r0, =MPU_RLAR

#ifdef TASKING
        ldr             r6, [r0]
#else
        ldr.w           r6, [r0]
#endif

        ldr.w           r0, =MPU_CTRL

#ifdef TASKING
        ldr             r7, [r0]
#else
        ldr.w           r7, [r0]
#endif

        ldr.w           r0, =SHCSR

#ifdef TASKING
        ldr             r8, [r0]
#else
        ldr.w           r8, [r0]
#endif

        mrs             r10, basepri

        push            {r4-r10}

        ldr             r0, =SHPR1
        ldr             r5, [r0]

        mrs             r6, primask

        push            {r5-r6}

        ldr             r10, =M33_STL_TE270_INPUT_VAL14
        msr             basepri, r10

        ldr             r7, =M33_STL_TE270_INPUT_VAL8
        ldr             r0, =SHPR1

        str             r7, [r0]

        ldr.w           r5, =M33_STL_TE270_INPUT_VAL3
        ldr.w           r0, =MPU_CTRL

#ifdef TASKING
        ldr             r7, [r0]
#else
        ldr.w           r7, [r0]
#endif

        and             r7, r7, r5
        str             r7, [r0]

        isb
        dsb

        ldr.w           r0, =MAIR0

#ifdef TASKING
        ldr             r5, [r0]
#else
        ldr.w           r5, [r0]
#endif

        ldr.w           r2, =M33_STL_TE270_INPUT_VAL4
        and             r5, r5, r2
        orr             r5, r5, #M33_STL_TE270_INPUT_VAL5
        str             r5, [r0]

        ldr.w           r0, =MPU_RNR
        str             r12, [r0]

        mov             r1, pc
        ldr             r0, =M33_STL_TE270_INPUT_VAL12
        and             r1, r1, r0
        orr             r2, r1, #M33_STL_TE270_INPUT_VAL7
        ldr.w           r0, =MPU_RBAR
        str             r2, [r0]

        ldr.w           r5, =M33_STL_TE270_INPUT_VAL13
        add             r2, r1, r5
        orr             r2, r2, #M33_STL_TE270_INPUT_VAL9
        ldr.w           r0, =MPU_RLAR
        str             r2, [r0]

        ldr.w           r0, =M33_STL_TE270_INPUT_VAL10
        ldr.w           r4, =SHCSR
        str             r0, [r4]

        ldr.w           r5, =exc_MPU_XN
        movs            r2, #M33_STL_TE270_INPUT_VAL9
        strb            r2, [r5]

        mov             r7, #M33_STL_TE270_INPUT_VAL11
        ldr.w           r0, = MPU_CTRL
        str             r7, [r0]

        dsb
        isb

        ldr.w           r5, =M33_STL_TE270_INPUT_VAL8

        cpsie           if

        ldr.w           r2, =M33_STL_TE270_INPUT_VAL9

loop:
        ldr.w           r6, =M33_STL_TE270_INPUT_VAL6
        add             r5, r5, r2
        cmp             r5, r6
        bne             loop

        pop             {r5-r6}

        msr             primask, r6

        ldr             r0, =SHPR1
        str             r5, [r0]

        pop             {r4-r10}

        msr             basepri, r10

        ldr.w           r0, =MAIR0
        str             r9, [r0]

        ldr.w           r0, =MPU_RNR
        str             r4, [r0]

        ldr.w           r0, =MPU_RBAR
        str             r5, [r0]

        ldr.w           r0, =MPU_RLAR
        str             r6, [r0]

        ldr.w           r0, =SHCSR
        str             r8, [r0]

        ldr.w           r0, =MPU_CTRL
        str             r7, [r0]

        dsb
        isb

        ldr.w           r12, =M33_STL_TE270_EXP_VAL1
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

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_mpu_n000:

//-----------------------------------------------------------------------------/
// Restore interrupts and exceptions
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             faultmask, r0


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
