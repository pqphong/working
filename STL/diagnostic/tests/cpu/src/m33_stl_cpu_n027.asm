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

        .section .s_m33_stl_cpu_n027,"ax"
        .global m33_stl_cpu_n027
        .type m33_stl_cpu_n027, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n027,"ax"
        .global m33_stl_cpu_n027

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n027
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n027.asm"
        .section        .s_m33_stl_cpu_n027,"ax",%progbits
        .global         m33_stl_cpu_n027
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n027
        .global m33_stl_cpu_n027

        .align           4

#endif
m33_stl_cpu_n027:
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
        adr             r3, error_m33_stl_cpu_n027
#else
        adr.w           r3, error_m33_stl_cpu_n027
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 156
//-----------------------------------------------------------------------------/

// This TE tests Move instructions

// GP Registers initialization with input value, write in APSR register,
// Move operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te156:

        ldr.w           r4, =M33_STL_TE156_INPUT_VAL3
        ldr.w           r1, =M33_STL_TE156_MASK_VAL1

#ifdef TASKING
        mov             r11, #M33_STL_TE156_INPUT_VAL1
#else
        mov.w           r11, #M33_STL_TE156_INPUT_VAL1
#endif

        ldr.w           r12, =M33_STL_TE156_EXP_VAL1

        bl              m33_stl_compare_gpr

#ifdef TASKING
        mov             r11, #M33_STL_TE156_INPUT_VAL2
#else
        mov.w           r11, #M33_STL_TE156_INPUT_VAL2
#endif

        ldr.w           r12, =M33_STL_TE156_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE156_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

#ifdef TASKING
        movs            r5, #M33_STL_TE156_INPUT_VAL3
#else
        movs.w          r5, #M33_STL_TE156_INPUT_VAL3
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE156_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE156_EXP_VAL4

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE156_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

#ifdef TASKING
        movs            r5, #M33_STL_TE156_INPUT_VAL4
#else
        movs.w          r5, #M33_STL_TE156_INPUT_VAL4
#endif
        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE156_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE156_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE156_INPUT_VAL5

#ifdef TASKING
        mov             r11, r6, rrx
#else
        mov.w           r11, r6, rrx
#endif

        ldr.w           r12, =M33_STL_TE156_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE156_INPUT_VAL6

#ifdef TASKING
        mov             r11, r6
#else
        mov.w           r11, r6
#endif

        ldr.w           r12, =M33_STL_TE156_EXP_VAL8

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE156_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE156_INPUT_VAL6

#ifdef TASKING
        movs            r5, r6, rrx
#else
        movs.w          r5, r6, rrx
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE156_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE156_EXP_VAL10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE156_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE156_INPUT_VAL5

#ifdef TASKING
        movs            r5, r6
#else
        movs.w          r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE156_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE156_EXP_VAL11

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE156_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE156_INPUT_VAL3

#ifdef TASKING
        movs            r5, r6, rrx
#else
        movs.w          r5, r6, rrx
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE156_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE156_EXP_VAL4

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE156_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE156_INPUT_VAL4

#ifdef TASKING
        movs            r5, r6
#else
        movs.w          r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE156_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE156_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te156:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 156
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 159
//-----------------------------------------------------------------------------/

// This TE tests Move Not instructions

// GP Registers initialization with input value, write in APSR register,
// Move Not operation test, read from APSR register and compare
// the output result with expected value

m33_stl_te159:

        ldr.w           r4, =M33_STL_TE159_INPUT_VAL3
        ldr.w           r1, =M33_STL_TE159_MASK_VAL1

#ifdef TASKING
        mvn             r11, #M33_STL_TE159_INPUT_VAL1
#else
        mvn.w           r11, #M33_STL_TE159_INPUT_VAL1
#endif

        ldr.w           r12, =M33_STL_TE159_EXP_VAL1

        bl              m33_stl_compare_gpr
#ifdef TASKING
        mvn             r11, #M33_STL_TE159_INPUT_VAL2
#else
        mvn.w           r11, #M33_STL_TE159_INPUT_VAL2
#endif

        ldr.w           r12, =M33_STL_TE159_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE159_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

#ifdef TASKING
        mvns            r5, #M33_STL_TE159_INPUT_VAL3
#else
        mvns.w          r5, #M33_STL_TE159_INPUT_VAL3
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE159_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE159_EXP_VAL4

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE159_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

#ifdef TASKING
        mvns            r5, #M33_STL_TE159_INPUT_VAL4
#else
        mvns.w          r5, #M33_STL_TE159_INPUT_VAL4
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE159_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE159_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE159_INPUT_VAL5

#ifdef TASKING
        mvn             r11, r6, rrx
#else
        mvn.w           r11, r6, rrx
#endif

        ldr.w           r12, =M33_STL_TE159_EXP_VAL7

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE159_INPUT_VAL6

#ifdef TASKING
        mvn             r11, r6
#else
        mvn.w           r11, r6
#endif

        ldr.w           r12, =M33_STL_TE159_EXP_VAL8

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE159_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE159_INPUT_VAL6

#ifdef TASKING
        mvns            r5, r6, rrx
#else
        mvns.w          r5, r6, rrx
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE159_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE159_EXP_VAL10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE159_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE159_INPUT_VAL5

#ifdef TASKING
        mvns            r5, r6
#else
        mvns.w          r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE159_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE159_EXP_VAL11

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE159_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE159_INPUT_VAL3

#ifdef TASKING
        mvns            r5, r6, rrx
#else
        mvns.w          r5, r6, rrx
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE159_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE159_EXP_VAL4

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE159_INPUT_VAL7
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE159_INPUT_VAL4

#ifdef TASKING
        mvns            r5, r6
#else
        mvns.w          r5, r6
#endif

        mrs             r11, apsr
        ands            r11, r11, r1

        ldr.w           r12, =M33_STL_TE159_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r5

        ldr.w           r12, =M33_STL_TE159_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te159:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 159
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n027:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n027

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n027:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n027

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n027 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n027:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n027 PROCEDURE
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
