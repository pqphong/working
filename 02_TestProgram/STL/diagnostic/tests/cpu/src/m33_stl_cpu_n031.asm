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

        .section .s_m33_stl_cpu_n031,"ax"
        .global m33_stl_cpu_n031
        .type m33_stl_cpu_n031, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n031,"ax"
        .global m33_stl_cpu_n031

#endif
m33_stl_cpu_n031:
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

        adr             r3, error_m33_stl_cpu_n031

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 183
//-----------------------------------------------------------------------------/

// This TE tests SADD16 and SADD8 instructions

// GP Registers initialization with input value, write in APSR register,
// SADD16 and SADD8 operations test, read from APSR register and compare
// the output result with expected value

m33_stl_te183:

        ldr             r4, =M33_STL_TE183_INPUT_VAL4
        ldr             r1, =M33_STL_TE183_MASK_VAL1

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE183_INPUT_VAL2
        ldr             r5, =M33_STL_TE183_INPUT_VAL3

        sadd16          r11, r8, r5

        mrs             r9, apsr
        and             r9, r9, r1

        ldr             r12, =M33_STL_TE183_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE183_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE183_INPUT_VAL3

        sadd16          r11, r8, r5

        mrs             r9, apsr
        and             r9, r9, r1

        ldr             r12, =M33_STL_TE183_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE183_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE183_INPUT_VAL1
        ldr             r5, =M33_STL_TE183_INPUT_VAL2

        sadd16          r11, r8, r5

        mrs             r9, apsr
        and             r9, r9, r1

        ldr             r12, =M33_STL_TE183_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE183_EXP_VAL5

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE183_INPUT_VAL5
        ldr             r5, =M33_STL_TE183_INPUT_VAL1

        sadd8           r11, r8, r5

        mrs             r9, apsr
        and             r9, r9, r1

        ldr             r12, =M33_STL_TE183_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE183_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE183_INPUT_VAL4
        mov             r5, r8

        sadd8           r11, r8, r5

        mrs             r9, apsr
        and             r9, r9, r1

        ldr             r12, =M33_STL_TE183_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r9

        ldr             r12, =M33_STL_TE183_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te183:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 183
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 184
//-----------------------------------------------------------------------------/

// This TE tests SASX and SSAX instructions

// GP Registers initialization with input value, write in APSR register,
// SASX and SSAX operations test, read from APSR register and compare
// the output result with expected value

m33_stl_te184:

        ldr             r4, =M33_STL_TE184_INPUT_VAL1
        ldr             r1, =M33_STL_TE184_MASK_VAL1

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE184_INPUT_VAL3
        ldr             r5, =M33_STL_TE184_INPUT_VAL3

        sasx            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE184_EXP_VAL6

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE184_EXP_VAL7

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE184_INPUT_VAL4
        ldr             r5, =M33_STL_TE184_INPUT_VAL1

        sasx            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE184_EXP_VAL8

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE184_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE184_INPUT_VAL1
        ldr             r5, =M33_STL_TE184_INPUT_VAL1

        sasx            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE184_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE184_EXP_VAL3

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE184_INPUT_VAL2
        ldr             r5, =M33_STL_TE184_INPUT_VAL2

        ssax            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE184_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE184_EXP_VAL2

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE184_INPUT_VAL3
        ldr             r5, =M33_STL_TE184_INPUT_VAL3

        ssax            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE184_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE184_EXP_VAL1

        bl              m33_stl_compare_gpr

        msr             apsr_nzcvqg, r4

        ldr             r8, =M33_STL_TE184_INPUT_VAL1
        ldr             r5, =M33_STL_TE184_INPUT_VAL1

        ssax            r11, r8, r5

        mrs             r7, apsr
        and             r7, r7, r1

        ldr             r12, =M33_STL_TE184_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        ldr             r12, =M33_STL_TE184_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te184:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 184
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 188
//-----------------------------------------------------------------------------/

// This TE tests SHADD16 and SHADD8 instructions

// GP Registers initialization with input value, SHADD16 and SHADD8 operations test
// and compare the output result with expected value

m33_stl_te188:

        ldr             r8, =M33_STL_TE188_INPUT_VAL1
        ldr             r5, =M33_STL_TE188_INPUT_VAL2

        shadd16         r11, r8, r5

        ldr             r12, =M33_STL_TE188_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE188_INPUT_VAL2
        mov             r8, r5

        shadd16         r11, r8, r5

        ldr             r12, =M33_STL_TE188_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE188_INPUT_VAL1
        mov             r8, r5

        shadd16         r11, r8, r5

        ldr             r12, =M33_STL_TE188_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE188_INPUT_VAL3
        ldr             r5, =M33_STL_TE188_INPUT_VAL3

        shadd8          r11, r8, r5

        ldr             r12, =M33_STL_TE188_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE188_INPUT_VAL4
        ldr             r5, =M33_STL_TE188_INPUT_VAL4

        shadd8          r11, r8, r5

        ldr             r12, =M33_STL_TE188_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te188:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 188
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 189
//-----------------------------------------------------------------------------/

// This TE tests SHASX and SHSAX instructions

// GP Registers initialization with input value, SHASX and SHSAX operations test
// and compare the output result with expected value

