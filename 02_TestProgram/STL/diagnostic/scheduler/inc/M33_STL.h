//------------------------------------------------------------------------------
//  The confidential and proprietary information contained in this file may
//  only be used by a person authorised under and to the extent permitted
//  by a subsisting licensing agreement from ResilTech SRL.
//
//         (C) COPYRIGHT 2025 ResilTech SRL.
//             ALL RIGHTS RESERVED
//
//  This entire notice must be reproduced on all copies of this file
//  and copies of this file may only be made by a person if such person is
//  permitted to do so under the terms of a subsisting license agreement
//  from ResilTech SRL.
//
//  Release Information : Res_STL_M33_U5L4_Renesas_alpha0.0.0
//
//------------------------------------------------------------------------------

#ifndef M33_STL_H
#define M33_STL_H

#include <stdint.h>

// Result constants
#define M33_STL_PASS             (0x600Du)
#define M33_STL_FAIL             (0xBADu)

typedef struct {
    volatile uint32_t Test_ID;
    volatile uint32_t STL_Status;
    volatile uint32_t Fault_Type;
} m33_stl_dataStruct_t;

//------------------------------------------------------------------------------/
//   Function: M33_STL
//      M33 STL Main API
//
//   Parameters:
//      bitMaskArray - It identifies the bit mask value required to specify the
//                     STL Tests to be executed among the compiled ones
//      forceFail    - This value allows the user to force the STL to fail
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): No faults detected
//                - M33_STL_FAIL (0xBAD): The STL detected a fault,
//                  or the bitMaskArray or the forceFail parameters are not valid
//------------------------------------------------------------------------------/

uint32_t M33_STL(uint32_t bitMaskArray[], uint8_t forceFail);

//------------------------------------------------------------------------------/
//   Function: M33_STL_Config
//      M33 STL Config API
//
//   Parameters:
//      dataStruct   - Base address of the data structure used to save
//                     information about STL execution
//
//   Returns: uint32_t
//      Global pass/fail result of the STL configuration
//                - M33_STL_PASS (0x600D): Initialization completed with success
//                - M33_STL_FAIL (0xBAD): Address initialization failed
//------------------------------------------------------------------------------/

uint32_t M33_STL_Config(m33_stl_dataStruct_t *const dataStruct);

//------------------------------------------------------------------------------/
//   Function: M33_STL_NVIC
//      M33 STL NVIC Register Verifier API
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): No faults detected
//                - M33_STL_FAIL (0xBAD): The STL detected a fault
//------------------------------------------------------------------------------/

uint32_t M33_STL_NVIC(void);

//------------------------------------------------------------------------------/
//   Function: M33_STL_MPU
//      M33 STL MPU API
//
//   Parameters:
//      mode       - The value allows the user to select whether to launch the
//                   test of the correct functionality, or the test of the
//                   registers or both
//      addressMPU - address used to tests the correct functionality of the
//                   MPU module
//      mpu_region - Region to use to tests of the correct functionality of the
//                   MPU module
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): No faults detected
//                - M33_STL_FAIL (0xBAD): The STL detected a fault,
//                  or the bitMaskArray or the forceFail parameters are not valid
//------------------------------------------------------------------------------/

uint32_t M33_STL_MPU(uint8_t mode, uint32_t *addressMPU, uint8_t mpu_region);

#endif
