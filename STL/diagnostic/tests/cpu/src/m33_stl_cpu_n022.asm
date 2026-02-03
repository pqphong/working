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

        .section .s_m33_stl_cpu_n022,"ax"
        .global m33_stl_cpu_n022
        .type m33_stl_cpu_n022, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n022,"ax"
        .global m33_stl_cpu_n022

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n022
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n022.asm"
        .section        .s_m33_stl_cpu_n022,"ax",%progbits
        .global         m33_stl_cpu_n022
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n022
        .global m33_stl_cpu_n022

        .align           4

#endif
m33_stl_cpu_n022:
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
        adr             r3, error_m33_stl_cpu_n022
#else
        adr.w           r3, error_m33_stl_cpu_n022
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 141
//-----------------------------------------------------------------------------/

// This TE tests CMN and Conditional instruction

// GP Registers initialization with input value, write in APSR register,
// CMN operation test, execute Condition instructions,
// read from APSR register and compare the output result with expected value

m33_stl_te141:

        ldr.w           r4, =M33_STL_TE141_INPUT_VAL1
        ldr.w           r9, =M33_STL_TE141_INPUT_VAL2
        ldr.w           r10, =M33_STL_TE141_INPUT_VAL3

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE141_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE141_INPUT_VAL2

        cmn             r5, #M33_STL_TE141_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE141_EXP_VAL1

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE141_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE141_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE141_INPUT_VAL1

        cmn             r5, #M33_STL_TE141_INPUT_VAL1

        ldr.w           r12, =M33_STL_TE141_EXP_VAL2

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE141_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE141_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE141_INPUT_VAL3

        cmn             r5, #M33_STL_TE141_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE141_EXP_VAL3

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE141_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE141_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE141_INPUT_VAL6

        cmn             r5, #M33_STL_TE141_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE141_EXP_VAL3

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE141_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE141_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE141_INPUT_VAL5

        cmn             r5, #M33_STL_TE141_INPUT_VAL5

        ldr.w           r12, =M33_STL_TE141_EXP_VAL3

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE141_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE141_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE141_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE141_INPUT_VAL3

        cmn             r5, r6, rrx

        ldr.w           r12, =M33_STL_TE141_EXP_VAL1

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE141_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE141_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE141_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE141_INPUT_VAL7

        cmn             r5, r6, lsr #M33_STL_TE141_INPUT_VAL8

        ldr.w           r12, =M33_STL_TE141_EXP_VAL3

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE141_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE141_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE141_INPUT_VAL9
        ldr.w           r6, =M33_STL_TE141_INPUT_VAL10

        cmn             r5, r6, lsl #M33_STL_TE141_INPUT_VAL8

        ldr.w           r12, =M33_STL_TE141_EXP_VAL4

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE141_MASK_VAL1
        bl              m33_stl_compare_gpr


m33_stl_close_te141:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 141
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 142
//-----------------------------------------------------------------------------/

// This TE tests CMP and Conditional instruction

// GP Registers initialization with input value, write in APSR register,
// CMN operation test, execute Condition instructions,
// read from APSR register and compare the output result with expected value

m33_stl_te142:

        ldr.w           r4, =M33_STL_TE142_INPUT_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE142_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE142_INPUT_VAL2

#ifdef TASKING
        cmp             r5, #M33_STL_TE142_INPUT_VAL4
#else
        cmp.w           r5, #M33_STL_TE142_INPUT_VAL4
#endif

        ldr.w           r12, =M33_STL_TE142_EXP_VAL1

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE142_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE142_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE142_INPUT_VAL1

        cmp             r5, #M33_STL_TE142_INPUT_VAL1

        ldr.w           r12, =M33_STL_TE142_EXP_VAL2

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE142_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE142_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE142_INPUT_VAL3

#ifdef TASKING
        cmp             r5, #M33_STL_TE142_INPUT_VAL4
#else
        cmp.w           r5, #M33_STL_TE142_INPUT_VAL4
#endif
        ldr.w           r12, =M33_STL_TE142_EXP_VAL3

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE142_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE142_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE142_INPUT_VAL6

        cmp             r5, #M33_STL_TE142_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE142_EXP_VAL2

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE142_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE142_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE142_INPUT_VAL9

        cmp             r5, #M33_STL_TE142_INPUT_VAL5

        ldr.w           r12, =M33_STL_TE142_EXP_VAL4

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE142_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE142_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE142_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE142_INPUT_VAL3

        cmp             r5, r6, rrx

        ldr.w           r12, =M33_STL_TE142_EXP_VAL1

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE142_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE142_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE142_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE142_INPUT_VAL7

        cmp             r5, r6, lsr #M33_STL_TE142_INPUT_VAL8

        ldr.w           r12, =M33_STL_TE142_EXP_VAL2

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE142_MASK_VAL1
        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE142_INPUT_VAL11
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r5, =M33_STL_TE142_INPUT_VAL5
        ldr.w           r6, =M33_STL_TE142_INPUT_VAL10

        cmp             r5, r6, lsr #M33_STL_TE142_INPUT_VAL8

        ldr.w           r12, =M33_STL_TE142_EXP_VAL5

        mrs             r11, apsr
        and             r11, r11, #M33_STL_TE142_MASK_VAL1
        bl              m33_stl_compare_gpr

m33_stl_close_te142:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 142
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n022:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n022

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n022:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n022

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n022 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n022:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n022 PROCEDURE
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
