/*******************************************************************************
* TestApp - FPU sample (GHS)
*******************************************************************************/
#ifndef GHS_TC_FPU_SAMPLE_H
#define GHS_TC_FPU_SAMPLE_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Run the testcase: enable FPU then execute an FPU instruction. */
void ghs_tc_fpu_sample_run(void);

/* Optional: expose last computed result for debugger (Multi). */
float ghs_tc_fpu_get_last_sum(void);

#ifdef __cplusplus
}
#endif

#endif /* GHS_TC_FPU_SAMPLE_H */
