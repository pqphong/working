/*******************************************************************************
* TestApp - FPU sample
*******************************************************************************/
#ifndef GHS_TC_FPU_SAMPLE_H
#define GHS_TC_FPU_SAMPLE_H

#include <stdint.h>

void m33_stl_mem_manage_handler(void);
/* Run the testcase: enable FPU then execute an FPU instruction */
void ghs_tc_fpu_sample_run(void);

/* Expose last computed result for debugger */
float ghs_tc_fpu_get_last_sum(void);

#endif /* GHS_TC_FPU_SAMPLE_H */
