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

        .section .s_m33_stl_cpu_n021,"ax"
        .global m33_stl_cpu_n021
        .type m33_stl_cpu_n021, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n021,"ax"
        .global m33_stl_cpu_n021

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n021
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n021.asm"
        .section        .s_m33_stl_cpu_n021,"ax",%progbits
        .global         m33_stl_cpu_n021
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n021
        .global m33_stl_cpu_n021

        .align           4

#endif
m33_stl_cpu_n021:
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
        adr             r3, error_m33_stl_cpu_n021
#else
        adr.w           r3, error_m33_stl_cpu_n021
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 131
//-----------------------------------------------------------------------------/

// This TE tests a set of LDR and ADR instructions with label

// GP Registers initialization with address of the labels, execute subs operation
// and compare the output result with expected value

m33_stl_te131:

#ifdef GCC_KEIL_HIGHTEC_CMP
        .align          4
#endif
#ifdef __GHS__
        .align          4
#endif
#ifdef __IAR__
        data
        alignrom        2
#endif
#ifdef __WINDRIVER__
        .p2align        2
#endif
#ifdef TASKING
        .align          4
#endif

first_address_te131:

        movw            r5, #M33_STL_TE131_INPUT_VAL1

second_address_te131:

#ifdef TASKING
        ldr             r0, first_address_te131
        ldr             r1, second_address_te131
#else
        ldr.w           r0, first_address_te131
        ldr.w           r1, second_address_te131
#endif


        adr             r6, first_address_te131

        adr             r7, second_address_te131

        subs            r5, r1, r0

        movw            r12, #M33_STL_TE131_EXP_VAL1
        movt            r12, #M33_STL_TE131_EXP_VAL2

        mov             r11, r5

        bl              m33_stl_compare_gpr

        subs            r5, r7, r6

        movw            r12, #M33_STL_TE131_EXP_VAL3
        movt            r12, #M33_STL_TE131_EXP_VAL4

        mov             r11, r5

        bl              m33_stl_compare_gpr

m33_stl_close_te131:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 131
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 144
//-----------------------------------------------------------------------------/

// This TE tests LDMIA, LDMFD, LDMDB and LDMEA instructions

// GP Registers initialization with input value,
// LDMIA or LDMFD or LDMDB or LDMEA operation test
// and compare the output result with expected value

m33_stl_te144:

        sub             sp, sp, #M33_STL_TE144_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE144_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE144_INPUT_VAL1

        stm             r6, {r2, r4}

#ifdef TASKING
        ldmia           r6, {r5, r7}
#else
        ldmia.w         r6, {r5, r7}
#endif

        mov             r11, r5

        add             sp, sp, #M33_STL_TE144_STACK_WORDS4

        ldr.w           r12, =M33_STL_TE144_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE144_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE144_INPUT_VAL2
        ldr.w           r4, =M33_STL_TE144_INPUT_VAL2

        stm             r6, {r2, r4}

#ifdef TASKING
        ldmfd           r6, {r5, r7}
#else
        ldmfd.w         r6, {r5, r7}
#endif

        mov             r11, r5

        add             sp, sp, #M33_STL_TE144_STACK_WORDS4

        ldr.w           r12, =M33_STL_TE144_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE144_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE144_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE144_INPUT_VAL1

        stm             r6, {r2, r4}

        adds            r6, r6, #M33_STL_TE144_INPUT_VAL3

        ldmdb           r6, {r5, r7}

        mov             r11, r5

        add             sp, sp, #M33_STL_TE144_STACK_WORDS4

        ldr.w           r12, =M33_STL_TE144_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE144_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE144_INPUT_VAL2
        ldr.w           r4, =M33_STL_TE144_INPUT_VAL2

        stm             r6, {r2, r4}

        adds            r6, r6, #M33_STL_TE144_INPUT_VAL3

        ldmea           r6, {r5, r7}

        mov             r11, r5

        add             sp, sp, #M33_STL_TE144_STACK_WORDS4

        ldr.w           r12, =M33_STL_TE144_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE144_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE144_INPUT_VAL2
        ldr.w           r4, =M33_STL_TE144_INPUT_VAL2

        stm             r6!, {r2, r4}

        subs            r6, r6, #M33_STL_TE144_INPUT_VAL3

#ifdef TASKING
        ldmia           r6!, {r5, r7}
#else
        ldmia.w         r6!, {r5, r7}
