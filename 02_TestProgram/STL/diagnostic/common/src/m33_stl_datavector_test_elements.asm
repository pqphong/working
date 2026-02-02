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

        .section .s_m33_stl_sdiv_test, "ax"
        .global m33_stl_sdiv_test
        .type m33_stl_sdiv_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_sdiv_test,"ax"
        .global m33_stl_sdiv_test

#endif
m33_stl_sdiv_test:

//------------------------------------------------------------------------------/
// START TEST sdiv
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_sdiv_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_sdiv:



        ldm             r1!, {r5}
        ldm             r1!, {r6}

        sdiv            r11, r5, r6

        ldm             r1!, {r7}

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldm             r1!, {r5}
        ldm             r1!, {r6}

        sdiv            r11, r5, r6

        ldm             r1!, {r7}

        mov             r12, r7

        bl              m33_stl_compare_gpr

        adds            r4, r4, #M33_STL_DATAVECT_VAL1

        cmp             r4, r2
        bne             loop_sdiv


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_sdiv_close

        .align 4
m33_stl_sdiv_error:


        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_sdiv_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST sdiv
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_udiv_test, "ax"
        .global m33_stl_udiv_test
        .type m33_stl_udiv_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_udiv_test,"ax"
        .global m33_stl_udiv_test

#endif
m33_stl_udiv_test:

//------------------------------------------------------------------------------/
// START TEST udiv
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_udiv_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_udiv:



        ldm             r1!, {r5}
        ldm             r1!, {r6}

        udiv            r11, r5, r6

        ldm             r1!, {r7}

        mov             r12, r7

        bl              m33_stl_compare_gpr

        ldm             r1!, {r5}
        ldm             r1!, {r6}

        udiv            r11, r5, r6

        ldm             r1!, {r7}

        mov             r12, r7

        bl              m33_stl_compare_gpr

        adds            r4, r4, #M33_STL_DATAVECT_VAL1

        cmp             r4, r2
        bne             loop_udiv


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_udiv_close

        .align 4
m33_stl_udiv_error:


        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_udiv_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST udiv
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_vfmaf32_test, "ax"
        .global m33_stl_vfmaf32_test
        .type m33_stl_vfmaf32_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_vfmaf32_test,"ax"
        .global m33_stl_vfmaf32_test

#endif
m33_stl_vfmaf32_test:

//------------------------------------------------------------------------------/
// START TEST vfmaf32
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_vfmaf32_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_vfmaf32:

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

        vmrs            r0, fpscr

        vmsr            fpscr, r5

        vldmia          r1!, {d6}

        vldmia          r1!, {s11}

        vfma.f32        s11, s12, s13

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        vldmia          r1!, {d4}

        vldmia          r1!, {s21}

        vfma.f32        s21, s8, s9

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s21

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL5

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        cmp             r4, r2
        bne             loop_vfmaf32


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_vfmaf32_close

        .align 4
m33_stl_vfmaf32_error:

//------------------------------------------------------------------------------
// Clean ICPR2
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]


//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_vfmaf32_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST vfmaf32
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_vfmsf32_test, "ax"
        .global m33_stl_vfmsf32_test
        .type m33_stl_vfmsf32_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_vfmsf32_test,"ax"
        .global m33_stl_vfmsf32_test

#endif
m33_stl_vfmsf32_test:

//------------------------------------------------------------------------------/
// START TEST vfmsf32
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_vfmsf32_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_vfmsf32:

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

        vmrs            r0, fpscr

        vmsr            fpscr, r5

        vldmia          r1!, {d6}

        vldmia          r1!, {s11}

        vfms.f32        s11, s12, s13

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        vldmia          r1!, {d4}

        vldmia          r1!, {s21}

        vfms.f32        s21, s8, s9

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s21

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL5

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        cmp             r4, r2
        bne             loop_vfmsf32


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_vfmsf32_close

        .align 4
m33_stl_vfmsf32_error:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_vfmsf32_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST vfmsf32
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_umull_test, "ax"
        .global m33_stl_umull_test
        .type m33_stl_umull_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_umull_test,"ax"
        .global m33_stl_umull_test

#endif
m33_stl_umull_test:

