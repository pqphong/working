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
//  Release Information : Res_STL_M33_U5Lx_Renesas_SW_1.0.0
//
//------------------------------------------------------------------------------
//
//  Licensed by ResilTech SRL to Renesas Electronics Corporation
//
//------------------------------------------------------------------------------
 
#include "m33_stl_constants.h"

//-------------------------------------------------------------------------------
//   Function: m33_stl_err_test
//      sets STL_Status field of the data structure to error
//
//   Parameters:
//      N.A.
//
//   Returns:
//      N.A.
//------------------------------------------------------------------------------/

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_err_test,"ax"
        .global m33_stl_err_test
        .type m33_stl_err_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_err_test,"ax"
        .global m33_stl_err_test

#endif
#ifdef __IAR__
        public m33_stl_err_test
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_out_context_switch.asm"
        .section        .s_m33_stl_err_test,"ax",%progbits
        .global         m33_stl_err_test
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_err_test
        .global m33_stl_err_test
#endif

m33_stl_err_test:


        ldr             r3, =M33_STL_TEST_FAILED
        str             r3, [r0, #M33_STL_4BYTES_OFS]
        ldr             r3, =M33_STL_ERROR_DM
        str             r3, [r0, #M33_STL_8BYTES_OFS]
        bx              lr

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
#endif
#ifdef TASKING
        .endsec
#endif

//-------------------------------------------------------------------------------
//   Function: m33_stl_pass_test
//      sets STL_Status field of the data structure to pass
//
//   Parameters:
//      N.A.
//
//   Returns:
//      N.A.
//------------------------------------------------------------------------------/

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_pass_test,"ax"
        .global m33_stl_pass_test
        .type m33_stl_pass_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_pass_test,"ax"
        .global m33_stl_pass_test

#endif
#ifdef __IAR__
        public m33_stl_pass_test
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_out_context_switch.asm"
        .section        .s_m33_stl_pass_test,"ax",%progbits
        .global         m33_stl_pass_test
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_pass_test
        .global m33_stl_pass_test
#endif

m33_stl_pass_test:


        ldr             r3, =M33_STL_TEST_COMPL
        str             r3, [r0, #M33_STL_4BYTES_OFS]
        bx              lr

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
#endif
#ifdef TASKING
        .endsec
#endif

//-------------------------------------------------------------------------------
//   Function: m33_stl_gpr_context_restore
//      Restore GPR context
//
//   Parameters:
//      N.A.
//
//   Returns:
//      N.A.
//------------------------------------------------------------------------------/

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_gpr_context_restore,"ax"
        .global m33_stl_gpr_context_restore
        .type m33_stl_gpr_context_restore, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_gpr_context_restore,"ax"
        .global m33_stl_gpr_context_restore

#endif
#ifdef __IAR__
        public m33_stl_gpr_context_restore
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_out_context_switch.asm"
        .section        .s_m33_stl_gpr_context_restore,"ax",%progbits
        .global         m33_stl_gpr_context_restore
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_gpr_context_restore
        .global m33_stl_gpr_context_restore
#endif

m33_stl_gpr_context_restore:

        pop             {r1-r12}

        bx              lr

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
#endif
#ifdef TASKING
        .endsec
#endif

//-------------------------------------------------------------------------------
//   Function: m33_stl_full_context_restore
//      Restore FPU context
//
//   Parameters:
//      N.A.
//
//   Returns:
//      N.A.
//------------------------------------------------------------------------------/

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_full_context_restore,"ax"
        .global m33_stl_full_context_restore
        .type m33_stl_full_context_restore, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_full_context_restore,"ax"
        .global m33_stl_full_context_restore

#endif
#ifdef __IAR__
        public m33_stl_full_context_restore
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_out_context_switch.asm"
        .section        .s_m33_stl_full_context_restore,"ax",%progbits
        .global         m33_stl_full_context_restore
        .p2align        2
#endif
#ifdef TASKING
        .section .text.m33_stl_full_context_restore
        .global m33_stl_full_context_restore
#endif

m33_stl_full_context_restore:

        vpop            {s16-s31}
        vpop            {s0-s15}
        pop             {r1-r12}

        bx              lr


#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign         4
        .end
#endif
#ifdef __GHS__
        .align          4
        end
#endif
#ifdef __IAR__
        alignram        2
        end
#endif
#ifdef TASKING
        .endsec
        .END
#endif
