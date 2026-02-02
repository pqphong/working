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

#include <stdint.h>

#include "M33_STL.h"
#include "m33_stl_config_Var.h"
#include "m33_stl_utility.h"
#include "m33_stl_utils.h"



#ifdef M33_STL_TEST_0_PRESENT
#include "m33_stl_cpu_n000.h"
#endif
#ifdef M33_STL_TEST_1_PRESENT
#include "m33_stl_cpu_n001.h"
#endif
#ifdef M33_STL_TEST_2_PRESENT
#include "m33_stl_cpu_n002.h"
#endif
#ifdef M33_STL_TEST_3_PRESENT
#include "m33_stl_cpu_n003.h"
#endif
#ifdef M33_STL_TEST_4_PRESENT
#include "m33_stl_cpu_n004.h"
#endif
#ifdef M33_STL_TEST_5_PRESENT
#include "m33_stl_cpu_n005.h"
#endif
#ifdef M33_STL_TEST_6_PRESENT
#include "m33_stl_cpu_n006.h"
#endif
#ifdef M33_STL_TEST_7_PRESENT
#include "m33_stl_cpu_n007.h"
#endif
#ifdef M33_STL_TEST_8_PRESENT
#include "m33_stl_cpu_n008.h"
#endif
#ifdef M33_STL_TEST_9_PRESENT
#include "m33_stl_cpu_n009.h"
#endif
#ifdef M33_STL_TEST_10_PRESENT
#include "m33_stl_cpu_n010.h"
#endif
#ifdef M33_STL_TEST_11_PRESENT
#include "m33_stl_cpu_n011.h"
#endif
#ifdef M33_STL_TEST_12_PRESENT
#include "m33_stl_cpu_n012.h"
#endif
#ifdef M33_STL_TEST_13_PRESENT
#include "m33_stl_cpu_n013.h"
#endif
#ifdef M33_STL_TEST_14_PRESENT
#include "m33_stl_cpu_n014.h"
#endif
#ifdef M33_STL_TEST_15_PRESENT
#include "m33_stl_cpu_n015.h"
#endif
#ifdef M33_STL_TEST_16_PRESENT
#include "m33_stl_cpu_n016.h"
#endif
#ifdef M33_STL_TEST_17_PRESENT
#include "m33_stl_cpu_n017.h"
#endif
#ifdef M33_STL_TEST_18_PRESENT
#include "m33_stl_cpu_n018.h"
#endif
#ifdef M33_STL_TEST_19_PRESENT
#include "m33_stl_cpu_n019.h"
#endif
#ifdef M33_STL_TEST_20_PRESENT
#include "m33_stl_cpu_n020.h"
#endif
#ifdef M33_STL_TEST_21_PRESENT
#include "m33_stl_cpu_n021.h"
#endif
#ifdef M33_STL_TEST_22_PRESENT
#include "m33_stl_cpu_n022.h"
#endif
#ifdef M33_STL_TEST_23_PRESENT
#include "m33_stl_cpu_n023.h"
#endif
#ifdef M33_STL_TEST_24_PRESENT
#include "m33_stl_cpu_n024.h"
#endif
#ifdef M33_STL_TEST_25_PRESENT
#include "m33_stl_cpu_n025.h"
#endif
#ifdef M33_STL_TEST_26_PRESENT
#include "m33_stl_cpu_n026.h"
#endif
#ifdef M33_STL_TEST_27_PRESENT
#include "m33_stl_cpu_n027.h"
#endif
#ifdef M33_STL_TEST_28_PRESENT
#include "m33_stl_cpu_n028.h"
#endif
#ifdef M33_STL_TEST_29_PRESENT
#include "m33_stl_cpu_n029.h"
#endif
#ifdef M33_STL_TEST_30_PRESENT
#include "m33_stl_cpu_n030.h"
#endif
#ifdef M33_STL_TEST_31_PRESENT
#include "m33_stl_cpu_n031.h"
#endif
#ifdef M33_STL_TEST_32_PRESENT
#include "m33_stl_cpu_n032.h"
#endif
#ifdef M33_STL_TEST_33_PRESENT
#include "m33_stl_cpu_n033.h"
#endif
#ifdef M33_STL_TEST_34_PRESENT
#include "m33_stl_cpu_n034.h"
#endif
#ifdef M33_STL_TEST_35_PRESENT
#include "m33_stl_cpu_n035.h"
#endif
#ifdef M33_STL_TEST_36_PRESENT
#include "m33_stl_cpu_n036.h"
#endif
#ifdef M33_STL_TEST_37_PRESENT
#include "m33_stl_cpu_n037.h"
#endif
#ifdef M33_STL_TEST_38_PRESENT
#include "m33_stl_cpu_n038.h"
#endif
#ifdef M33_STL_TEST_39_PRESENT
#include "m33_stl_cpu_n039.h"
#endif
#ifdef M33_STL_TEST_40_PRESENT
#include "m33_stl_cpu_n040.h"
#endif
#ifdef M33_STL_TEST_41_PRESENT
#include "m33_stl_cpu_n041.h"
#endif
#ifdef M33_STL_TEST_42_PRESENT
#include "m33_stl_cpu_n042.h"
#endif
#ifdef M33_STL_TEST_43_PRESENT
#include "m33_stl_cpu_n043.h"
#endif
#ifdef M33_STL_TEST_44_PRESENT
#include "m33_stl_cpu_n044.h"
#endif
#ifdef M33_STL_TEST_45_PRESENT
#include "m33_stl_cpu_n045.h"
#endif
#ifdef M33_STL_TEST_46_PRESENT
#include "m33_stl_cpu_n046.h"
#endif
#ifdef M33_STL_TEST_47_PRESENT
#include "m33_stl_cpu_n047.h"
#endif
#ifdef M33_STL_TEST_48_PRESENT
#include "m33_stl_cpu_n048.h"
#endif
#ifdef M33_STL_TEST_49_PRESENT
#include "m33_stl_cpu_n049.h"
#endif
#ifdef M33_STL_TEST_50_PRESENT
#include "m33_stl_cpu_n050.h"
#endif
#ifdef M33_STL_TEST_51_PRESENT
#include "m33_stl_cpu_n051.h"
#endif
#ifdef M33_STL_TEST_52_PRESENT
#include "m33_stl_cpu_n052.h"
#endif
#ifdef M33_STL_TEST_53_PRESENT
#include "m33_stl_cpu_n053.h"
#endif
#ifdef M33_STL_TEST_54_PRESENT
#include "m33_stl_cpu_n054.h"
#endif
#ifdef M33_STL_TEST_55_PRESENT
#include "m33_stl_cpu_n055.h"
#endif
#ifdef M33_STL_TEST_56_PRESENT
#include "m33_stl_cpu_n056.h"
#endif
#ifdef M33_STL_TEST_57_PRESENT
#include "m33_stl_cpu_n057.h"
#endif
#ifdef M33_STL_TEST_58_PRESENT
#include "m33_stl_cpu_n058.h"
#endif
#ifdef M33_STL_TEST_59_PRESENT
#include "m33_stl_cpu_n059.h"
#endif
#ifdef M33_STL_TEST_60_PRESENT
#include "m33_stl_cpu_n060.h"
#endif
#ifdef M33_STL_TEST_61_PRESENT
#include "m33_stl_cpu_n061.h"
#endif
#ifdef M33_STL_TEST_62_PRESENT
#include "m33_stl_cpu_n062.h"
#endif
#ifdef M33_STL_TEST_63_PRESENT
#include "m33_stl_cpu_n063.h"
#endif
#include "m33_stl_mpu_n000.h"
#include "m33_stl_mpu_n001.h"
#include "m33_stl_nvic_n000.h"

