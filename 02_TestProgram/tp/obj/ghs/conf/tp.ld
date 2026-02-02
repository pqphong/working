
MEMORY
{
  iROM_0     : ORIGIN = 0x00000000,  LENGTH = 0xfffff /* Code Flash 0 (1000k) */
  iROM_0_END : ORIGIN = .         ,  LENGTH = 0
  iRAM_0     : ORIGIN = 0x204E0000,  LENGTH = 126K  /* CPU RAM 0 (126k) */
  iRAM_0_END : ORIGIN = .         ,  LENGTH = 0
  STACK_END  : ORIGIN = .         ,  LENGTH = 2K    /* Stack (2k) */
  STACK_PTR  : ORIGIN = .         ,  LENGTH = 0
  GRAM       : ORIGIN = 0x28000000,  LENGTH = 2K
  GRAM_END   : ORIGIN = .         ,  LENGTH = 0
}

SECTIONS
{           
	
/* -----------------------------------------------------------------------------------------*/
/* Start of internal ROM area (CFLASH0)                                                     */
/* -----------------------------------------------------------------------------------------*/
  .start.iROM_0                              :>iROM_0
  .init       align(1024)                               :>.            /* vector table  */
  .text       align(1024)                               :>.            /* program code area */

  .fixaddr    align(4)                                  :>.            /* ghs internal (compiler) */
  .fixtype    align(4)                                  :>.            /* ghs internal (compiler) */
  .secinfo    align(4)                                  :>.            /* ghs internal (runtime library) */
  .s_m33     align(4)                                   :{ "*(.s_m33*)" }>.            /* s_m33 sections */
  .rodata     align(4)                                  :>.            /* constant datas in normal area */
  .ROM.data   ROM(.data)  align(4)                      :>.            /* constant data to initialize variables (copied to RAM at startup)*/
  .ROM.sdata  ROM(.sdata) align(4)                      :>.            /* constant data to initialize variables (copied to RAM at startup)*/

  .end.iROM_0                                :>iROM_0_END


/* -----------------------------------------------------------------------------------------*/
/* Start of internal RAM area (CPU RAM CPU0)                                                       */
/* -----------------------------------------------------------------------------------------*/
  .start.iRAM_0                                         :>iRAM_0
  .d_m33_stl_data_struct	align(4)			        :>.
  .data        align(4)                                 :>.            /* initialized data */
  .bss         align(4)                                 :>.            /* zero initialized data */
  .sda_start   align(4)                                 :>.            /* initialize globalpointer GP for SDA addressing */
  .sda_base    align(4)                                 :>.
  .sdata       align(4)                                 :>.            /* initialized data in SDA area*/
  .sbss        align(4)                                 :>.            /* zero initialized data in SDA area*/
  .sda_end     align(4)                                 :>.            /* end of SDA addressing */
  .syscall     align(4)                                 :>.
  .stack       align(32)    PAD(1K)                     : > STACK_END

# Reserved MPU test
#    .Reserved       align(32) PAD(1K) : > GRAM

// These special symbols mark the bounds of RAM and ROM memory.
// They are used by the MULTI debugger.

    __ghs_romstart  = MEMADDR(iROM_0);
    __ghs_romend    = MEMENDADDR(iROM_0_END);
    __ghs_ramstart  = MEMADDR(iRAM_0);
    __ghs_ramend    = MEMENDADDR(iRAM_0_END);
	__stack_ptr     = MEMADDR(STACK_PTR);
}