m33_stl_te189:

        ldr             r8, =M33_STL_TE189_INPUT_VAL1
        ldr             r5, =M33_STL_TE189_INPUT_VAL2

        shadd16         r11, r8, r5

        ldr             r12, =M33_STL_TE189_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE189_INPUT_VAL2
        mov             r8, r5

        shadd16         r11, r8, r5

        ldr             r12, =M33_STL_TE189_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r5, =M33_STL_TE189_INPUT_VAL1
        mov             r8, r5

        shadd16         r11, r8, r5

        ldr             r12, =M33_STL_TE189_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE189_INPUT_VAL3
        ldr             r5, =M33_STL_TE189_INPUT_VAL3

        shadd8          r11, r8, r5

        ldr             r12, =M33_STL_TE189_EXP_VAL4

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE189_INPUT_VAL4
        ldr             r5, =M33_STL_TE189_INPUT_VAL4

        shadd8          r11, r8, r5

        ldr             r12, =M33_STL_TE189_EXP_VAL5

        bl              m33_stl_compare_gpr

m33_stl_close_te189:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 189
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 190
//-----------------------------------------------------------------------------/

// This TE tests SHSUB16 and SHSUB8 instructions

// GP Registers initialization with input value, SHSUB16 and SHSUB8 operations test
// and compare the output result with expected value

m33_stl_te190:

        ldr             r8, =M33_STL_TE190_INPUT_VAL1
        ldr             r5, =M33_STL_TE190_INPUT_VAL2

        shsub8          r11, r8, r5

        ldr             r12, =M33_STL_TE190_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE190_INPUT_VAL3
        ldr             r5, =M33_STL_TE190_INPUT_VAL4

        shsub8          r11, r8, r5

        ldr             r12, =M33_STL_TE190_EXP_VAL2

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE190_INPUT_VAL4
        ldr             r5, =M33_STL_TE190_INPUT_VAL4

        shsub16         r11, r8, r5

        ldr             r12, =M33_STL_TE190_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldr             r8, =M33_STL_TE190_INPUT_VAL5
        ldr             r5, =M33_STL_TE190_INPUT_VAL6

        shsub16         r11, r8, r5

        ldr             r12, =M33_STL_TE190_EXP_VAL4

        bl              m33_stl_compare_gpr

m33_stl_close_te190:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 190
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 202
//-----------------------------------------------------------------------------/

// This TE tests SSUB16 and SSUB8 instructions

// GP Registers initialization with input value, write in APSR register,
// SADD16 and SADD8 operations test, read from APSR register and compare
// the output result with expected value

m33_stl_te202:

        ldr             r1, =M33_STL_TE202_MASK_VAL1
        ldr             r2, =M33_STL_TE202_INPUT_VAL1

        msr             apsr_g, r2

        ldr             r8, =M33_STL_TE202_INPUT_VAL2
        ldr             r5, =M33_STL_TE202_INPUT_VAL2

        ssub8           r11, r8, r5

        mrs             r6, apsr
        and             r6, r6, r1

        ldr             r12, =M33_STL_TE202_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE202_EXP_VAL6

        bl              m33_stl_compare_gpr

        msr             apsr_g, r2

        ldr             r8, =M33_STL_TE202_INPUT_VAL3
        ldr             r5, =M33_STL_TE202_INPUT_VAL4

        ssub8           r11, r8, r5

        mrs             r6, apsr
        and             r6, r6, r1

        ldr             r12, =M33_STL_TE202_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE202_EXP_VAL7

        bl              m33_stl_compare_gpr

        msr             apsr_g, r2

        ldr             r8, =M33_STL_TE202_INPUT_VAL5
        ldr             r5, =M33_STL_TE202_INPUT_VAL4

        ssub8           r11, r8, r5

        mrs             r6, apsr
        and             r6, r6, r1

        ldr             r12, =M33_STL_TE202_EXP_VAL3

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE202_EXP_VAL7

        bl              m33_stl_compare_gpr

        msr             apsr_g, r2

        ldr             r8, =M33_STL_TE202_INPUT_VAL4
        ldr             r5, =M33_STL_TE202_INPUT_VAL3

        ssub8           r11, r8, r5

        mrs             r6, apsr
        and             r6, r6, r1

        ldr             r12, =M33_STL_TE202_EXP_VAL9

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE202_EXP_VAL10

        bl              m33_stl_compare_gpr

        msr             apsr_g, r2

        ldr             r8, =M33_STL_TE202_INPUT_VAL6
        ldr             r5, =M33_STL_TE202_INPUT_VAL7

        ssub16          r11, r8, r5

        mrs             r6, apsr
        and             r6, r6, r1

        ldr             r12, =M33_STL_TE202_EXP_VAL4

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE202_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_g, r2

        ldr             r8, =M33_STL_TE202_INPUT_VAL5
        ldr             r5, =M33_STL_TE202_INPUT_VAL8

        ssub16          r11, r8, r5

        mrs             r6, apsr
        and             r6, r6, r1

        ldr             r12, =M33_STL_TE202_EXP_VAL5

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE202_EXP_VAL8

        bl              m33_stl_compare_gpr

        msr             apsr_g, r2

        ldr             r8, =M33_STL_TE202_INPUT_VAL5
        ldr             r5, =M33_STL_TE202_INPUT_VAL6

        ssub16          r11, r8, r5

        mrs             r6, apsr
        and             r6, r6, r1

        ldr             r12, =M33_STL_TE202_EXP_VAL11

        bl              m33_stl_compare_gpr

        mov             r11, r6

        ldr             r12, =M33_STL_TE202_EXP_VAL12

        bl              m33_stl_compare_gpr

m33_stl_close_te202:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 202
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n031 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n031:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n031

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n031 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n031 PROCEDURE
//-----------------------------------------------------------------------------/

        .align 4
error_m33_stl_cpu_n031:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n031

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n031 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n031 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n031:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n031 PROCEDURE
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