static uint32_t m33_stl_check_bitmask(uint32_t bitMaskArray[]);

static uint32_t m33_stl_scheduler(uint32_t bitMaskArray[]);

static uint32_t m33_stl_init_dataStruct(void);

static uint32_t m33_stl_count_tests(uint32_t bitMaskArray[], uint32_t *count);

static uint32_t m33_stl_mpu_functionality(uint32_t *addressMPU, uint8_t mpu_region);

static uint32_t m33_stl_mpu_register_verifier(void);

static m33_stl_dataStruct_t *s_m33_stl_dataStruct;

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
uint32_t M33_STL(uint32_t bitMaskArray[], uint8_t forceFail) {

    // Declare variables used by this function
    uint32_t retVal;

    // Defensive initialization of return value and status value
    retVal = M33_STL_FAIL;

    if (s_m33_stl_dataStruct != M33_STL_NULL) {
        // Set STL Status to Setup
        s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
        M33_STL_STATUS_SETUP;
        if (forceFail == M33_STL_ZERO_VALUE) {
            // If the force fail functionality is disabled, check if the bitMaskArray
            // param has a valid value
            // Validate the bitMaskArray value
            retVal = m33_stl_check_bitmask(bitMaskArray);
            if (retVal == M33_STL_PASS) {
                // Execute the scheduler function to run all the user selected STL
                // Tests
                retVal = m33_stl_scheduler(bitMaskArray);
            } else {
                s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                M33_STL_STATUS_FAILED;
                s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT &
                M33_STL_FAULT_WIP;
            }

        } else if (forceFail == M33_STL_ONE_VALUE) {
            // If the user has enabled the force fail functionality, set the retVal
            // to FAIL and update the s_m33_stl_dataStruct accordingly
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
            M33_STL_STATUS_FAILED;
            s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT &
            M33_STL_FAULT_FFF;

        } else {
            // if the forceFail parameter is not valid, set retVal to FAIL and
            // update the s_m33_stl_dataStruct accordingly
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
            M33_STL_STATUS_FAILED;
            s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT &
            M33_STL_FAULT_WIP;
        }
    }
    return retVal;
}

