////////////////////////////////////////////////////////////////////////////
//
//  File        :  cm33.lsl
//
////////////////////////////////////////////////////////////////////////////

architecture ARM
{
    endianness
    {
        little;
        big;
    }

    space linear
    {
        id = 1;
        mau = 8;
        map (size = 4G, dest = bus:local_bus);
    }

    bus local_bus
    {
        mau = 8;
        width = 32;
    }
}

memory xrom
{
    mau = 8;
    type = rom;
    size = 1024k;
    map ( size = 1024k, dest_offset = 0x00000000, dest = bus:ARM:local_bus );
}

memory xram
{
    mau = 8;
    type = ram;
    size = 126K;
    map ( size = 126K, dest_offset = 0x204E0000, dest = bus:ARM:local_bus );
}

section_setup ::linear
{
    copytable
    (
        align = 4,
        copy_unit = 1,
        dest = linear
    );

    start_address
    (
        symbol = "Reset_Handler"
    );

    stack "stack"
    (
        id = 0,
        align = 4,
        min_size = 4k,
        grows = high_to_low
    );

    heap "heap"
    (
        align = 4,
        min_size= 4k
    );
}

section_layout ::linear
{
    group ( ordered, run_addr=mem:xrom )
    {
        select ".intvec";
        select ".text";
        select ".rodata";
    }
    group ( ordered, run_addr = mem:xram)
    {
        select ".bss";
        select ".data";
    }
	"_lc_vtor_value" = addressof(sect:".intvec");
}
