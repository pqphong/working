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

#ifndef M33_STL_UTILITY_H
#define M33_STL_UTILITY_H

// Constants for setting dataStruct
#define M33_STL_DATASTRUCT_CON   (0x00000000U)

// Bit masks for data structure fields
#define M33_STL_MASK_TEST_ID     (0x0000007FU)
#define M33_STL_MASK_STL_STATUS  (0x0000000FU)
#define M33_STL_MASK_STL_FAULT   (0x0000000FU)

// Bit masks for STL Status field
#define M33_STL_STATUS_SETUP     (0x00000000U)
#define M33_STL_STATUS_COMPLETED (0x00000001U)
#define M33_STL_STATUS_TC        (0x00000002U)
#define M33_STL_STATUS_FAILED    (0x00000003U)
#define M33_STL_STATUS_RUNNING   (0x00000004U)

// Bit masks for STL Fault field
#define M33_STL_FAULT_WIP        (0x00000001U)
#define M33_STL_FAULT_FFF        (0x00000002U)
#define M33_STL_FAULT_UE         (0x00000003U)

// Constants for M33_STL.c file
#define M33_STL_ZERO_VALUE       (0x00000000U)
#define M33_STL_ONE_VALUE        (0x00000001U)
#define M33_STL_TWO_VALUE        (0x00000002U)
#define M33_STL_REGION_MAX       (0x00000100U)
#define M33_STL_OFFSET32         (0x00000020U)
#define M33_STL_BITMASK_LENGTH   2u
#define M33_STL_TOT_TEST_NVIC    1u
#define M33_STL_TOT_TEST_MPU     2u

//Definition of null pointer
#define M33_STL_NULL             ((void*)0)

// Definition of constants for STL Tests
#define M33_STL_TEST_ID_0        (0x00000000U)
#define M33_STL_TEST_ID_1        (0x00000001U)
#define M33_STL_TEST_ID_2        (0x00000002U)
#define M33_STL_TEST_ID_3        (0x00000003U)
#define M33_STL_TEST_ID_4        (0x00000004U)
#define M33_STL_TEST_ID_5        (0x00000005U)
#define M33_STL_TEST_ID_6        (0x00000006U)
#define M33_STL_TEST_ID_7        (0x00000007U)
#define M33_STL_TEST_ID_8        (0x00000008U)
#define M33_STL_TEST_ID_9        (0x00000009U)
#define M33_STL_TEST_ID_10       (0x0000000AU)
#define M33_STL_TEST_ID_11       (0x0000000BU)
#define M33_STL_TEST_ID_12       (0x0000000CU)
#define M33_STL_TEST_ID_13       (0x0000000DU)
#define M33_STL_TEST_ID_14       (0x0000000EU)
#define M33_STL_TEST_ID_15       (0x0000000FU)
#define M33_STL_TEST_ID_16       (0x00000010U)
#define M33_STL_TEST_ID_17       (0x00000011U)
#define M33_STL_TEST_ID_18       (0x00000012U)
#define M33_STL_TEST_ID_19       (0x00000013U)
#define M33_STL_TEST_ID_19       (0x00000013U)
#define M33_STL_TEST_ID_20       (0x00000014U)
#define M33_STL_TEST_ID_21       (0x00000015U)
#define M33_STL_TEST_ID_22       (0x00000016U)
#define M33_STL_TEST_ID_23       (0x00000017U)
#define M33_STL_TEST_ID_24       (0x00000018U)
#define M33_STL_TEST_ID_25       (0x00000019U)
#define M33_STL_TEST_ID_26       (0x0000001AU)
#define M33_STL_TEST_ID_27       (0x0000001BU)
#define M33_STL_TEST_ID_28       (0x0000001CU)
#define M33_STL_TEST_ID_29       (0x0000001DU)
#define M33_STL_TEST_ID_30       (0x0000001EU)
#define M33_STL_TEST_ID_31       (0x0000001FU)
#define M33_STL_TEST_ID_32       (0x00000020U)
#define M33_STL_TEST_ID_33       (0x00000021U)
#define M33_STL_TEST_ID_34       (0x00000022U)
#define M33_STL_TEST_ID_35       (0x00000023U)
#define M33_STL_TEST_ID_36       (0x00000024U)
#define M33_STL_TEST_ID_37       (0x00000025U)
#define M33_STL_TEST_ID_38       (0x00000026U)
#define M33_STL_TEST_ID_39       (0x00000027U)
#define M33_STL_TEST_ID_40       (0x00000028U)
#define M33_STL_TEST_ID_41       (0x00000029U)
#define M33_STL_TEST_ID_42       (0x0000002AU)
#define M33_STL_TEST_ID_43       (0x0000002BU)
#define M33_STL_TEST_ID_44       (0x0000002CU)
#define M33_STL_TEST_ID_45       (0x0000002DU)
#define M33_STL_TEST_ID_46       (0x0000002EU)
#define M33_STL_TEST_ID_47       (0x0000002FU)
#define M33_STL_TEST_ID_48       (0x00000030U)
#define M33_STL_TEST_ID_49       (0x00000031U)
#define M33_STL_TEST_ID_50       (0x00000032U)
#define M33_STL_TEST_ID_51       (0x00000033U)
#define M33_STL_TEST_ID_52       (0x00000034U)
#define M33_STL_TEST_ID_53       (0x00000035U)
#define M33_STL_TEST_ID_54       (0x00000036U)
#define M33_STL_TEST_ID_55       (0x00000037U)
#define M33_STL_TEST_ID_56       (0x00000038U)
#define M33_STL_TEST_ID_57       (0x00000039U)
#define M33_STL_TEST_ID_58       (0x0000003AU)
#define M33_STL_TEST_ID_59       (0x0000003BU)
#define M33_STL_TEST_ID_60       (0x0000003CU)
#define M33_STL_TEST_ID_61       (0x0000003DU)
#define M33_STL_TEST_ID_62       (0x0000003EU)
#define M33_STL_TEST_ID_63       (0x0000003FU)
#define M33_STL_TEST_ID_MPU_0    (0x00000000U)
#define M33_STL_TEST_ID_MPU_1    (0x00000001U)
#define M33_STL_TEST_ID_NVIC_0   (0x00000000U)

#endif