//------------------------------------------------------------------------------/
//   Function: M33_STL_Config
//      M33 STL Config API
//
//   Parameters:
//      dataStruct   - Base address of the data structure used to save
//                     information about STL execution
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): Initialization completed with success
//                - M33_STL_FAIL (0xBAD): Address initialization failed
//------------------------------------------------------------------------------/

uint32_t M33_STL_Config(m33_stl_dataStruct_t *const dataStruct) {
    uint32_t retVal;

    // Defensive initialization of retVal value
    retVal = M33_STL_FAIL;

    // Check the correctness of the input pointer
    if (dataStruct != M33_STL_NULL) {
        // Set the address of the dataStruct
        s_m33_stl_dataStruct = dataStruct;
        // Set the dataStruct
        retVal = m33_stl_init_dataStruct();
        if (retVal == M33_STL_PASS) {
            // Set the current STL Status to setup
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
            M33_STL_STATUS_SETUP;
        }
    }

    return retVal;
}


//------------------------------------------------------------------------------/
//   Function: m33_stl_scheduler
//      M33 STL scheduler - This function is used to select the STL Tests to be
//      run among those ones scheduled by the user
//
//   Parameters:
//      bitMaskArray   - It identifies the bit mask value required to specify
//                       the STL Tests to be executed among the compiled ones
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): STL Tests successfully executed
//                - M33_STL_FAIL (0xBAD): The STL detected a fault
//------------------------------------------------------------------------------/

