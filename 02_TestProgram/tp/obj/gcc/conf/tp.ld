

__STACK_SIZE = 0x00001000;
__HEAP_SIZE  = 0x00000C00;


MEMORY
{

  iROM_0	(rx)    	: ORIGIN = 0x00000000,  LENGTH = 2000K /* Code Flash 0 (1000k) */
  iROM_1	(rx)   		: ORIGIN = 0x00400000,  LENGTH = 2000K /* Code Flash 1 (2000k) */
  iRAM_0	(rw)     	: ORIGIN = 0x204E0000,  LENGTH = 120K  /* CPU RAM 0 (120k) */
  mSTACK 	(rw)    	: ORIGIN = 0x204FE000,  LENGTH = 4K    /* Main Stack (4k) */
  pSTACK	(rw)     	: ORIGIN = 0x204FF000,  LENGTH = 4K    /* Process Stack (4k) */
  gRAM_0	(rw)     	: ORIGIN = 0x28000000,  LENGTH = 384K  /* Global RAM 0 (384k) */
  iRAM_R	(rw)     	: ORIGIN = 0x2C000000,  LENGTH = 32K   /* Retention RAM (32k) */
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
    . = ALIGN(1024);
    KEEP(*(.intvec))    /* vector table  */
    . = ALIGN(1024);        
    KEEP(*(.text*))         /* program code area */
    . = ALIGN(4);           
    KEEP(*(.s_m33*)) 
    . = ALIGN(4);    
    KEEP(*(.rodata*))       /* constant datas in normal area */
    .ROM.data = ALIGN (4);  /* constant data to initialize variables (copied to RAM at startup)*/
  } > iROM_0


  .data : AT (.ROM.data)      /* initialized data */
  {
    . = ALIGN(4);
    __data_start__ = .;
    *(.data*)
    . = ALIGN(4);
     *(.d_m33_stl_data_struct)
    __data_end__ = .;
  } > iRAM_0

  .bss :                     /* zero initialized data */
  {
    . = ALIGN(4);
    __bss_start__ = .;
    *(.bss*)
    . = ALIGN(4);
    __bss_end__ = .;
  } > iRAM_0

  .heap (COPY) :
  {
    . = ALIGN(8);
    __end__ = .;
    PROVIDE(end = .);
    . = . + __HEAP_SIZE;
    . = ALIGN(8);
    __HeapLimit = .;
  } > iRAM_0

  .stack (COPY) :
  {
    . = ORIGIN(iRAM_0) + LENGTH(iRAM_0) - __STACK_SIZE;
    . = ALIGN(8);
    __StackLimit = .;
    . = . + __STACK_SIZE;
    . = ALIGN(8);
    __StackTop = .;
  } > iRAM_0
  PROVIDE(__stack = __StackTop);
}