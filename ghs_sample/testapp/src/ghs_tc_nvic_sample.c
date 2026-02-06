#include <stdint.h>
#include "ghs_tc_nvic_sample.h"

/* NVIC ICPR0 to clear pending */
#define NVIC_ICPR0 (*(volatile uint32_t *)0xE000E280u)

volatile uint32_t g_nvic_irq_num = 0;

volatile uint32_t g_nvic_irq7_count = 0;

/* IRQ7 = INTEINTSW0 entry in your vect table should point here */
void ghs_tc_nvic_swint0_handler(void)
{
    /* clear pending bit7 */
    NVIC_ICPR0 = (1u << 7);
    g_nvic_irq7_count++;
}