static uint32_t m33_stl_scheduler(uint32_t bitMaskArray[]) {

    // Function return value
    uint32_t retVal;

    uint32_t count;

    uint32_t id_test;

    uint32_t i;

    uint32_t lastI;
    uint32_t totTest;

    uint32_t currentBitMask;

    uint32_t counter;

    // Defensive initialization
    retVal = M33_STL_FAIL;

    count = M33_STL_ZERO_VALUE;

    totTest = M33_STL_ZERO_VALUE;

    id_test = M33_STL_ZERO_VALUE;

    i = M33_STL_ZERO_VALUE;

    lastI = M33_STL_ZERO_VALUE;

    currentBitMask = M33_STL_ZERO_VALUE;

    counter = M33_STL_ZERO_VALUE;

    // Run all the scheduled STL Tests

    if (s_m33_stl_dataStruct != M33_STL_NULL) {

        retVal = m33_stl_count_tests(bitMaskArray, &count);

        if (retVal == M33_STL_PASS) {

            currentBitMask = bitMaskArray[i];

            do {

                retVal = M33_STL_FAIL;

                i = (uint32_t) id_test / M33_STL_OFFSET32;

                if (lastI != i) {

                    currentBitMask = bitMaskArray[i];

                }

                if (currentBitMask & M33_STL_ONE_VALUE) {

                    // Select the STL Test according to the user input
                    switch (counter) {


#ifdef M33_STL_TEST_0_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_0:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_0;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n000(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_1_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_1:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_1;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n001(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_2_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_2:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_2;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n002(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_3_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_3:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_3;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n003(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_4_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_4:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_4;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n004(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_5_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_5:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_5;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n005(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_6_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_6:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_6;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n006(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_7_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_7:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_7;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n007(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_8_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_8:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_8;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n008(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_9_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_9:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_9;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n009(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_10_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_10:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_10;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n010(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_11_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_11:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_11;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n011(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_12_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_12:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_12;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n012(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_13_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_13:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_13;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n013(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_14_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_14:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_14;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n014(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_15_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_15:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_15;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n015(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_16_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_16:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_16;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n016(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_17_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_17:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_17;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n017(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_18_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_18:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_18;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n018(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_19_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_19:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_19;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n019(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_20_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_20:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_20;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n020(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_21_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_21:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_21;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n021(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_22_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_22:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_22;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n022(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_23_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_23:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_23;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n023(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_24_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_24:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_24;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n024(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_25_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_25:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_25;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n025(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_26_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_26:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_26;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n026(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_27_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_27:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_27;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n027(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_28_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_28:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_28;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n028(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_29_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_29:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_29;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n029(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_30_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_30:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_30;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n030(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_31_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_31:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_31;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n031(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_32_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_32:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_32;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n032(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_33_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_33:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_33;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n033(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_34_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_34:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_34;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n034(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_35_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_35:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_35;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n035(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_36_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_36:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_36;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n036(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_37_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_37:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_37;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n037(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_38_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_38:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_38;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n038(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_39_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_39:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_39;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n039(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_40_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_40:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_40;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n040(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_41_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_41:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_41;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n041(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_42_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_42:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_42;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n042(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_43_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_43:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_43;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n043(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_44_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_44:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_44;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n044(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_45_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_45:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_45;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n045(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_46_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_46:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_46;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n046(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_47_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_47:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_47;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n047(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_48_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_48:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_48;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n048(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_49_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_49:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_49;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n049(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_50_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_50:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_50;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n050(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_51_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_51:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_51;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n051(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_52_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_52:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_52;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n052(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_53_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_53:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_53;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n053(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_54_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_54:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_54;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n054(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_55_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_55:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_55;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n055(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_56_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_56:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_56;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n056(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_57_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_57:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_57;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n057(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_58_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_58:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_58;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n058(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_59_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_59:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_59;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n059(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_60_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_60:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_60;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n060(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_61_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_61:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_61;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n061(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_62_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_62:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_62;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n062(s_m33_stl_dataStruct);
                            break;
#endif
#ifdef M33_STL_TEST_63_PRESENT
                        case (uint8_t)M33_STL_TEST_ID_63:
                            // Update Test ID field in the dataStruct
                            s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                            M33_STL_TEST_ID_63;
                            // Update the STL Status field in the dataStruct
                            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                            M33_STL_STATUS_RUNNING;
                            m33_stl_cpu_n063(s_m33_stl_dataStruct);
                            break;
#endif
                        default:
                            s_m33_stl_dataStruct->STL_Status = M33_STL_STATUS_FAILED;
                            s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT &
                            M33_STL_FAULT_UE;
                            break;
                    }

                    totTest++;

                }

                counter++;
                currentBitMask = currentBitMask >> M33_STL_ONE_VALUE;
                id_test++;
                lastI = i;

                if (s_m33_stl_dataStruct->STL_Status != M33_STL_STATUS_TC){
                    if(s_m33_stl_dataStruct->STL_Status != M33_STL_STATUS_SETUP) {
                        totTest = count;
                        retVal = M33_STL_FAIL;
                    }
                }

            } while (totTest < count);
        } else {

            s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT & M33_STL_FAULT_UE;

        }

        // If all the selected STL Tests have been executed with success, set the
        // return value to M33_STL_PASS
        if (s_m33_stl_dataStruct->STL_Status == M33_STL_STATUS_TC) {
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS & M33_STL_STATUS_COMPLETED;
            retVal = M33_STL_PASS;
        } else {
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS & M33_STL_STATUS_FAILED;
            retVal = M33_STL_FAIL;
            // Check if Fault_Type is different from 0 (where 0 identifies the data mismatch)
            if (s_m33_stl_dataStruct->Fault_Type != M33_STL_ZERO_VALUE) {
                s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT & M33_STL_FAULT_UE;
            }
        }
    }

    return retVal;

}