#endif

        mov             r11, r5

        add             sp, sp, #M33_STL_TE144_STACK_WORDS4

        ldr.w           r12, =M33_STL_TE144_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE144_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE144_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE144_INPUT_VAL1

        stm             r6!, {r2, r4}

        subs            r6, r6, #M33_STL_TE144_INPUT_VAL3

#ifdef TASKING
        ldmfd           r6!, {r5, r7}
#else
        ldmfd.w         r6!, {r5, r7}
#endif

        mov             r11, r5

        add             sp, sp, #M33_STL_TE144_STACK_WORDS4

        ldr.w           r12, =M33_STL_TE144_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE144_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE144_INPUT_VAL2
        ldr.w           r4, =M33_STL_TE144_INPUT_VAL2

        adds            r6, r6, #M33_STL_TE144_INPUT_VAL3

        stm             r6!, {r2, r4}

        ldmdb           r6!, {r5, r7}

        mov             r11, r5

        add             sp, sp, #M33_STL_TE144_STACK_WORDS4

        ldr.w           r12, =M33_STL_TE144_EXP_VAL2

        bl              m33_stl_compare_gpr

        mov             r11, r7

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE144_STACK_WORDS4

        mov             r6, sp

        ldr.w           r2, =M33_STL_TE144_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE144_INPUT_VAL1

        adds            r6, r6, #M33_STL_TE144_INPUT_VAL3

        stm             r6!, {r2, r4}

        ldmea           r6!, {r5, r7}

        mov             r11, r5

        add             sp, sp, #M33_STL_TE144_STACK_WORDS4

        ldr.w           r12, =M33_STL_TE144_EXP_VAL1

        bl              m33_stl_compare_gpr

        mov             r11, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te144:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 144
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 145
//-----------------------------------------------------------------------------/

// This TE tests a set of LDR instructions

// GP Registers initialization with input value, LDR operations test and
// compare the output result with expected value

m33_stl_te145:

        movw            r1, #M33_STL_TE145_INPUT_VAL1
        movt            r1, #M33_STL_TE145_INPUT_VAL2
        movw            r2, #M33_STL_TE145_INPUT_VAL3
        movt            r2, #M33_STL_TE145_INPUT_VAL4
        movw            r10, #M33_STL_TE145_INPUT_VAL5
        movt            r10, #M33_STL_TE145_INPUT_VAL6
        movw            r9, #M33_STL_TE145_INPUT_VAL8
        movt            r9, #M33_STL_TE145_INPUT_VAL9
        movw            r6, #M33_STL_TE145_INPUT_VAL9
        movt            r6, #M33_STL_TE145_INPUT_VAL9
        movw            r7, #M33_STL_TE145_INPUT_VAL10
        movt            r7, #M33_STL_TE145_INPUT_VAL9

        sub             sp, sp, #M33_STL_TE145_STACK_WORDS3

        mov             r0, sp

        str             r1, [r0, r6]

#ifdef TASKING
        ldr             r11, [r0, r6]
#else
        ldr.w           r11, [r0, r6]
#endif

        movw            r12, #M33_STL_TE145_EXP_VAL1
        movt            r12, #M33_STL_TE145_EXP_VAL2

        add             sp, sp, #M33_STL_TE145_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE145_STACK_WORDS3

        str             r1, [r0, r6]

#ifdef TASKING
        ldrh            r11, [r0, r6]
#else
        ldrh.w          r11, [r0, r6]
#endif

        movw            r12, #M33_STL_TE145_EXP_VAL1
        movt            r12, #M33_STL_TE145_EXP_VAL3

        add             sp, sp, #M33_STL_TE145_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE145_STACK_WORDS3

        str             r1, [r0, r6]

#ifdef TASKING
        ldrsh           r11, [r0, r6]
#else
        ldrsh.w         r11, [r0, r6]
#endif

        movw            r12, #M33_STL_TE145_EXP_VAL1
        movt            r12, #M33_STL_TE145_EXP_VAL4

        add             sp, sp, #M33_STL_TE145_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE145_STACK_WORDS3

        str             r1, [r0, r6]

#ifdef TASKING
        ldrb            r11, [r0, r6]
#else
        ldrb.w          r11, [r0, r6]