//------------------------------------------------------------------------------/
// START TEST umull
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_umull_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_umull:



        ldrd            r5, r6, [r1], M33_STL_DATAVECT_VAL3

        umull           r11, r9, r5, r6

        ldrd            r12, r10, [r1], M33_STL_DATAVECT_VAL3

        bl              m33_stl_compare_gpr

        mov             r12, r10
        mov             r11, r9

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL4



        cmp             r4, r2
        bne             loop_umull


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_umull_close

        .align 4
m33_stl_umull_error:


        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_umull_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST umull
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_vaddf32_test, "ax"
        .global m33_stl_vaddf32_test
        .type m33_stl_vaddf32_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_vaddf32_test,"ax"
        .global m33_stl_vaddf32_test

#endif
m33_stl_vaddf32_test:

//------------------------------------------------------------------------------/
// START TEST vaddf32
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_vaddf32_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_vaddf32:

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

        vmrs            r0, fpscr

        vmsr            fpscr, r5

        vldmia          r1!, {d6}

        vadd.f32        s12, s13

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s12

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        vldmia          r1!, {d4}

        vadd.f32        s21, s8, s9

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s21

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL3

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        cmp             r4, r2
        bne             loop_vaddf32


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_vaddf32_close

        .align 4
m33_stl_vaddf32_error:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_vaddf32_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST vaddf32
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_vdivf32_test, "ax"
        .global m33_stl_vdivf32_test
        .type m33_stl_vdivf32_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_vdivf32_test,"ax"
        .global m33_stl_vdivf32_test

#endif
m33_stl_vdivf32_test:

//------------------------------------------------------------------------------/
// START TEST vdivf32
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_vdivf32_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_vdivf32:

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

        vmrs            r0, fpscr

        vmsr            fpscr, r5

        vldmia          r1!, {d6}

        vdiv.f32        s12, s12, s13

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s12

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        vldmia          r1!, {d4}

        vdiv.f32        s21, s8, s9

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s21

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL3

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        cmp             r4, r2
        bne             loop_vdivf32


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_vdivf32_close

        .align 4
m33_stl_vdivf32_error:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_vdivf32_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST vdivf32
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_vmulf32_test, "ax"
        .global m33_stl_vmulf32_test
        .type m33_stl_vmulf32_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_vmulf32_test,"ax"
        .global m33_stl_vmulf32_test

#endif
m33_stl_vmulf32_test:

//------------------------------------------------------------------------------/
// START TEST vmulf32
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_vmulf32_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_vmulf32:

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

        vmrs            r0, fpscr

        vmsr            fpscr, r5

        vldmia          r1!, {d6}

        vmul.f32        s12, s13

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s12

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        vldmia          r1!, {d4}

        vmul.f32        s21, s8, s9

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s21

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL3

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        cmp             r4, r2
        bne             loop_vmulf32


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_vmulf32_close

        .align 4
m33_stl_vmulf32_error:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_vmulf32_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST vmulf32
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_vsqrtf32_test, "ax"
        .global m33_stl_vsqrtf32_test
        .type m33_stl_vsqrtf32_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_vsqrtf32_test,"ax"
        .global m33_stl_vsqrtf32_test

#endif
m33_stl_vsqrtf32_test:

//------------------------------------------------------------------------------/
// START TEST vsqrtf32
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_vsqrtf32_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_vsqrtf32:

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

        vmrs            r0, fpscr

        vmsr            fpscr, r5

        vldmia          r1!, {s13}

        vsqrt.f32       s12, s13

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s12

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        vldmia          r1!, {s9}

        vsqrt.f32       s8, s9

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s8

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL1

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        cmp             r4, r2
        bne             loop_vsqrtf32


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_vsqrtf32_close

        .align 4
m33_stl_vsqrtf32_error:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_vsqrtf32_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST vsqrtf32
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_vsubf32_test, "ax"
        .global m33_stl_vsubf32_test
        .type m33_stl_vsubf32_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_vsubf32_test,"ax"
        .global m33_stl_vsubf32_test

#endif
m33_stl_vsubf32_test:

//------------------------------------------------------------------------------/
// START TEST vsubf32
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_vsubf32_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_vsubf32:

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i