//------------------------------------------------------------------------------/
//   Function: m33_stl_check_bitmask
//      M33 STL check bitmask - This function is used to check if the bitMaskArray
//      value given as input by the user is correct according to the compiled
//      STL Tests
//
//   Parameters:
//      bitMaskArray   - It identifies the bit mask value required to specify
//                       the STL Tests to be executed among the compiled ones
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): bitMaskArray value is correct
//                - M33_STL_FAIL (0xBAD): bitMaskArray is not correct
//------------------------------------------------------------------------------/

static uint32_t m33_stl_check_bitmask(uint32_t bitMaskArray[]) {
    uint32_t retVal;
    uint32_t compTestsBM_vec[M33_STL_BITMASK_LENGTH];
    uint8_t i;
    uint32_t mask;
    uint32_t supportBitMask;

    // Defensive initialization
    retVal = M33_STL_FAIL;
    mask = M33_STL_ZERO_VALUE;

    for (i = M33_STL_ZERO_VALUE; i < M33_STL_BITMASK_LENGTH; i++){

        supportBitMask = bitMaskArray[i];
        mask = mask | supportBitMask;

    }

    if (mask != M33_STL_ZERO_VALUE){

        for (i = M33_STL_ZERO_VALUE; i < M33_STL_BITMASK_LENGTH; i++){

            compTestsBM_vec[i] = M33_STL_ZERO_VALUE;

        }



#ifdef M33_STL_TEST_0_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_0 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_1_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_1 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_2_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_2 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_3_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_3 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_4_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_4 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_5_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_5 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_6_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_6 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_7_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_7 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_8_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_8 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_9_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_9 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_10_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_10 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_11_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_11 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_12_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_12 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_13_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_13 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_14_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_14 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_15_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_15 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_16_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_16 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_17_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_17 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_18_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_18 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_19_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_19 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_20_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_20 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_21_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_21 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_22_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_22 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_23_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_23 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_24_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_24 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_25_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_25 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_26_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_26 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_27_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_27 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_28_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_28 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_29_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_29 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_30_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_30 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_31_PRESENT
        compTestsBM_vec[M33_STL_ZERO_VALUE] = compTestsBM_vec[M33_STL_ZERO_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_31 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_32_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_32 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_33_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_33 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_34_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_34 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_35_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_35 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_36_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_36 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_37_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_37 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_38_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_38 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_39_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_39 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_40_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_40 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_41_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_41 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_42_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_42 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_43_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_43 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_44_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_44 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_45_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_45 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_46_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_46 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_47_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_47 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_48_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_48 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_49_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_49 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_50_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_50 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_51_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_51 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_52_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_52 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_53_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_53 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_54_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_54 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_55_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_55 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_56_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_56 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_57_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_57 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_58_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_58 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_59_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_59 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_60_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_60 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_61_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_61 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_62_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_62 % M33_STL_OFFSET32));
#endif
#ifdef M33_STL_TEST_63_PRESENT
        compTestsBM_vec[M33_STL_ONE_VALUE] = compTestsBM_vec[M33_STL_ONE_VALUE] | (M33_STL_ONE_VALUE << (M33_STL_TEST_ID_63 % M33_STL_OFFSET32));
#endif
        i = M33_STL_ZERO_VALUE;

    // For each bit set in bitMaskArray, if the corresponding bit in compTestBM is set,
    // then the user input bitMaskArray is correct
        do {

            if ((~(compTestsBM_vec[i]) & bitMaskArray[i]) == M33_STL_ZERO_VALUE){
                retVal = M33_STL_PASS;
            }else{
                retVal = M33_STL_FAIL;
            }

            i++;

        } while ((retVal == M33_STL_PASS) && (i < M33_STL_BITMASK_LENGTH));

    } else {

        retVal = M33_STL_FAIL;

    }

    return retVal;

}

