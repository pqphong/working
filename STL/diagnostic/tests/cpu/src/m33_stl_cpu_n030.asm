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

        .section .s_m33_stl_cpu_n030,"ax"
        .global m33_stl_cpu_n030
        .type m33_stl_cpu_n030, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n030,"ax"
        .global m33_stl_cpu_n030

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n030
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n030.asm"
        .section        .s_m33_stl_cpu_n030,"ax",%progbits
        .global         m33_stl_cpu_n030
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n030
        .global m33_stl_cpu_n030

        .align           4

#endif
m33_stl_cpu_n030:
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
        adr             r3, error_m33_stl_cpu_n030
#else
        adr.w           r3, error_m33_stl_cpu_n030
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 172
//-----------------------------------------------------------------------------/

// This TE tests RBIT instruction

// GP Registers initialization with input value, RBIT operation test
// and compare the output result with expected value

m33_stl_te172:

        ldr.w           r9, =M33_STL_TE172_INPUT_VAL1

        rbit            r11, r9

        ldr.w           r12, =M33_STL_TE172_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE172_INPUT_VAL2

        rbit            r11, r9

        ldr.w           r12, =M33_STL_TE172_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te172:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 172
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 173
//-----------------------------------------------------------------------------/

// This TE tests REV.W instruction

// GP Registers initialization with input value, REV.W operation test
// and compare the output result with expected value

m33_stl_te173:

        ldr.w           r6, =M33_STL_TE173_INPUT_VAL1

#ifdef TASKING
        rev             r11, r6
#else
        rev.w           r11, r6
#endif

        ldr.w           r12, =M33_STL_TE173_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE173_INPUT_VAL2

#ifdef TASKING
        rev             r11, r6
#else
        rev.w           r11, r6
#endif

        ldr.w           r12, =M33_STL_TE173_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te173:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 173
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 174
//-----------------------------------------------------------------------------/

// This TE tests REV16.W instruction

// GP Registers initialization with input value, REV16.W operation test and compare
// the output result with expected value.

m33_stl_te174:

        ldr.w           r6, =M33_STL_TE174_INPUT_VAL1

#ifdef TASKING
        rev16           r11, r6
#else
        rev16.w         r11, r6
#endif

        ldr.w           r12, =M33_STL_TE174_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE174_INPUT_VAL2

#ifdef TASKING
        rev16           r11, r6
#else
        rev16.w         r11, r6
#endif

        ldr.w           r12, =M33_STL_TE174_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te174:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 174
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 175
//-----------------------------------------------------------------------------/

// This TE tests REVSH.W instruction

// GP Registers initialization with input value, REVSH.W operation test and compare
// the output result with expected value.

m33_stl_te175:

        ldr.w           r6, =M33_STL_TE175_INPUT_VAL1

#ifdef TASKING
        revsh           r11, r6
#else
        revsh.w         r11, r6
#endif

        ldr.w           r12, =M33_STL_TE175_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE175_INPUT_VAL2

#ifdef TASKING
        revsh           r11, r6
#else
        revsh.w         r11, r6
#endif

        ldr.w           r12, =M33_STL_TE175_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te175:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 175
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 176
//-----------------------------------------------------------------------------/

// This TE tests ROR (immediate) instruction

// GP Registers initialization with input value, ROR operation test and compare
// the output result with expected value.

m33_stl_te176:

        ldr.w           r9, =M33_STL_TE176_INPUT_VAL1

        ror             r11, r9, #M33_STL_TE176_INPUT_VAL2

        ldr.w           r12, =M33_STL_TE176_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE176_INPUT_VAL3

        ror             r11, r9, #M33_STL_TE176_INPUT_VAL2

        ldr.w           r12, =M33_STL_TE176_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE176_INPUT_VAL4

        ror             r11, r9, #M33_STL_TE176_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE176_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE176_INPUT_VAL5

        ror             r11, r9, #M33_STL_TE176_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE176_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te176:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 176
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 177
//-----------------------------------------------------------------------------/

// This TE tests ROR (Register) instruction

// GP Registers initialization with input value, ROR operation test and compare
// the output result with expected value.

m33_stl_te177:

        ldr.w           r6, =M33_STL_TE177_INPUT_VAL1
        ldr.w           r5, =M33_STL_TE177_INPUT_VAL2

        ror             r11, r5, r6

        ldr.w           r12, =M33_STL_TE177_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE177_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE177_INPUT_VAL1

        ror             r11, r5, r6

        ldr.w           r12, =M33_STL_TE177_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE177_INPUT_VAL4
        ldr.w           r5, =M33_STL_TE177_INPUT_VAL5

