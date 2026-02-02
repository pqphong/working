/*===========================================================================*/
/* Warranty Disclaimer                                                       */
/*                                                                           */
/* Because the Product(s) is licensed free of charge, there is no warranty   */
/* of any kind whatsoever and expressly disclaimed and excluded by Renesas,  */
/* either expressed or implied, including but not limited to those for       */
/* non-infringement of intellectual property, merchantability and/or         */
/* fitness for the particular purpose. Renesas shall not have any obligation */
/* to maintain, service or provide bug fixes for the supplied Product(s)     */
/* and/or the Application.                                                   */
/*                                                                           */
/* Each User is solely responsible for determining the appropriateness of    */
/* using the Product(s) and assumes all risks associated with its exercise   */
/* of rights under this Agreement, including, but not limited to the risks   */
/* and costs of program errors, compliance with applicable laws, damage to   */
/* or loss of data, programs or equipment, and unavailability or             */
/* interruption of operations.                                               */
/*                                                                           */
/* Limitation of Liability                                                   */
/*                                                                           */
/* In no event shall Renesas be liable to the User for any incidental,       */
/* consequential, indirect, or punitive damage (including but not limited    */
/* to lost profits) regardless of whether such liability is based on breach  */
/* of contract, tort, strict liability, breach of warranties, failure of     */
/* essential purpose or otherwise and even if advised of the possibility of  */
/* such damages. Renesas shall not be liable for any services or products    */
/* provided by third party vendors, developers or consultants identified or  */
/* referred to the User by Renesas in connection with the Product(s) and/or  */
/* the Application.                                                          */
/*                                                                           */
/*===========================================================================*/

CONSTANTS
{

}

MEMORY
{
  CFLASH_USER_AREA0             : ORIGIN = 0x00000000,                  LENGTH = 0x100000
  CFLASH_USER_AREA0_END         : ORIGIN = .         ,                  LENGTH = 0

  CPU_RAM_SELF                  : ORIGIN = 0x200E8000,                  LENGTH = 0x17FFF
  CPU_RAM_SELF_END              : ORIGIN = .         ,                  LENGTH = 0

  CPU_RAM_CPU0                  : ORIGIN = 0x204E8000,                  LENGTH = 0x17FFF
  CPU_RAM_CPU0_END              : ORIGIN = .         ,                  LENGTH = 0

  GRAM                          : ORIGIN = 0x28000000,                  LENGTH = 0xBFFF
  GRAM_END                      : ORIGIN = .         ,                  LENGTH = 0

  RETENTION_RAM                 : ORIGIN = 0x2C000000,                  LENGTH = 0x3FFF
  RETENTION_RAM_END             : ORIGIN = .         ,                  LENGTH = 0

  CSA2                          : ORIGIN = 0x40121300,                  LENGTH = 0x160	/* Vector Table Base Address, OPBT, and Reserved (need to be programmed) */

}

DEFAULTS {
  stack_reserve = 1K
}

SECTIONS
{

  /* -----------------------------------------------------------------------------------------*/
  /* Start of internal ROM area (CFLASH0)                                                     */
  /* -----------------------------------------------------------------------------------------*/
  .start.CFLASH_USER_AREA0                              :>CFLASH_USER_AREA0
  .isr_vector align(1024)                               :>.            /* vector table  */
  .text       align(1024)                               :>.            /* program code area */

  .fixaddr    align(4)                                  :>.            /* ghs internal (compiler) */
  .fixtype    align(4)                                  :>.            /* ghs internal (compiler) */
  .secinfo    align(4)                                  :>.            /* ghs internal (runtime library) */
  .s_m33     align(4)                                   :{ "*(.s_m33*)" }>.            /* s_m33 sections */
  .rodata     align(4)                                  :>.            /* constant datas in normal area */
  .ROM.data   ROM(.data)  align(4)                      :>.            /* constant data to initialize variables (copied to RAM at startup)*/
  .ROM.sdata  ROM(.sdata) align(4)                      :>.            /* constant data to initialize variables (copied to RAM at startup)*/

  .end.CFLASH_USER_AREA0                                :>CFLASH_USER_AREA0_END


  /* -----------------------------------------------------------------------------------------*/
  /* Start of internal RAM area (CPU RAM self)                                                */
  /* -----------------------------------------------------------------------------------------*/

  /* -----------------------------------------------------------------------------------------*/
  /* Start of internal RAM area (CPU RAM CPU0)                                                       */
  /* -----------------------------------------------------------------------------------------*/
  .start.CPU_RAM_CPU0                                   :>CPU_RAM_CPU0
  .d_m33_stl_data_struct	align(4)			:>.
  .data        align(4)                                 :>.            /* initialized data */
  .bss         align(4)                                 :>.            /* zero initialized data */
  .sda_start   align(4)                                 :>.            /* initialize globalpointer GP for SDA addressing */
  .sda_base    align(4)                                 :>.
  .sdata       align(4)                                 :>.            /* initialized data in SDA area*/
  .sbss        align(4)                                 :>.            /* zero initialized data in SDA area*/
  .sda_end     align(4)                                 :>.            /* end of SDA addressing */
  .syscall     align(4)                                 :>.

  .stack       align(4) pad(stack_reserve)              :>.            /* stack area (for PE0)*/
  .end.CPU_RAM_CPU0                                     :>CPU_RAM_CPU0_END

  /* -----------------------------------------------------------------------------------------*/
  /*  Global RAM                                                                              */
  /* -----------------------------------------------------------------------------------------*/


  /* -----------------------------------------------------------------------------------------*/
  /*  Retention RAM                                                                           */
  /* -----------------------------------------------------------------------------------------*/

  /* -----------------------------------------------------------------------------------------*/
  /* Start of internal ROM area (DFLASH)                                                      */
  /* -----------------------------------------------------------------------------------------*/
  CSA_OFFSET_0x300 align(4)                             :>CSA2          /* Vector Table Base Address, OPBT, and Reserved (need to be programmed) */


  /* -----------------------------------------------------------------------------------------*/
  /*  Symbols for compiler references                                                         */
  /* -----------------------------------------------------------------------------------------*/

  __DATA_ROM_ADDR    =  ADDR(.ROM.data);
  __DATA_RAM_ADDR    =  ADDR(.data);
  __DATA_RAM_SIZE    =  SIZEOF(.data);

  __SDATA_ROM_ADDR   =  ADDR(.ROM.sdata);
  __SDATA_RAM_ADDR   =  ADDR(.sdata);
  __SDATA_RAM_SIZE   =  SIZEOF(.sdata);




}

/*===========================================================================*/
/*      End of File                                                          */
/*===========================================================================*/
