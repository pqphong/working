#include <stdint.h>
#include "ghs_tc_mpu_sample.h"

volatile int handler = 0;

void ghs_tc_mpu_sample_run(void)
{
    uint8_t mpu_region = 0x0;
    uint32_t* addressMPU = (uint32_t*) 0x204F0000;

    /*
     * Call MPU test routine. It will configure MPU for the chosen region and then
     * trigger MemManage fault by accessing the region.
     */
    m33_stl_te269(addressMPU, mpu_region);
}

/*
 * Vector table references m33_stl_mem_manage_handler.
 */
void m33_stl_mem_manage_handler(void)
{
    /* Resolve hang issue by restoring RW permission for the test region. */
    mem_manage_handler();
    handler++;
}
