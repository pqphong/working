#ifdef __GHS__
    .section .s_m33_tc_nvic_sample_run,"ax"
    .global ghs_tc_nvic_sample_run
#endif

ghs_tc_nvic_sample_run:
    push {r4-r7, lr}

    movs r0, #7
    ldr  r1, =g_nvic_irq_num
    str  r0, [r1]

    /* Enable IRQ7 */
    ldr  r4, =0xE000E100
    movs r6, #(1<<7)
    str  r6, [r4]

    /* Trigger IRQ7 */
    ldr  r4, =0xE000E200
    str  r6, [r4]

    dsb
    isb
    pop {r4-r7, pc}
