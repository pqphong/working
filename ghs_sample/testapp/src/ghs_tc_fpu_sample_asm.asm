#ifdef __GHS__

    .section .s_m33_ghs_tc_fpu_sample_run,"ax"
    .global ghs_tc_fpu_vadd_f32_u32

#endif /* __GHS__ */

/* uint32_t ghs_tc_fpu_vadd_f32_u32(uint32_t a_bits, uint32_t b_bits); */
ghs_tc_fpu_vadd_f32_u32:
    /* Move IEEE-754 bits from core regs to FP regs */
    vmov    s0, r0
    vmov    s1, r1

    /* FPU operation */
    vadd.f32 s0, s0, s1

    /* Return result bits in r0 */
    vmov    r0, s0
    bx      lr

#ifdef __GHS__
        .align          8
        end
#endif