#ifdef TASKING
        ror             r11, r5, r6
#else
        ror.w           r11, r5, r6
#endif

        ldr.w           r12, =M33_STL_TE177_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE177_INPUT_VAL7
        ldr.w           r5, =M33_STL_TE177_INPUT_VAL3

#ifdef TASKING
        ror             r11, r5, r6
#else
        ror.w           r11, r5, r6
#endif

        ldr.w           r12, =M33_STL_TE177_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE177_INPUT_VAL6
        ldr.w           r5, =M33_STL_TE177_INPUT_VAL2

#ifdef TASKING
        ror             r11, r5, r6
#else
        ror.w           r11, r5, r6
#endif

        ldr.w           r12, =M33_STL_TE177_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te177:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 177
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 178
//-----------------------------------------------------------------------------/

// This TE tests RORS (immediate) instruction

// GP Registers initialization with input value, write in APSR register,
// RORS operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te178:

        ldr.w           r5, =M33_STL_TE178_MASK_VAL1

        ldr.w           r6, =M33_STL_TE178_INPUT_VAL1

        rors            r11, r6, #M33_STL_TE178_INPUT_VAL5

        ldr.w           r12, =M33_STL_TE178_EXP_VAL1

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r5

        ldr.w           r12, =M33_STL_TE178_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE178_INPUT_VAL2

        rors            r11, r9, #M33_STL_TE178_INPUT_VAL6

        ldr.w           r12, =M33_STL_TE178_EXP_VAL3

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r5

        ldr.w           r12, =M33_STL_TE178_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE178_INPUT_VAL3

        rors            r11, r9, #M33_STL_TE178_INPUT_VAL7

        ldr.w           r12, =M33_STL_TE178_EXP_VAL5

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r5

        ldr.w           r12, =M33_STL_TE178_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r9, =M33_STL_TE178_INPUT_VAL8

        rors            r11, r9, #M33_STL_TE178_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE178_EXP_VAL4

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r5

        ldr.w           r12, =M33_STL_TE178_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te178:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 178
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 179
//-----------------------------------------------------------------------------/

// This TE tests RORS (Register) instruction

// GP Registers initialization with input value, write in APSR register,
// RORS operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te179:

        ldr.w           r4,=M33_STL_TE179_INPUT_VAL1
        ldr.w           r1, =M33_STL_TE179_MASK_VAL1

        ldr.w           r5, =M33_STL_TE179_INPUT_VAL1
        ldr.w           r6, =M33_STL_TE179_INPUT_VAL2

#ifdef TASKING
        rors            r11, r5, r6
#else
        rors.w          r11, r5, r6
#endif

        ldr.w           r12, =M33_STL_TE179_EXP_VAL1

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE179_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE179_INPUT_VAL3
        ldr.w           r6, =M33_STL_TE179_INPUT_VAL2

#ifdef TASKING
        rors            r11, r5, r6
#else
        rors.w          r11, r5, r6
#endif

        ldr.w           r12, =M33_STL_TE179_EXP_VAL3

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE179_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE179_INPUT_VAL2
        ldr.w           r6, =M33_STL_TE179_INPUT_VAL4

#ifdef TASKING
        rors            r11, r5, r6
#else
        rors.w          r11, r5, r6
#endif

        ldr.w           r12, =M33_STL_TE179_EXP_VAL5

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE179_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE179_INPUT_VAL6
        ldr.w           r6, =M33_STL_TE179_INPUT_VAL2

#ifdef TASKING
        rors            r11, r5, r6
#else
        rors.w          r11, r5, r6
#endif

        ldr.w           r12, =M33_STL_TE179_EXP_VAL7

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE179_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr.w           r5, =M33_STL_TE179_INPUT_VAL7
        ldr.w           r6, =M33_STL_TE179_INPUT_VAL5

#ifdef TASKING
        rors            r11, r5, r6
#else
        rors.w          r11, r5, r6
#endif

        ldr.w           r12, =M33_STL_TE179_EXP_VAL8

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE179_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te179:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 179
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 180
//-----------------------------------------------------------------------------/

// This TE tests RRX instruction

// GP Registers initialization with input value, write in APSR register,
// RRX operation test/ and compare the output result with expected value