//------------------------------------------------------------------------------/
//   Function: m33_stl_init_dataStruct
//      Function used to initialize data struct
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): Initialization completed with success
//                - M33_STL_FAIL (0xBAD): Initialization failed
//------------------------------------------------------------------------------/

static uint32_t m33_stl_init_dataStruct(void) {
    uint32_t retVal;

    // Defensive initialization of retVal value
    retVal = M33_STL_FAIL;

    // Set the s_m33_stl_dataStruct fields to zero
    s_m33_stl_dataStruct->Fault_Type = M33_STL_DATASTRUCT_CON;
    s_m33_stl_dataStruct->STL_Status = M33_STL_DATASTRUCT_CON;
    s_m33_stl_dataStruct->Test_ID = M33_STL_DATASTRUCT_CON;

    // Check the correctness of the input pointer
    if (s_m33_stl_dataStruct->Fault_Type == (uint32_t) M33_STL_DATASTRUCT_CON) {

        if (s_m33_stl_dataStruct->STL_Status == (uint32_t) M33_STL_DATASTRUCT_CON) {

            if (s_m33_stl_dataStruct->Test_ID == (uint32_t) M33_STL_DATASTRUCT_CON) {

                retVal = M33_STL_PASS;

            }

        }

    }

    return retVal;
}

//------------------------------------------------------------------------------/
//   Function: m33_stl_count_tests
//      Function used to count the tests that shall be run
//
//   Parameters:
//      bitMaskArray   - It identifies the bit mask value required to specify
//                       the STL Tests to be executed among the compiled ones
//      count          - The variable address where save the number of the tests
//                       to be launch
//
//   Returns: uint32_t
//      Global pass/fail result of the STL:
//          M33_STL_PASS (0x600D): The count value that contains the number
//                                  of tests to be run, done correctly
//          M33_STL_FAIL (0xBAD): The count value that contains the number
//                                 of tests to be run, not done correctly
//------------------------------------------------------------------------------/

static uint32_t m33_stl_count_tests(uint32_t bitMaskArray[], uint32_t *count) {

    uint32_t retVal;
    uint32_t i;
    uint32_t currentBitMask;

    retVal = M33_STL_FAIL;

    if (count != M33_STL_NULL){

        for (i = M33_STL_ZERO_VALUE; i < M33_STL_BITMASK_LENGTH; i++){

            currentBitMask = bitMaskArray[i];

            while(currentBitMask != M33_STL_ZERO_VALUE) {

                currentBitMask = currentBitMask & (currentBitMask - M33_STL_ONE_VALUE);
                *count = *count + M33_STL_ONE_VALUE;

            }

        }

        retVal = M33_STL_PASS;

    }

    return retVal;

}

