/*******************************************************************************
* TestApp - FPU sample (GHS)
* Flow:
*   1) enableFP()  : enable CP10/CP11 access (FPU) (implemented in main0.c)
*   2) dsb/isb     : ensure side-effect is visible before executing FP insn
*   3) vadd.f32    : executed inside ASM routine
*******************************************************************************/
#include "ghs_tc_fpu_sample.h"

/* Provided by existing project code (main0.c) */
extern void enableFP(void);

/* ASM entry: returns IEEE-754 bits */
extern uint32_t ghs_tc_fpu_vadd_f32_u32(uint32_t a_bits, uint32_t b_bits);

static volatile float g_last_sum = 0.0f;



static inline uint32_t f32_to_u32(float f)
{
    union { float f; uint32_t u; } v;
    v.f = f;
    return v.u;
}

static inline float u32_to_f32(uint32_t u)
{
    union { float f; uint32_t u; } v;
    v.u = u;
    return v.f;
}

void ghs_tc_fpu_sample_run(void)
{
    /* 1) Enable FPU */
    enableFP();

    /* 2) Barrier */
    __asm__ volatile ("dsb");
    __asm__ volatile ("isb");

    /* 3) Use FPU */
    {
        uint32_t a = f32_to_u32(1.5f);
        uint32_t b = f32_to_u32(2.4f);
        uint32_t r = ghs_tc_fpu_vadd_f32_u32(a, b);
        g_last_sum = u32_to_f32(r);
    }

}

float ghs_tc_fpu_get_last_sum(void)
{
    return g_last_sum;
}
