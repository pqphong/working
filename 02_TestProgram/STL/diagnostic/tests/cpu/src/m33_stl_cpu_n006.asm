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

        .section .s_m33_stl_cpu_n006,"ax"
        .global m33_stl_cpu_n006
        .type m33_stl_cpu_n006, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_cpu_n006,"ax"
        .global m33_stl_cpu_n006

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

        adr             r3, error_m33_stl_cpu_n006

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

        ldr             r5, =M33_STL_TE31_INPUT_VAL1
        ldr             r4, =M33_STL_TE31_INPUT_VAL2
        ldr             r1, =M33_STL_TE31_INPUT_VAL3
        ldr             r2, =M33_STL_TE31_INPUT_VAL10
        ldr             r0, =M33_STL_TE31_INPUT_VAL1

jumplabel_beq:

        ldr             r6, =M33_STL_TE31_INPUT_VAL4

        mvns            r5, r6

        ldr             r6, =M33_STL_TE31_INPUT_VAL7

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

        lsrs            r5, r5, M33_STL_TE31_INPUT_VAL6

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

        ldr             r7, =M33_STL_TE31_INPUT_VAL7

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

        ldr             r7, =M33_STL_TE31_INPUT_VAL7

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

        b.w             jumplabel_ble

        eors            r5, r5, r1

jumplabel_end:

        mov             r11, r5

        ldr             r7, =M33_STL_TE31_EXP_VAL1

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

        .align 4
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
#ifdef __GHS__
        .align          8
        .end
#endif
#ifdef GCC_COMPILER
        .align          8
        .end
#endif
        end