//------------------------------------------------------------------------------/
//   Function: M33_STL_NVIC
//      M33 STL NVIC Register Verifier API
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): No faults detected
//                - M33_STL_FAIL (0xBAD): The STL detected a fault
//------------------------------------------------------------------------------/
uint32_t M33_STL_NVIC(void) {

    // Declare variables used by this function
    uint32_t retVal;
    uint32_t counter;

    // Defensive initialization of return value and status value
    retVal = M33_STL_FAIL;

    counter = M33_STL_ZERO_VALUE;


    if (s_m33_stl_dataStruct != M33_STL_NULL) {

        // Set STL Status to Setup
        s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
        M33_STL_STATUS_SETUP;

        do {

            switch (counter) {

                case (uint8_t)M33_STL_TEST_ID_0:
                    // Update Test ID field in the dataStruct
                    s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                    M33_STL_TEST_ID_0;
                    // Update the STL Status field in the dataStruct
                    s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                    M33_STL_STATUS_RUNNING;
                    m33_stl_nvic_n000(s_m33_stl_dataStruct);
                    break;
            }

            counter++;

            if (s_m33_stl_dataStruct->STL_Status != M33_STL_STATUS_TC){
                if(s_m33_stl_dataStruct->STL_Status != M33_STL_STATUS_SETUP) {
                    counter = M33_STL_TOT_TEST_NVIC;
                    retVal = M33_STL_FAIL;
                }
            }

        } while (counter < M33_STL_TOT_TEST_NVIC);

        // If all the selected STL Tests have been executed with success, set the
        // return value to M33_STL_PASS
        if (s_m33_stl_dataStruct->STL_Status == M33_STL_STATUS_TC) {
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS & M33_STL_STATUS_COMPLETED;
            retVal = M33_STL_PASS;
        } else {
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS & M33_STL_STATUS_FAILED;
            retVal = M33_STL_FAIL;
            // Check if Fault_Type is different from 0 (where 0 identifies the data mismatch)
            if (s_m33_stl_dataStruct->Fault_Type != M33_STL_ZERO_VALUE) {
                s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT & M33_STL_FAULT_UE;
            }
        }

    }

    return retVal;
}

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
uint32_t M33_STL_MPU(uint8_t mode, uint32_t *addressMPU, uint8_t mpu_region) {

    // Declare variables used by this function
    uint32_t retVal;

    // Defensive initialization of return value and status value
    retVal = M33_STL_FAIL;

    if (s_m33_stl_dataStruct != M33_STL_NULL) {
        // Set STL Status to Setup
        s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
        M33_STL_STATUS_SETUP;
        if ((addressMPU != M33_STL_NULL) && (mpu_region < M33_STL_REGION_MAX)) {

            if (mode == M33_STL_ZERO_VALUE) {

                retVal = m33_stl_mpu_functionality(addressMPU, mpu_region);

            } else if (mode == M33_STL_ONE_VALUE) {

                retVal = m33_stl_mpu_register_verifier();

            } else if (mode == M33_STL_TWO_VALUE) {

                retVal = m33_stl_mpu_functionality(addressMPU, mpu_region);

                if (retVal == M33_STL_PASS) {

                    retVal = M33_STL_FAIL;
                    retVal = m33_stl_mpu_register_verifier();

                }

            } else {

                // if the forceFail parameter is not valid, set retVal to FAIL and
                // update the s_m33_stl_dataStruct accordingly
                s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                M33_STL_STATUS_FAILED;
                s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT &
                M33_STL_FAULT_WIP;

            }

        } else {
            // if the forceFail parameter is not valid, set retVal to FAIL and
            // update the s_m33_stl_dataStruct accordingly
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
            M33_STL_STATUS_FAILED;
            s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT &
            M33_STL_FAULT_WIP;
        }
    }
    return retVal;
}

