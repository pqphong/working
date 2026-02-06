#include <stdint.h>

#define MPU_CTRL_ADDR   (0xE000ED94u)
#define MPU_RBAR_ADDR   (0xE000ED9Cu)

/* MPU_CTRL bits */
#define MPU_CTRL_ENABLE (1u << 0)

static inline void dsb(void) { __asm__ volatile ("dsb"); }
static inline void isb(void) { __asm__ volatile ("isb"); }

void mem_manage_handler(void)
{
    volatile uint32_t * const MPU_CTRL = (volatile uint32_t *)MPU_CTRL_ADDR;
    volatile uint32_t * const MPU_RBAR = (volatile uint32_t *)MPU_RBAR_ADDR;

    /* Disable MPU */
    uint32_t ctrl = *MPU_CTRL;
    *MPU_CTRL = (ctrl & ~MPU_CTRL_ENABLE);
    dsb();
    isb();

    /*
     * Clear RBAR low bits
     * This effectively clears the low 3 bits used for attribute/index bits in sample,
     * relaxing access configuration
     */
    uint32_t rbar = *MPU_RBAR;
    rbar &= 0xFFFFFFF8u;
    *MPU_RBAR = rbar;

    /* Re-enable MPU */
    *MPU_CTRL = (*MPU_CTRL | MPU_CTRL_ENABLE);
    dsb();
    isb();
}
