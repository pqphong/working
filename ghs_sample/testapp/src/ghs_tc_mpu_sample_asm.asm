#include "mpu_regs.h"

#ifdef __GHS__
    .section .s_m33_m33_stl_te269,"ax"
    .global m33_stl_te269
#endif

m33_stl_te269:
    
    mov             r12, r1
    mov             r1, r0

    mrs             r0, faultmask
    push            {r0}
    cpsid           f

    ldr             r2, =0xFFFFFFE0
    and             r1, r1, r2

    ldr.w           r0, =MAIR0
    ldr.w           r9, [r0]

    ldr.w           r0, =MPU_RNR
    ldr.w           r4, [r0]

    ldr.w           r0, =MPU_RBAR
    ldr.w           r5, [r0]

    ldr.w           r0, =MPU_RLAR
    ldr.w           r6, [r0]

    ldr.w           r0, =MPU_CTRL
    ldr.w           r7, [r0]

    ldr.w           r0, =SHCSR
    ldr.w           r8, [r0]

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
    ldr.w           r7, [r0]
    and             r7, r7, r5
    str             r7, [r0]

    ldr.w           r0, =MAIR0
    ldr.w           r5, [r0]
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

    // Trigger MemManage fault by accessing the protected region
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

    pop             {r0}
    msr             faultmask, r0
    bx              lr