//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

        vmrs            r0, fpscr

        vmsr            fpscr, r5

        vldmia          r1!, {d6}

        vsub.f32        s12, s13

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s12

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        vldmia          r1!, {d4}

        vsub.f32        s21, s8, s9

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s21

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL3

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        cmp             r4, r2
        bne             loop_vsubf32


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_vsubf32_close

        .align 4
m33_stl_vsubf32_error:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_vsubf32_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST vsubf32
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_vfnmsf32_test, "ax"
        .global m33_stl_vfnmsf32_test
        .type m33_stl_vfnmsf32_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_vfnmsf32_test,"ax"
        .global m33_stl_vfnmsf32_test

#endif
m33_stl_vfnmsf32_test:

//------------------------------------------------------------------------------/
// START TEST vfnmsf32
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_vfnmsf32_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_vfnmsf32:

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i


//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}


        vmrs            r0, fpscr

        vmsr            fpscr, r5

        vldmia          r1!, {d6}

        vldmia          r1!, {s11}

        vfnms.f32       s11, s12, s13

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        vldmia          r1!, {d4}

        vldmia          r1!, {s21}

        vfnms.f32       s21, s8, s9

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s21

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL5


//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]


//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        cmp             r4, r2
        bne             loop_vfnmsf32


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_vfnmsf32_close

        .align 4
m33_stl_vfnmsf32_error:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_vfnmsf32_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST vfnmsf32
//-----------------------------------------------------------------------------/

        .align 8

#ifdef GCC_COMPILER

        .syntax unified

        .section .s_m33_stl_vfnmaf32_test, "ax"
        .global m33_stl_vfnmaf32_test
        .type m33_stl_vfnmaf32_test, %function

#endif
#ifdef __GHS__

        .section .s_m33_stl_vfnmaf32_test,"ax"
        .global m33_stl_vfnmaf32_test

#endif
m33_stl_vfnmaf32_test:

//------------------------------------------------------------------------------/
// START TEST vfnmaf32
//------------------------------------------------------------------------------/

        push            {r3}
        push            {lr}

        adr             r3, m33_stl_vfnmaf32_error


        mov             r4, #M33_STL_DATAVECT_VAL2

loop_vfnmaf32:

//-----------------------------------------------------------------------------/
// Disabled interrupts
//-----------------------------------------------------------------------------/

        mrs             r0, primask
        push            {r0}
        cpsid           i


//------------------------------------------------------------------------------
// Save ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        ldr             r7, [r6]
        push            {r7}

        vmrs            r0, fpscr

        vmsr            fpscr, r5

        vldmia          r1!, {d6}

        vldmia          r1!, {s11}

        vfnma.f32       s11, s12, s13

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s11

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        vmsr            fpscr, r5

        vldmia          r1!, {d4}

        vldmia          r1!, {s21}

        vfnma.f32       s21, s8, s9

        vldmia          r1!, {d3}

        vmrs            r11, fpscr

        vmov            r12, s7

        vmsr            fpscr, r0

        bl              m33_stl_compare_gpr

        vmov            r11, s21

        vmov            r12, s6

        bl              m33_stl_compare_gpr

        add             r4, r4, #M33_STL_DATAVECT_VAL5

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0


        cmp             r4, r2
        bne             loop_vfnmaf32


        pop             {r0}
        mov             lr, r0
        pop             {r3}

        b               m33_stl_vfnmaf32_close

        .align 4
m33_stl_vfnmaf32_error:

//------------------------------------------------------------------------------
// Clean ICPR0
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ICPR0
        ldr             r7, =M33_STL_CLEAN_ICPR0
        str             r7, [r6]

//------------------------------------------------------------------------------
// Restore ISPR0 register
//------------------------------------------------------------------------------

        ldr             r6, =M33_STL_NVIC_ISPR0
        pop             {r7}
        str             r7, [r6]

//-----------------------------------------------------------------------------/
// Restore interrupts
//-----------------------------------------------------------------------------/

        pop             {r0}

        msr             primask, r0

        pop             {r0}
        pop             {r3}

        ldr             r2, =M33_STL_RST_XPSR

        orrs            r3, r3, r2

        mov             lr, r3

m33_stl_vfnmaf32_close:

        bx              lr

//-----------------------------------------------------------------------------/
// END TEST vfnmaf32
//-----------------------------------------------------------------------------/

        .align 8


        .end
