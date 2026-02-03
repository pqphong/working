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

#ifdef GCC_KEIL_HIGHTEC_CMP

        .syntax unified

        .section .s_m33_stl_cpu_n038,"ax"
        .global m33_stl_cpu_n038
        .type m33_stl_cpu_n038, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n038,"ax"
        .global m33_stl_cpu_n038

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n038
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n038.asm"
        .section        .s_m33_stl_cpu_n038,"ax",%progbits
        .global         m33_stl_cpu_n038
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n038
        .global m33_stl_cpu_n038

        .align           4

#endif
m33_stl_cpu_n038:
//-----------------------------------------------------------------------------/
// SAVE LINK REGISTER TO RETURN FROM TEST TO CALLER
//-----------------------------------------------------------------------------/

        push            {lr}

//-----------------------------------------------------------------------------/
// START CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/

        bl              m33_stl_gpr_context_save


        bl              m33_stl_gpr_init

//-----------------------------------------------------------------------------/
// END CONTEXT SAVE PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// SAVE LABEL ERROR
//-----------------------------------------------------------------------------/

#ifdef TASKING
        adr             r3, error_m33_stl_cpu_n038
#else
        adr.w           r3, error_m33_stl_cpu_n038
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 233
//-----------------------------------------------------------------------------/

// This TE tests UXTAB instruction

// GP Registers initialization with input value, UXTAB operation test and compare
// the output result with expected value

m33_stl_te233:

        ldr.w           r7, =M33_STL_TE233_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE233_INPUT_VAL2

        uxtab           r11, r7, r8, ror #M33_STL_TE233_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE233_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE233_INPUT_VAL4
        ldr.w           r8, =M33_STL_TE233_INPUT_VAL5

        uxtab           r11, r7, r8, ror #M33_STL_TE233_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE233_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE233_INPUT_VAL7
        ldr.w           r8, =M33_STL_TE233_INPUT_VAL8

        uxtab           r11, r7, r8, ror #M33_STL_TE233_INPUT_VAL9

        ldr.w           r12, =M33_STL_TE233_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE233_INPUT_VAL10
        ldr.w           r8, =M33_STL_TE233_INPUT_VAL11

        uxtab           r11, r7, r8, ror #M33_STL_TE233_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE233_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te233:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 233
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 234
//-----------------------------------------------------------------------------/

// This TE tests UXTAB16 instruction

// GP Registers initialization with input value, UXTAB16 operation test and compare
// the output result with expected value

m33_stl_te234:

        ldr.w           r7, =M33_STL_TE234_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE234_INPUT_VAL2

        uxtab16         r11, r7, r8, ror #M33_STL_TE234_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE234_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE234_INPUT_VAL4
        ldr.w           r8, =M33_STL_TE234_INPUT_VAL5

        uxtab16         r11, r7, r8, ror #M33_STL_TE234_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE234_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE234_INPUT_VAL7
        ldr.w           r8, =M33_STL_TE234_INPUT_VAL8

        uxtab16         r11, r7, r8, ror #M33_STL_TE234_INPUT_VAL9

        ldr.w           r12, =M33_STL_TE234_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE234_INPUT_VAL10
        ldr.w           r8, =M33_STL_TE234_INPUT_VAL11

        uxtab16         r11, r7, r8, ror #M33_STL_TE234_INPUT_VAL12

        ldr.w           r12, =M33_STL_TE234_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te234:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 234
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 235
//-----------------------------------------------------------------------------/

// This TE tests UXTAH instruction

// GP Registers initialization with input value, UXTAH operation test and compare
// the output result with expected value

m33_stl_te235:

        ldr.w           r7, =M33_STL_TE235_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE235_INPUT_VAL2

        uxtah           r11, r7, r8, ror #M33_STL_TE235_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE235_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE235_INPUT_VAL4
        ldr.w           r8, =M33_STL_TE235_INPUT_VAL5

        uxtah           r11, r7, r8, ror #M33_STL_TE235_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE235_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE235_INPUT_VAL7
        ldr.w           r8, =M33_STL_TE235_INPUT_VAL8

        uxtah           r11, r7, r8, ror #M33_STL_TE235_INPUT_VAL9

        ldr.w           r12, =M33_STL_TE235_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r7, =M33_STL_TE235_INPUT_VAL10
        ldr.w           r8, =M33_STL_TE235_INPUT_VAL11

        uxtah           r11, r7, r8, ror #M33_STL_TE235_INPUT_VAL12

        ldr.w           r12, =M33_STL_TE235_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te235:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 235
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 236
//-----------------------------------------------------------------------------/

// This TE tests UXTB instruction

// GP Registers initialization with input value, UXTB operation test and compare
// the output result with expected value

m33_stl_te236:

        ldr.w           r6, =M33_STL_TE236_INPUT_VAL1

        uxtb            r11, r6, ror #M33_STL_TE236_INPUT_VAL2

        ldr.w           r12, =M33_STL_TE236_EXP_VAL1

        bl              m33_stl_compare_gpr

        uxtb            r11, r6, ror #M33_STL_TE236_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE236_EXP_VAL2

        bl              m33_stl_compare_gpr

        uxtb            r11, r6, ror #M33_STL_TE236_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE236_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te236:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 236
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 237
//-----------------------------------------------------------------------------/

// This TE tests UXTB16 instruction

// GP Registers initialization with input value, UXTB16 operation test and compare
// the output result with expected value

m33_stl_te237:

        ldr.w           r11, =M33_STL_TE237_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE237_INPUT_VAL7

        uxtb16          r11, r8, ror #M33_STL_TE237_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE237_EXP_VAL1

        bl              m33_stl_compare_gpr

        uxtb16          r11, r8, ror #M33_STL_TE237_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE237_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r11, =M33_STL_TE237_INPUT_VAL1
        ldr.w           r8, =M33_STL_TE237_INPUT_VAL2

        uxtb16          r11, r8, ror #M33_STL_TE237_INPUT_VAL5

        ldr.w           r12, =M33_STL_TE237_EXP_VAL3

        bl              m33_stl_compare_gpr

        uxtb16          r11, r8, ror #M33_STL_TE237_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE237_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te237:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 237
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 238
//-----------------------------------------------------------------------------/

// This TE tests UXTH instruction

// GP Registers initialization with input value, UXTH operation test and compare
// the output result with expected value

m33_stl_te238:

        ldr.w           r8, =M33_STL_TE238_INPUT_VAL1

        uxth            r11, r8, ror #M33_STL_TE238_INPUT_VAL2

        ldr.w           r12, =M33_STL_TE238_EXP_VAL1

        bl              m33_stl_compare_gpr

        uxth            r11, r8, ror #M33_STL_TE238_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE238_EXP_VAL2

        bl              m33_stl_compare_gpr

        uxth            r11, r8, ror #M33_STL_TE238_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE238_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te238:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 238
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n038 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n038:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n038

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n038 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n038 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n038:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n038

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n038 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n038 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n038:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n038 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// RESTORE LINK REGISTER TO RETURN TO CALLER
//-----------------------------------------------------------------------------/

        pop             {r0}
        mov             lr, r0

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
