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

        .section .s_m33_stl_cpu_n006,"ax"
        .global m33_stl_cpu_n006
        .type m33_stl_cpu_n006, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n006,"ax"
        .global m33_stl_cpu_n006

#endif
#ifdef __IAR__
        extern          m33_stl_gpr_context_save
        extern          m33_stl_gpr_init
        extern          m33_stl_compare_gpr
        extern          m33_stl_pass_test
        extern          m33_stl_err_test
        extern          m33_stl_gpr_context_restore

        public m33_stl_cpu_n006
        section .text:CODE
#endif
#ifdef __WINDRIVER__
        .file           "m33_stl_cpu_n006.asm"
        .section        .s_m33_stl_cpu_n006,"ax",%progbits
        .global         m33_stl_cpu_n006
        .p2align        2
#endif
#ifdef TASKING
        .extern          m33_stl_gpr_context_save
        .extern          m33_stl_gpr_init
        .extern          m33_stl_compare_gpr
        .extern          m33_stl_pass_test
        .extern          m33_stl_err_test
        .extern          m33_stl_gpr_context_restore

        .section .text.m33_stl_cpu_n006
        .global m33_stl_cpu_n006

        .align           4

#endif
m33_stl_cpu_n006:
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
        adr             r3, error_m33_stl_cpu_n006
#else
        adr.w           r3, error_m33_stl_cpu_n006
#endif

//-----------------------------------------------------------------------------/
// START TEST ELEMENT 31
//-----------------------------------------------------------------------------/

// This TE tests B{cond}

// GP Registers initialization with input value, entry in label,
// execute different instructions, if the result of the branch instruction
// is true, jump to the next indicated label, else execute EORS instruction
// and entry in the following label.When all the labels have been executed,
// compare the output result with expected value.

m33_stl_te31:

        ldr.w           r5, =M33_STL_TE31_INPUT_VAL1
        ldr.w           r4, =M33_STL_TE31_INPUT_VAL2
        ldr.w           r1, =M33_STL_TE31_INPUT_VAL3
        ldr.w           r2, =M33_STL_TE31_INPUT_VAL10
        ldr.w           r0, =M33_STL_TE31_INPUT_VAL1

jumplabel_beq:

        ldr.w           r6, =M33_STL_TE31_INPUT_VAL4

        mvns            r5, r6

        ldr.w           r6, =M33_STL_TE31_INPUT_VAL7

        mvns            r7, r6

        beq             jumplabel_bcc

        eors            r5, r5, r2

jumplabel_bne:

        adds            r5, r5, r1

        lsrs            r5, r5, #M33_STL_TE31_INPUT_VAL5

        bne             jumplabel_bmi

        eors            r5, r5, r2

jumplabel_bcs:

        movs            r6, r5

        adds            r5, r5, r4

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL6

        adds            r6, r6, r4

        bcs             jumplabel_bne

        eors            r5, r5, r2

jumplabel_bcc:

        subs            r5, r5, r1

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL8

        bcc             jumplabel_bcs

        eors            r5, r5, r2

jumplabel_cbz:

        ands            r5, r5, r4

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL8

        cbz             r0, jumplabel_bvc

        eors            r5, r5, r2

jumplabel_bmi:

        movs            r6, r5

        adds            r5, r5, r4

        lsrs            r5, r5, #M33_STL_TE31_INPUT_VAL6

        adds            r6, r6, r4

        bmi             jumplabel_cbz

        eors            r5, r5, r2

jumplabel_bpl:

        adds            r5, r5, r1

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL9

        bpl             jumplabel_bhi

        eors            r5, r5, r2

jumplabel_bvs:

        subs            r5, r5, r4

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL6

        movs            r6, r5

        adds            r7, r4, r6

        bvs             jumplabel_bpl

        eors            r5, r5, r2