//------------------------------------------------------------------------------/
//   Function: m33_stl_mpu_functionality
//      Function used to run the tests of the MPU functionality
//
//   Parameters:
//      addressMPU - address used to tests the correct functionality of the
//                   MPU module
//      mpu_region - Region to use to tests of the correct functionality of the
//                   MPU module
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): No faults detected
//                - M33_STL_FAIL (0xBAD): The STL detected a fault
//------------------------------------------------------------------------------/
static uint32_t m33_stl_mpu_functionality(uint32_t *addressMPU, uint8_t mpu_region) {

    // Declare variables used by this function
    uint32_t retVal;
    uint32_t counter;

    // Defensive initialization of return value and status value
    retVal = M33_STL_FAIL;

    counter = M33_STL_ZERO_VALUE;


    if (s_m33_stl_dataStruct != M33_STL_NULL) {

        // Set STL Status to Setup
        s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
        M33_STL_STATUS_SETUP;

        do {

            switch (counter) {

                case (uint8_t)M33_STL_TEST_ID_0:
                    m33_stl_write_sp((uint32_t) mpu_region);
                    m33_stl_write_sp((uint32_t) addressMPU);
                    // Update Test ID field in the dataStruct
                    s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
                    M33_STL_TEST_ID_MPU_0;
                    // Update the STL Status field in the dataStruct
                    s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                    M33_STL_STATUS_RUNNING;
                    m33_stl_mpu_n000(s_m33_stl_dataStruct);
                    m33_stl_deallocation_sp(M33_STL_TWO_VALUE);
                    break;
            }

            counter++;

            if (s_m33_stl_dataStruct->STL_Status != M33_STL_STATUS_TC){
                if(s_m33_stl_dataStruct->STL_Status != M33_STL_STATUS_SETUP) {
                    counter = M33_STL_TOT_TEST_MPU;
                    retVal = M33_STL_FAIL;
                }
            }

        } while (counter < M33_STL_TOT_TEST_MPU);

        // If all the selected STL Tests have been executed with success, set the
        // return value to M33_STL_PASS
        if (s_m33_stl_dataStruct->STL_Status == M33_STL_STATUS_TC) {
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS & M33_STL_STATUS_COMPLETED;
            retVal = M33_STL_PASS;
        } else {
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS & M33_STL_STATUS_FAILED;
            retVal = M33_STL_FAIL;
            // Check if Fault_Type is different from 0 (where 0 identifies the data mismatch)
            if (s_m33_stl_dataStruct->Fault_Type != M33_STL_ZERO_VALUE) {
                s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT & M33_STL_FAULT_UE;
            }
        }

    }

    return retVal;
}

//------------------------------------------------------------------------------/
//   Function: m33_stl_mpu_register_verifier
//      Function used to run the tests of the Register of the MPU module
//
//   Returns: uint32_t
//      Global pass/fail result of the STL
//                - M33_STL_PASS (0x600D): No faults detected
//                - M33_STL_FAIL (0xBAD): The STL detected a fault
//------------------------------------------------------------------------------/
static uint32_t m33_stl_mpu_register_verifier(void) {

    // Declare variables used by this function
    uint32_t retVal;
    uint32_t counter;

    // Defensive initialization of return value and status value
    retVal = M33_STL_FAIL;

    counter = M33_STL_ZERO_VALUE;


    if (s_m33_stl_dataStruct != M33_STL_NULL) {

        // Set STL Status to Setup
        s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
        M33_STL_STATUS_SETUP;

        do {

            switch (counter) {

                case (uint8_t)M33_STL_TEST_ID_0:
                    // Update Test ID field in the dataStruct
                    s_m33_stl_dataStruct->Test_ID = M33_STL_MASK_TEST_ID &
					M33_STL_TEST_ID_MPU_1;
                    // Update the STL Status field in the dataStruct
                    s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS &
                    M33_STL_STATUS_RUNNING;
                    m33_stl_mpu_n001(s_m33_stl_dataStruct);
                    break;
            }

            counter++;

            if (s_m33_stl_dataStruct->STL_Status != M33_STL_STATUS_TC){
                if(s_m33_stl_dataStruct->STL_Status != M33_STL_STATUS_SETUP) {
                    counter = M33_STL_TOT_TEST_MPU;
                    retVal = M33_STL_FAIL;
                }
            }

        } while (counter < M33_STL_TOT_TEST_MPU);

        // If all the selected STL Tests have been executed with success, set the
        // return value to M33_STL_PASS
        if (s_m33_stl_dataStruct->STL_Status == M33_STL_STATUS_TC) {
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS & M33_STL_STATUS_COMPLETED;
            retVal = M33_STL_PASS;
        } else {
            s_m33_stl_dataStruct->STL_Status = M33_STL_MASK_STL_STATUS & M33_STL_STATUS_FAILED;
            retVal = M33_STL_FAIL;
            // Check if Fault_Type is different from 0 (where 0 identifies the data mismatch)
            if (s_m33_stl_dataStruct->Fault_Type != M33_STL_ZERO_VALUE) {
                s_m33_stl_dataStruct->Fault_Type = M33_STL_MASK_STL_FAULT & M33_STL_FAULT_UE;
            }
        }

    }

    return retVal;
}

