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
#include "m33_stl_constants.h"

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_cpu_n030,"ax"
        .global m33_stl_cpu_n030
        .type m33_stl_cpu_n030, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n030,"ax"
        .global m33_stl_cpu_n030

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

        adr             r3, error_m33_stl_cpu_n030

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 172
//-----------------------------------------------------------------------------/

// This TE tests RBIT instruction

// GP Registers initialization with input value, RBIT operation test
// and compare the output result with expected value

m33_stl_te172:

        ldr             r9, =M33_STL_TE172_INPUT_VAL1

        rbit            r11, r9

        ldr             r12, =M33_STL_TE172_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE172_INPUT_VAL2

        rbit            r11, r9

        ldr             r12, =M33_STL_TE172_EXP_VAL2

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

        ldr             r6, =M33_STL_TE173_INPUT_VAL1

        rev.w           r11, r6

        ldr             r12, =M33_STL_TE173_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE173_INPUT_VAL2

        rev.w           r11, r6

        ldr             r12, =M33_STL_TE173_EXP_VAL2

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

        ldr             r6, =M33_STL_TE174_INPUT_VAL1

        rev16.w         r11, r6

        ldr             r12, =M33_STL_TE174_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE174_INPUT_VAL2

        rev16.w         r11, r6

        ldr             r12, =M33_STL_TE174_EXP_VAL2

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

        ldr             r6, =M33_STL_TE175_INPUT_VAL1

        revsh.w         r11, r6

        ldr             r12, =M33_STL_TE175_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE175_INPUT_VAL2

        revsh.w         r11, r6

        ldr             r12, =M33_STL_TE175_EXP_VAL2

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

        ldr             r9, =M33_STL_TE176_INPUT_VAL1

        ror             r11, r9, #M33_STL_TE176_INPUT_VAL2

        ldr             r12, =M33_STL_TE176_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE176_INPUT_VAL3

        ror             r11, r9, #M33_STL_TE176_INPUT_VAL2

        ldr             r12, =M33_STL_TE176_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE176_INPUT_VAL4

        ror             r11, r9, #M33_STL_TE176_INPUT_VAL6

        ldr             r12, =M33_STL_TE176_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE176_INPUT_VAL5

        ror             r11, r9, #M33_STL_TE176_INPUT_VAL6

        ldr             r12, =M33_STL_TE176_EXP_VAL4

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

        ldr             r6, =M33_STL_TE177_INPUT_VAL1
        ldr             r5, =M33_STL_TE177_INPUT_VAL2

        ror             r11, r5, r6

        ldr             r12, =M33_STL_TE177_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE177_INPUT_VAL3
        ldr             r6, =M33_STL_TE177_INPUT_VAL1

        ror             r11, r5, r6

        ldr             r12, =M33_STL_TE177_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE177_INPUT_VAL4
        ldr             r5, =M33_STL_TE177_INPUT_VAL5

        ror.w           r11, r5, r6

        ldr             r12, =M33_STL_TE177_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE177_INPUT_VAL7
        ldr             r5, =M33_STL_TE177_INPUT_VAL3

        ror.w           r11, r5, r6

        ldr             r12, =M33_STL_TE177_EXP_VAL5

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE177_INPUT_VAL8
        ldr             r5, =M33_STL_TE177_INPUT_VAL2

        ror.w           r11, r5, r6

        ldr             r12, =M33_STL_TE177_EXP_VAL6

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

        ldr             r5, =M33_STL_TE178_MASK_VAL1

        ldr             r6, =M33_STL_TE178_INPUT_VAL1

        rors            r11, r6, #M33_STL_TE178_INPUT_VAL5

        ldr             r12, =M33_STL_TE178_EXP_VAL1

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r5

        ldr             r12, =M33_STL_TE178_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE178_INPUT_VAL2

        rors            r11, r9, #M33_STL_TE178_INPUT_VAL6

        ldr             r12, =M33_STL_TE178_EXP_VAL3

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r5

        ldr             r12, =M33_STL_TE178_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE178_INPUT_VAL3

        rors            r11, r9, #M33_STL_TE178_INPUT_VAL7

        ldr             r12, =M33_STL_TE178_EXP_VAL5

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r5

        ldr             r12, =M33_STL_TE178_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r9, =M33_STL_TE178_INPUT_VAL8

        rors            r11, r9, #M33_STL_TE178_INPUT_VAL4

        ldr             r12, =M33_STL_TE178_EXP_VAL4

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r5

        ldr             r12, =M33_STL_TE178_EXP_VAL6

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

        ldr             r4,=M33_STL_TE179_INPUT_VAL1
        ldr             r1, =M33_STL_TE179_MASK_VAL1

        ldr             r5, =M33_STL_TE179_INPUT_VAL1
        ldr             r6, =M33_STL_TE179_INPUT_VAL2

        rors.w          r11, r5, r6

        ldr             r12, =M33_STL_TE179_EXP_VAL1

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE179_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE179_INPUT_VAL3
        ldr             r6, =M33_STL_TE179_INPUT_VAL2

        rors.w          r11, r5, r6

        ldr             r12, =M33_STL_TE179_EXP_VAL3

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE179_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE179_INPUT_VAL2
        ldr             r6, =M33_STL_TE179_INPUT_VAL4

        rors.w          r11, r5, r6

        ldr             r12, =M33_STL_TE179_EXP_VAL5

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE179_EXP_VAL6

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE179_INPUT_VAL6
        ldr             r6, =M33_STL_TE179_INPUT_VAL2

        rors.w          r11, r5, r6

        ldr             r12, =M33_STL_TE179_EXP_VAL7

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE179_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE179_INPUT_VAL7
        ldr             r6, =M33_STL_TE179_INPUT_VAL5

        rors.w          r11, r5, r6

        ldr             r12, =M33_STL_TE179_EXP_VAL8

        mrs             r8, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r8

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE179_EXP_VAL5

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

        ldr             r4, =M33_STL_TE180_INPUT_VAL3

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE180_INPUT_VAL1

        rrx             r11, r6

        ldr             r12, =M33_STL_TE180_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r4, =M33_STL_TE180_INPUT_VAL4

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE180_INPUT_VAL2

        rrx             r11, r6

        ldr             r12, =M33_STL_TE180_EXP_VAL2

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

        ldr             r4, =M33_STL_TE181_INPUT_VAL1
        ldr             r5, =M33_STL_TE181_INPUT_VAL4
        ldr             r1, =M33_STL_TE181_MASK_VAL1

        msr             apsr_nzcvq, r4

        ldr             r11, =M33_STL_TE181_INPUT_VAL1
        ldr             r10, =M33_STL_TE181_INPUT_VAL1

        rrxs            r11, r10

        ldr             r12, =M33_STL_TE181_EXP_VAL1

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE181_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r10, =M33_STL_TE181_INPUT_VAL2

        rrxs            r11, r10

        ldr             r12, =M33_STL_TE181_EXP_VAL2

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE181_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r5

        ldr             r6, =M33_STL_TE181_INPUT_VAL3

        rrxs            r11, r6

        ldr             r12, =M33_STL_TE181_EXP_VAL4

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE181_EXP_VAL5

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r5

        ldr             r6, =M33_STL_TE181_INPUT_VAL1

        rrxs            r11, r6

        ldr             r12, =M33_STL_TE181_EXP_VAL5

        mrs             r7, apsr

        bl              m33_stl_compare_gpr

        mov             r11, r7

        and             r11, r11, r1

        ldr             r12, =M33_STL_TE181_EXP_VAL5

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

        ldr             r4, =M33_STL_TE182_INPUT_VAL14
        ldr             r1, =M33_STL_TE182_MASK_VAL1

        ldr             r6, =M33_STL_TE182_INPUT_VAL2

        rsb             r11, r6, M33_STL_TE182_INPUT_VAL3

        ldr             r12, =M33_STL_TE182_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r6, M33_STL_TE182_INPUT_VAL4

        rsb             r11, r6, M33_STL_TE182_INPUT_VAL4

        ldr             r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r6, =M33_STL_TE182_INPUT_VAL5

        rsb             r11, r6, #M33_STL_TE182_INPUT_VAL1

        ldr             r12, =M33_STL_TE182_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE182_INPUT_VAL6

        rsbs            r11, r6, M33_STL_TE182_INPUT_VAL7

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE182_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE182_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE182_INPUT_VAL9
        ldr             r5, =M33_STL_TE182_INPUT_VAL7

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE182_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE182_INPUT_VAL10
        ldr             r5, =M33_STL_TE182_INPUT_VAL10

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE182_EXP_VAL7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE182_INPUT_VAL11

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE182_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE182_EXP_VAL11

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE182_INPUT_VAL6
        ldr             r5, =M33_STL_TE182_INPUT_VAL7

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE182_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE182_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE182_INPUT_VAL9

        rsbs            r11, r6, r5, lsl #M33_STL_TE182_INPUT_VAL12

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE182_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE182_INPUT_VAL10
        ldr             r5, =M33_STL_TE182_INPUT_VAL10

        rsbs            r11, r6, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE182_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE182_EXP_VAL7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvq, r4

        ldr             r6, =M33_STL_TE182_INPUT_VAL11

        rsbs            r11, r6, r5, lsl #M33_STL_TE182_INPUT_VAL13

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE182_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE182_EXP_VAL11

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

        .align 4
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
#ifdef __GHS__
        .align          8
        .end
#endif
#ifdef GCC_COMPILER
        .align          8
        .end
#endif
        end
