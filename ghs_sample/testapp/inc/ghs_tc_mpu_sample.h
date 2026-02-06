/*******************************************************************************
* TestApp - MPU sample
*******************************************************************************/
#ifndef GHS_TC_MPU_SAMPLE_H
#define GHS_TC_MPU_SAMPLE_H

#include <stdint.h>

/*
 * MPU Test:
 *  - Configure MPU to deny access to a region
 *  - Trigger MemManage fault by accessing that region
 *  - MemManage handler calls mem_manage_handler() so execution can continue
 */

/* Entry point */
extern void m33_stl_te269(uint32_t *addressMPU, uint8_t mpu_region);

/* MPU routine */
extern void mem_manage_handler(void);

/* Run wrapper */
void ghs_tc_mpu_sample_run(void);


#endif