jumplabel_bvc:

        movs            r6, r5

        subs            r5, r5, r4

        lsrs            r5, r5, #M33_STL_TE31_INPUT_VAL5

        subs            r6, r6, r4

        bvc             jumplabel_bvs

        eors            r5, r5, r2

jumplabel_bhi:

        adds            r5, r5, r1

        asrs            r5, r5, #M33_STL_TE31_INPUT_VAL6

        bhi             jumplabel_blt

        eors            r5, r5, r2

jumplabel_cbnz:

        adds            r5, r5, r4

        lsrs            r5, r5, #M33_STL_TE31_INPUT_VAL6

        cbnz            r5, jumplabel_bge

        eors            r5, r5, r2

jumplabel_bls:

        adds            r5, r5, r4

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL9

        ldr.w           r7, =M33_STL_TE31_INPUT_VAL7

        mvns            r6, r7

        bls             jumplabel_bgt

        eors            r5, r5, r2

jumplabel_bge:

        subs            r5, r5, r1

        lsrs            r5, r5, #M33_STL_TE31_INPUT_VAL5

        bge             jumplabel_bls

        eors            r5, r5, r2

jumplabel_blt:

        adcs            r5, r5, r4

        lsrs            r5, r5, #M33_STL_TE31_INPUT_VAL9

        ldr.w           r7, =M33_STL_TE31_INPUT_VAL7

        mvns            r6, r7

        blt             jumplabel_cbnz

        eors            r5, r5, r2

jumplabel_b:

        ands            r5, r5, r4

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL8

        b               jumplabel_end

        eors            r5, r5, r2

jumplabel_bgt:

        adds            r5, r5, r1

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL5

        movs            r6, r5

        adds            r6, r6, r1

        bgt             jumplabel_bl

        eors            r5, r5, r2

jumplabel_ble:

        movs            r6, r5

        subs            r5, r5, r1

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL8

        subs            r6, r6, r1

        ble             jumplabel_b

        eors            r5, r5, r2

jumplabel_bl:

        adcs            r5, r5, r4

        lsrs            r5, r5, #M33_STL_TE31_INPUT_VAL6

        bl              jumplabel_b_w

        eors            r5, r5, r2

jumplabel_b_w:

        adds            r5, r5, r1

        lsls            r5, r5, #M33_STL_TE31_INPUT_VAL8

#ifdef TASKING
        b               jumplabel_ble
#else
        b.w             jumplabel_ble
#endif

        eors            r5, r5, r1

jumplabel_end:

        mov             r11, r5

        ldr.w           r7, =M33_STL_TE31_EXP_VAL1

        mov             r12, r7

        bl              m33_stl_compare_gpr

m33_stl_close_te31:



//-----------------------------------------------------------------------------/
// END TEST ELEMENT 31
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CLOSE m33_stl_cpu_n006 PROCEDURE
//-----------------------------------------------------------------------------/

close_m33_stl_cpu_n006:

        pop             {r0}
        bl              m33_stl_pass_test
        b               context_restore_m33_stl_cpu_n006

//-----------------------------------------------------------------------------/
// END CLOSE m33_stl_cpu_n006 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START ERROR m33_stl_cpu_n006 PROCEDURE
//-----------------------------------------------------------------------------/

#ifdef __IAR__
        data
        alignrom        2
#endif
error_m33_stl_cpu_n006:

        pop             {r0}
        bl              m33_stl_err_test
        b               context_restore_m33_stl_cpu_n006

//-----------------------------------------------------------------------------/
// END ERROR m33_stl_cpu_n006 PROCEDURE
//-----------------------------------------------------------------------------/
//-----------------------------------------------------------------------------/
// START CONTEXT RESTORE m33_stl_cpu_n006 PROCEDURE
//-----------------------------------------------------------------------------/

context_restore_m33_stl_cpu_n006:

        bl              m33_stl_gpr_context_restore

//-----------------------------------------------------------------------------/
// END CONTEXT RESTORE m33_stl_cpu_n006 PROCEDURE
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