m33_stl_te180:

        ldr.w           r4, =M33_STL_TE180_INPUT_VAL3

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE180_INPUT_VAL5
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE180_INPUT_VAL1

        rrx             r11, r6

        ldr.w           r12, =M33_STL_TE180_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr.w           r4, =M33_STL_TE180_INPUT_VAL4

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE180_INPUT_VAL5
        ldr.w           r5, =M33_STL_TE180_INPUT_VAL4
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE180_INPUT_VAL2

        rrx             r11, r6

        ldr.w           r12, =M33_STL_TE180_EXP_VAL2

        bl              m33_stl_compare_gpr

m33_stl_close_te180:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 180
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 181
//-----------------------------------------------------------------------------/

// This TE tests RRXS instruction

// GP Registers initialization with input value, write in APSR register,
// RRXS operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te181:

        ldr.w           r4, =M33_STL_TE181_INPUT_VAL1
        ldr.w           r5, =M33_STL_TE181_INPUT_VAL4
        ldr.w           r1, =M33_STL_TE181_MASK_VAL1

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE181_INPUT_VAL5
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r11, =M33_STL_TE181_INPUT_VAL1
        ldr.w           r10, =M33_STL_TE181_INPUT_VAL1

        rrxs            r11, r10

        ldr.w           r12, =M33_STL_TE181_EXP_VAL1

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE181_EXP_VAL6

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE181_INPUT_VAL5
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r10, =M33_STL_TE181_INPUT_VAL2

        rrxs            r11, r10

        ldr.w           r12, =M33_STL_TE181_EXP_VAL2

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE181_EXP_VAL3

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE181_INPUT_VAL5
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r5
#endif

        ldr.w           r6, =M33_STL_TE181_INPUT_VAL3

        rrxs            r11, r6

        ldr.w           r12, =M33_STL_TE181_EXP_VAL4

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE181_EXP_VAL5

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE181_INPUT_VAL5
        mrs             r6, apsr
        and             r6, r6, r4
        orr             r6, r6, r5
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r5
#endif

        ldr.w           r6, =M33_STL_TE181_INPUT_VAL1

        rrxs            r11, r6

        ldr.w           r12, =M33_STL_TE181_EXP_VAL5

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r1

        ldr.w           r12, =M33_STL_TE181_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te181:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 181
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 182
//-----------------------------------------------------------------------------/

// This TE tests RSB instructions

// GP Registers initialization with input value, write in APSR register,
// RSB operation test, read from APSR register and compare
// the output result with expected value.

m33_stl_te182:

        ldr.w           r4, =M33_STL_TE182_INPUT_VAL14
        ldr.w           r1, =M33_STL_TE182_MASK_VAL1

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL2

        rsb             r11, r6, #M33_STL_TE182_INPUT_VAL3

        ldr.w           r12, =M33_STL_TE182_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r6, #M33_STL_TE182_INPUT_VAL4

        rsb             r11, r6, #M33_STL_TE182_INPUT_VAL4

        ldr.w           r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL5

        rsb             r11, r6, #M33_STL_TE182_INPUT_VAL1

        ldr.w           r12, =M33_STL_TE182_EXP_VAL3

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE182_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL6

        rsbs            r11, r6, #M33_STL_TE182_INPUT_VAL7

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE182_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE182_EXP_VAL10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE182_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL9
        ldr.w           r5, =M33_STL_TE182_INPUT_VAL7

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE182_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE182_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL10
        ldr.w           r5, =M33_STL_TE182_INPUT_VAL10

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE182_EXP_VAL7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE182_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL11

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE182_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE182_EXP_VAL11

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE182_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL6
        ldr.w           r5, =M33_STL_TE182_INPUT_VAL7

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE182_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE182_EXP_VAL10

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE182_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL9

        rsbs            r11, r6, r5, lsl #M33_STL_TE182_INPUT_VAL12

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE182_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE182_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL10
        ldr.w           r5, =M33_STL_TE182_INPUT_VAL10

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE182_EXP_VAL7

        bl              m33_stl_compare_gpr

#ifdef TASKING
        ldr.w           r4, =M33_STL_TE182_INPUT_VAL8
        mrs             r6, apsr
        and             r6, r6, r4
        msr             apsr, r6
#else
        msr             apsr_nzcvq, r4
#endif

        ldr.w           r6, =M33_STL_TE182_INPUT_VAL11

        rsbs            r11, r6, r5, lsl #M33_STL_TE182_INPUT_VAL13

        mrs             r7, apsr
        and             r7, r7, r1

        ldr.w           r12, =M33_STL_TE182_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr.w           r12, =M33_STL_TE182_EXP_VAL11

        bl              m33_stl_compare_gpr

m33_stl_close_te182:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 182
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n030 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n030:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n030

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n030 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n030 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n030:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n030

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n030 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n030 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n030:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n030 PROCEDURE
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