#endif

        movw            r12, #M33_STL_TE145_EXP_VAL5
        movt            r12, #M33_STL_TE145_EXP_VAL3

        add             sp, sp, #M33_STL_TE145_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE145_STACK_WORDS3

        str             r1, [r0, r6]

#ifdef TASKING
        ldrsb           r11, [r0, r6]
#else
        ldrsb.w         r11, [r0, r6]
#endif

        movw            r12, #M33_STL_TE145_EXP_VAL6
        movt            r12, #M33_STL_TE145_EXP_VAL4

        add             sp, sp, #M33_STL_TE145_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE145_STACK_WORDS3

        str             r1, [r0, r6]

        ldrh            r11, [r0, r6, lsl #M33_STL_TE145_INPUT_VAL7]

        movw            r12, #M33_STL_TE145_EXP_VAL1
        movt            r12, #M33_STL_TE145_EXP_VAL3

        add             sp, sp, #M33_STL_TE145_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE145_STACK_WORDS3

        strb            r10, [r0, r7]

#ifdef TASKING
        ldrb            r11, [r0, r7]
#else
        ldrb.w          r11, [r0, r7]
#endif

        movw            r12, #M33_STL_TE145_EXP_VAL7
        movt            r12, #M33_STL_TE145_EXP_VAL3

        add             sp, sp, #M33_STL_TE145_STACK_WORDS3

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE145_STACK_WORDS3

        strh            r2, [r0, r9, lsl #M33_STL_TE145_INPUT_VAL7]

        ldrh            r11, [r0, r9, lsl #M33_STL_TE145_INPUT_VAL7]

        movw            r12, #M33_STL_TE145_EXP_VAL8
        movt            r12, #M33_STL_TE145_EXP_VAL3

        add             sp, sp, #M33_STL_TE145_STACK_WORDS3

        bl              m33_stl_compare_gpr

m33_stl_close_te145:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 145
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 146
//-----------------------------------------------------------------------------/

// This TE tests a set of LDR instructions

// GP Registers initialization with input value, LDR operations test and
// compare the output result with expected value

m33_stl_te146:

        movw            r6, #M33_STL_TE146_INPUT_VAL1
        movt            r6, #M33_STL_TE146_INPUT_VAL2
        movw            r2, #M33_STL_TE146_INPUT_VAL3
        movt            r2, #M33_STL_TE146_INPUT_VAL4
        movw            r10, #M33_STL_TE146_INPUT_VAL5
        movt            r10, #M33_STL_TE146_INPUT_VAL6

        movw            r8, #M33_STL_TE146_INPUT_VAL9

        sub             sp, sp, #M33_STL_TE146_STACK_WORDS5

        add             r0, sp, #M33_STL_TE146_INPUT_VAL10

        mov             r4, r0

        str             r6, [r0], #-M33_STL_TE146_INPUT_VAL7

        mov             r1, r0

        sub             r0, r0, #M33_STL_TE146_INPUT_VAL7

#ifdef TASKING
        ldr             r11, [r0, #M33_STL_TE146_INPUT_VAL8]!
#else
        ldr.w           r11, [r0, #M33_STL_TE146_INPUT_VAL8]!
#endif

        movw            r12, #M33_STL_TE146_EXP_VAL1
        movt            r12, #M33_STL_TE146_EXP_VAL2

        add             sp, sp, #M33_STL_TE146_STACK_WORDS5

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE146_STACK_WORDS5

        mov             r7, r4

        str             r6, [r4], #-M33_STL_TE146_INPUT_VAL7

#ifdef TASKING
        ldrh            r11, [r0]
#else
        ldrh.w          r11, [r0]
#endif

        movw            r12, #M33_STL_TE146_EXP_VAL1
        movt            r12, #M33_STL_TE146_EXP_VAL3

        add             sp, sp, #M33_STL_TE146_STACK_WORDS5

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE146_STACK_WORDS5

        mov             r4, r7

        str             r6, [r4], #-M33_STL_TE146_INPUT_VAL7

        ldrsh           r11, [r0]

        movw            r12, #M33_STL_TE146_EXP_VAL1
        movt            r12, #M33_STL_TE146_EXP_VAL4

        add             sp, sp, #M33_STL_TE146_STACK_WORDS5

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE146_STACK_WORDS5

        mov             r4, r7

        str             r6, [r4], #-M33_STL_TE146_INPUT_VAL7

        ldrb            r11, [r0]

        movw            r12, #M33_STL_TE146_EXP_VAL5
        movt            r12, #M33_STL_TE146_EXP_VAL3

        add             sp, sp, #M33_STL_TE146_STACK_WORDS5

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE146_STACK_WORDS5

        mov             r4, r7

        str             r6, [r4], #-M33_STL_TE146_INPUT_VAL7

        ldrsb           r11, [r0], #-M33_STL_TE146_INPUT_VAL7

        movw            r12, #M33_STL_TE146_EXP_VAL6
        movt            r12, #M33_STL_TE146_EXP_VAL4

        add             sp, sp, #M33_STL_TE146_STACK_WORDS5

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE146_STACK_WORDS5

        strh            r2, [r1]

#ifdef TASKING
        ldrh            r11, [r0]
#else
        ldrh.w          r11, [r0]
#endif

        movw            r12, #M33_STL_TE146_EXP_VAL7
        movt            r12, #M33_STL_TE146_EXP_VAL3

        add             sp, sp, #M33_STL_TE146_STACK_WORDS5

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE146_STACK_WORDS5

        mov             r9, r1

        str             r10, [r1, #-M33_STL_TE146_INPUT_VAL7]!

        ldrb            r11, [r0, #-M33_STL_TE146_INPUT_VAL7]!

        movw            r12, #M33_STL_TE146_EXP_VAL8
        movt            r12, #M33_STL_TE146_EXP_VAL3

        add             sp, sp, #M33_STL_TE146_STACK_WORDS5

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE146_STACK_WORDS5

        mov             r1, r9

        str             r6, [r1], #-M33_STL_TE146_INPUT_VAL7

        ldrd            r11, r9, [r0, #M33_STL_TE146_INPUT_VAL7]

        movw            r12, #M33_STL_TE146_EXP_VAL1
        movt            r12, #M33_STL_TE146_EXP_VAL2

        add             sp, sp, #M33_STL_TE146_STACK_WORDS5

        bl              m33_stl_compare_gpr

m33_stl_close_te146:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 146
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 147
//-----------------------------------------------------------------------------/

// This TE tests set of LDR and SRT instructions

// GP Registers initialization with input value, LDR and SRT operations test and
// compare the output result with expected value

m33_stl_te147:

        movw            r1, #M33_STL_TE147_INPUT_VAL1
        movt            r1, #M33_STL_TE147_INPUT_VAL1
        movw            r2, #M33_STL_TE147_INPUT_VAL2
        movt            r2, #M33_STL_TE147_INPUT_VAL2
        movw            r9, #M33_STL_TE147_INPUT_VAL1
        movt            r9, #M33_STL_TE147_INPUT_VAL1
        movw            r5, #M33_STL_TE147_INPUT_VAL5
        movt            r5, #M33_STL_TE147_INPUT_VAL6
        movw            r6, #M33_STL_TE147_INPUT_VAL7
        movt            r6, #M33_STL_TE147_INPUT_VAL8
        movw            r7, #M33_STL_TE147_INPUT_VAL10
        movt            r7, #M33_STL_TE147_INPUT_VAL11

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        movw            r8, #M33_STL_TE147_INPUT_VAL12

        add             r0, sp, #M33_STL_TE147_INPUT_VAL4

        add             r4, sp, #M33_STL_TE147_INPUT_VAL3

        strt            r1, [r4]

        strht           r2, [r4, #M33_STL_TE147_INPUT_VAL9]

        sub             r4, r4, #M33_STL_TE147_INPUT_VAL9

#ifdef TASKING
        ldrh            r10, [r0, r6]
#else
        ldrh.w          r10, [r0, r6]
#endif

        movw            r12, #M33_STL_TE147_EXP_VAL1
        movt            r12, #M33_STL_TE147_EXP_VAL2

        mov             r11, r10

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        strht           r2, [r4, #M33_STL_TE147_INPUT_VAL9]

        ldrh            r5, [r0, #-M33_STL_TE147_INPUT_VAL3]

        movw            r12, #M33_STL_TE147_EXP_VAL1
        movt            r12, #M33_STL_TE147_EXP_VAL2

        mov             r11, r5

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        strht           r2, [r4, #M33_STL_TE147_INPUT_VAL9]

        ldrsh           r8, [r0, #-M33_STL_TE147_INPUT_VAL3]

        movw            r12, #M33_STL_TE147_EXP_VAL1
        movt            r12, #M33_STL_TE147_EXP_VAL2

        mov             r11, r8

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        strht           r2, [r4, #M33_STL_TE147_INPUT_VAL9]

        ldrb            r7, [r0, #-M33_STL_TE147_INPUT_VAL3]

        mov             r11, r7

        movw            r12, #M33_STL_TE147_EXP_VAL3
        movt            r12, #M33_STL_TE147_EXP_VAL2

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        strht           r2, [r4, #M33_STL_TE147_INPUT_VAL9]

        ldrsb           r9, [r0, #-M33_STL_TE147_INPUT_VAL3]

        movw            r12, #M33_STL_TE147_EXP_VAL3
        movt            r12, #M33_STL_TE147_EXP_VAL2

        mov             r11, r9

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        strt            r1, [r4]

        strht           r2, [r4, #M33_STL_TE147_INPUT_VAL9]

        sub             r0, r0, #M33_STL_TE147_INPUT_VAL9

        ldmdb           r0, {r1,r2}

        add             r0, r0, #M33_STL_TE147_INPUT_VAL9

        movw            r12, #M33_STL_TE147_EXP_VAL4
        movt            r12, #M33_STL_TE147_EXP_VAL4

        mov             r11, r1

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        movw            r12, #M33_STL_TE147_EXP_VAL1
        movt            r12, #M33_STL_TE147_EXP_VAL2

        mov             r11, r2

        movw            r5, #M33_STL_TE147_MASK_VAL1
        movt            r5, #M33_STL_TE147_MASK_VAL2

        and             r11, r11, r5

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        sub             r0, r0, #M33_STL_TE147_INPUT_VAL13

        strt            r1, [r4]

#ifdef TASKING
        ldrh            r10, [r0]
#else
        ldrh.w          r10, [r0]
#endif

        movw            r12, #M33_STL_TE147_EXP_VAL4
        movt            r12, #M33_STL_TE147_EXP_VAL2

        mov             r11, r10

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        strt            r1, [r4]

#ifdef TASKING
        ldrh            r5, [r0]
#else
        ldrh.w          r5, [r0]
#endif

        movw            r12, #M33_STL_TE147_EXP_VAL4
        movt            r12, #M33_STL_TE147_EXP_VAL2

        mov             r11, r5

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE147_STACK_WORDS6

        strt            r1, [r4]

        ldrsh           r8, [r0]

        movw            r12, #M33_STL_TE147_EXP_VAL4
        movt            r12, #M33_STL_TE147_EXP_VAL5

        mov             r11, r8

        add             sp, sp, #M33_STL_TE147_STACK_WORDS6

        bl              m33_stl_compare_gpr

m33_stl_close_te147:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 147
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 148
//-----------------------------------------------------------------------------/

// This TE tests the STRD instructions

// GP Registers initialization with input value, STRD operation test and compare
// the output result with expected value

m33_stl_te148:

        ldr.w           r0, =M33_STL_TE148_INPUT_VAL1
        ldr.w           r7, =M33_STL_TE148_INPUT_VAL2

        sub             sp, sp, #M33_STL_TE148_STACK_WORDS5

        add             r2, sp, #M33_STL_TE148_INPUT_VAL12

        sub             r2, r2, #M33_STL_TE148_INPUT_VAL3

        strd            r0, r7, [r2, #M33_STL_TE148_INPUT_VAL4]

        add             r5, r0, r7

        add             r6, r7, r0

#ifdef TASKING
        ldr             r11, [r2, #M33_STL_TE148_INPUT_VAL4]
        ldr             r4, [r2, #M33_STL_TE148_INPUT_VAL5]
#else
        ldr.w           r11, [r2, #M33_STL_TE148_INPUT_VAL4]
        ldr.w           r4, [r2, #M33_STL_TE148_INPUT_VAL5]
#endif

        ldr.w           r12, =M33_STL_TE148_EXP_VAL1

        add             sp, sp, #M33_STL_TE148_STACK_WORDS5

        bl              m33_stl_compare_gpr

        mov             r11, r4

        ldr.w           r12, =M33_STL_TE148_EXP_VAL2

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE148_STACK_WORDS5

        ldr.w           r0, =M33_STL_TE148_INPUT_VAL6
        ldr.w           r7, =M33_STL_TE148_INPUT_VAL7

        add             r2, sp, #M33_STL_TE148_INPUT_VAL12

        sub             r2, r2, #M33_STL_TE148_INPUT_VAL8

        strd            r0, r7, [r2, #M33_STL_TE148_INPUT_VAL5]!

        add             r5, r0, r7

        add             r6, r7, r0

#ifdef TASKING
        ldr             r11, [r2, #M33_STL_TE148_INPUT_VAL4]
        ldr             r4, [r2, #M33_STL_TE148_INPUT_VAL11]
#else
        ldr.w           r11, [r2, #M33_STL_TE148_INPUT_VAL4]
        ldr.w           r4, [r2, #M33_STL_TE148_INPUT_VAL11]
#endif

        ldr.w           r12, =M33_STL_TE148_EXP_VAL3

        add             sp, sp, #M33_STL_TE148_STACK_WORDS5

        bl              m33_stl_compare_gpr

        mov             r11, r4

        ldr.w           r12, =M33_STL_TE148_EXP_VAL4

        bl              m33_stl_compare_gpr

        sub             sp, sp, #M33_STL_TE148_STACK_WORDS5

        ldr.w           r0, =M33_STL_TE148_INPUT_VAL9
        ldr.w           r7, =M33_STL_TE148_INPUT_VAL10

        add             r2, sp, #M33_STL_TE148_INPUT_VAL12

        sub             r2, r2, #M33_STL_TE148_INPUT_VAL8

        strd            r0, r7, [r2], #M33_STL_TE148_INPUT_VAL3

        add             r5, r0, r7
        add             r6, r7, r0

        ldr             r11, [r2, #-M33_STL_TE148_INPUT_VAL3]
        ldr             r4, [r2, #-M33_STL_TE148_INPUT_VAL5]

        ldr.w           r12, =M33_STL_TE148_EXP_VAL5

        add             sp, sp, #M33_STL_TE148_STACK_WORDS5

        bl              m33_stl_compare_gpr

        mov             r11, r4

        ldr.w           r12, =M33_STL_TE148_EXP_VAL6

        bl              m33_stl_compare_gpr

m33_stl_close_te148:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 148
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START TEST ELEMENT 239
//-----------------------------------------------------------------------------/

// This TE tests LDRB, LDRH, LDRSB and LDRSH instructions with label

// GP Registers initialization with address of the labels, execute subs operation
// and compare the output result with expected value

m33_stl_te239:

#ifdef GCC_KEIL_HIGHTEC_CMP
        .balign          4
#endif
#ifdef __GHS__
        .align          4
#endif
#ifdef __IAR__
        data
        alignrom        2
#endif
#ifdef __WINDRIVER__
        .p2align        2
#endif
#ifdef TASKING
        .align          4
#endif

first_address_te239:

        movw            r5, #M33_STL_TE239_INPUT_VAL1

second_address_te239:

#ifdef TASKING
        ldr             r7, first_address_te239
        ldr             r6, second_address_te239
#else
        ldr.w           r7, first_address_te239
        ldr.w           r6, second_address_te239
#endif

        sub             r11, r6, r7

        movw            r12, #M33_STL_TE239_EXP_VAL4
        movt            r12, #M33_STL_TE239_EXP_VAL1

        bl              m33_stl_compare_gpr

        ldrb            r7, first_address_te239

        ldrb            r6, second_address_te239

        sub             r11, r6, r7

        movw            r12, #M33_STL_TE239_EXP_VAL2
        movt            r12, #M33_STL_TE239_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldrsb           r7, first_address_te239

        ldrsb           r6, second_address_te239

        sub             r11, r6, r7

        movw            r12, #M33_STL_TE239_EXP_VAL2
        movt            r12, #M33_STL_TE239_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldrh            r7, first_address_te239

        ldrh            r6, second_address_te239

        sub             r11, r6, r7

        movw            r12, #M33_STL_TE239_EXP_VAL4
        movt            r12, #M33_STL_TE239_EXP_VAL3

        bl              m33_stl_compare_gpr

        ldrsh           r7, first_address_te239

        ldrsh           r6, second_address_te239

        sub             r11, r6, r7

        movw            r12, #M33_STL_TE239_EXP_VAL4
        movt            r12, #M33_STL_TE239_EXP_VAL3

        bl              m33_stl_compare_gpr

m33_stl_close_te239:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 239
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n021 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n021:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n021

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n021 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n021 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n021:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n021

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n021 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n021 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n021:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n021 PROCEDURE
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
