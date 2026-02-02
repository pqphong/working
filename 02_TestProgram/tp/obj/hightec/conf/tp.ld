

__STACK_SIZE = 0x00001000;
__HEAP_SIZE  = 0x00000C00;


MEMORY
{

  iROM_0	(rx)    	: ORIGIN = 0x00000000,  LENGTH = 2000K /* Code Flash 0 (1000k) */
  iROM_1	(rx)   		: ORIGIN = 0x00400000,  LENGTH = 2000K /* Code Flash 1 (2000k) */
  iRAM_0	(rwx)     	: ORIGIN = 0x204E0000,  LENGTH = 120K  /* CPU RAM 0 (120k) */
  mSTACK 	(rwx)    	: ORIGIN = 0x204FE000,  LENGTH = 4K    /* Main Stack (4k) */
  pSTACK	(rwx)     	: ORIGIN = 0x204FF000,  LENGTH = 4K    /* Process Stack (4k) */
  gRAM_0	(rwx)     	: ORIGIN = 0x28000000,  LENGTH = 384K  /* Global RAM 0 (384k) */
  iRAM_R	(rwx)     	: ORIGIN = 0x2C000000,  LENGTH = 32K   /* Retention RAM (32k) */
}

/*   It defines following symbols, which code can use without definition:
 *   __exidx_start
 *   __exidx_end
 *   __copy_table_start__
 *   __copy_table_end__
 *   __zero_table_start__
 *   __zero_table_end__
 *   __etext
 *   __data_start__
 *   __preinit_array_start
 *   __preinit_array_end
 *   __init_array_start
 *   __init_array_end
 *   __fini_array_start
 *   __fini_array_end
 *   __data_end__
 *   __bss_start__
 *   __bss_end__
 *   __end__
 *   end
 *   __HeapLimit
 *   __StackLimit
 *   __StackTop
 *   __stack
 *   __StackSeal      (only if ARMv8-M stack sealing is used)
 */

SECTIONS
{
  .text :
  {
    KEEP(*(.intvec))
	*(.text*)

    KEEP(*(.init))
    KEEP(*(.fini))
	
    /* .ctors */
    *crtbegin.o(.ctors)
    *crtbegin?.o(.ctors)
    *(EXCLUDE_FILE(*crtend?.o *crtend.o) .ctors)
    *(SORT(.ctors.*))
    *(.ctors)

    /* .dtors */
    *crtbegin.o(.dtors)
    *crtbegin?.o(.dtors)
    *(EXCLUDE_FILE(*crtend?.o *crtend.o) .dtors)
    *(SORT(.dtors.*))
    *(.dtors)
	
    *(.rodata*)   
  } > iROM_0


  .ARM.extab :
  {
    *(.ARM.extab* .gnu.linkonce.armextab.*)
  } > iROM_0

  __exidx_start = .;
  .ARM.exidx :
  {
    *(.ARM.exidx* .gnu.linkonce.armexidx.*)
  } > iROM_0
  __exidx_end = .;

  .copy.table :
  {
    . = ALIGN(4);
    __copy_table_start__ = .;

    LONG (__etext)
    LONG (__data_start__)
    LONG ((__data_end__ - __data_start__) / 4)

    /* Add each additional data section here */
/*
    LONG (__etext2)
    LONG (__data2_start__)
    LONG ((__data2_end__ - __data2_start__) / 4)
*/
    __copy_table_end__ = .;
  } > iROM_0

  .zero.table :
  {
    . = ALIGN(4);
    __zero_table_start__ = .;
    /* Add each additional bss section here */
/*
    LONG (__bss2_start__)
    LONG ((__bss2_end__ - __bss2_start__) / 4)
*/
    __zero_table_end__ = .;
  } > iROM_0

  __etext = ALIGN (4);
  .data : AT (__etext)
  {
	__data_start__ = .;
	*(vtable)
	*(.data)
	*(.data.*)

	. = ALIGN(4);
	/* preinit data */
	PROVIDE_HIDDEN (__preinit_array_start = .);
	KEEP(*(.preinit_array))
	PROVIDE_HIDDEN (__preinit_array_end = .);

	. = ALIGN(4);
	/* init data */
	PROVIDE_HIDDEN (__init_array_start = .);
	KEEP(*(SORT(.init_array.*)))
	KEEP(*(.init_array))
	PROVIDE_HIDDEN (__init_array_end = .);

	. = ALIGN(4);
	/* finit data */
	PROVIDE_HIDDEN (__fini_array_start = .);
	KEEP(*(SORT(.fini_array.*)))
	KEEP(*(.fini_array))
	PROVIDE_HIDDEN (__fini_array_end = .);

	KEEP(*(.jcr*))
	. = ALIGN(4);
	/* All data end */
	__data_end__ = .;

  } > iRAM_0


  .bss :
  {
	. = ALIGN(4);
	__bss_start__ = .;
	*(.bss)
	*(.bss.*)
	
	*(COMMON)
	. = ALIGN(4);
	__bss_end__ = .;
  } > iRAM_0 AT > iRAM_0

  .heap (COPY) :
  {
    . = ALIGN(8);
    __end__ = .;
    PROVIDE(end = .);
    . = . + __HEAP_SIZE;
    . = ALIGN(8);
    __HeapLimit = .;
  } > iRAM_0

  .stack (ORIGIN(iRAM_0) + LENGTH(iRAM_0) - __STACK_SIZE) (COPY) :
  {
    . = ALIGN(8);
    __StackLimit = .;
    . = . + __STACK_SIZE;
    . = ALIGN(8);
    __StackTop = .;
  } > iRAM_0
  PROVIDE(__stack = __StackTop);
}