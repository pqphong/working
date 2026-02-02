#define SCB_VTOR            (*((volatile int *)(0xE000ED08UL)))   /*< SCB configuration struct */
typedef void (*VectorTableType)(void);
/*----------------------------------------------------------------------------
  External References
 *----------------------------------------------------------------------------*/
extern int main(void);
extern int _lc_ub_stack;
extern	void	__init( void *table );
extern  unsigned char *	_lc_ub_table[];

/*----------------------------------------------------------------------------
  Internal References
 *----------------------------------------------------------------------------*/
void Reset_Handler  (void);
void SystemInit 	(void);
/*----------------------------------------------------------------------------
  Exception / Interrupt Handler
 *----------------------------------------------------------------------------*/
/* Exceptions */
void Dummy_Handler(void);
void NMI_Dummy_Handler(void);
void HardFault_Dummy_Handler(void);
void MemManage_Dummy_Handler(void);
void BusFault_Dummy_Handler(void);
void UsageFault_Dummy_Handler(void);
void SecureFault_Dummy_Handler(void);
void SVC_Dummy_Handler(void);
void DebugMon_Dummy_Handler(void);
void PendSV_Dummy_Handler(void);
void SysTick_Dummy_Handler(void);
void Interrupt_Dummy_Handler (void);

/*----------------------------------------------------------------------------
  Exception / Interrupt Vector table
*----------------------------------------------------------------------------*/
extern const VectorTableType IntVectors[496];

const VectorTableType IntVectors[496] __attribute__((section(".intvec"))) = {
  (VectorTableType)(&_lc_ub_stack),       /*     Initial Stack Pointer */
  Reset_Handler,                            /*     Reset Handler */ 
  NMI_Dummy_Handler,                                         /* -14 NMI Handler */
  HardFault_Dummy_Handler,                                    /* -13 Hard Fault Handler */
  MemManage_Dummy_Handler,                                    /* -12 MPU Fault Handler */
  BusFault_Dummy_Handler,                                     /* -11 Bus Fault Handler */
  UsageFault_Dummy_Handler,                                   /* -10 Usage Fault Handler */
  SecureFault_Dummy_Handler,                                  /*  -9 Secure Fault Handler */
  0,                                        /*     Reserved */
  0,                                        /*     Reserved */
  0,                                        /*     Reserved */
  SVC_Dummy_Handler,                                     /*  -5 SVCall Handler */
  DebugMon_Dummy_Handler,                                      /*  -4 Debug Monitor Handler */
  0,                                        /*     Reserved */
  PendSV_Dummy_Handler,                                      /*  -2 PendSV Handler */
  SysTick_Dummy_Handler,                                     /*  -1 SysTick Handler */

  /* Interrupts IRQn*/
#ifdef Interrupt0_Handler
  Interrupt0_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt1_Handler
  Interrupt1_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt2_Handler
  Interrupt2_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt3_Handler
  Interrupt3_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt4_Handler
  Interrupt4_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt5_Handler
  Interrupt5_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt6_Handler
  Interrupt6_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt7_Handler
  Interrupt7_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt8_Handler
  Interrupt8_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt9_Handler
  Interrupt9_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt10_Handler
  Interrupt10_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt11_Handler
  Interrupt11_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt12_Handler
  Interrupt12_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt13_Handler
  Interrupt13_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt14_Handler
  Interrupt14_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt15_Handler
  Interrupt15_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt16_Handler
  Interrupt16_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt17_Handler
  Interrupt17_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt18_Handler
  Interrupt18_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt19_Handler
  Interrupt19_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt20_Handler
  Interrupt20_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt21_Handler
  Interrupt21_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt22_Handler
  Interrupt22_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt23_Handler
  Interrupt23_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt24_Handler
  Interrupt24_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt25_Handler
  Interrupt25_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt26_Handler
  Interrupt26_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt27_Handler
  Interrupt27_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt28_Handler
  Interrupt28_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt29_Handler
  Interrupt29_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt30_Handler
  Interrupt30_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt31_Handler
  Interrupt31_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt32_Handler
  Interrupt32_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt33_Handler
  Interrupt33_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt34_Handler
  Interrupt34_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt35_Handler
  Interrupt35_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt36_Handler
  Interrupt36_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt37_Handler
  Interrupt37_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt38_Handler
  Interrupt38_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt39_Handler
  Interrupt39_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt40_Handler
  Interrupt40_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt41_Handler
  Interrupt41_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt42_Handler
  Interrupt42_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt43_Handler
  Interrupt43_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt44_Handler
  Interrupt44_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt45_Handler
  Interrupt45_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt46_Handler
  Interrupt46_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt47_Handler
  Interrupt47_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt48_Handler
  Interrupt48_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt49_Handler
  Interrupt49_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt50_Handler
  Interrupt50_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt51_Handler
  Interrupt51_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt52_Handler
  Interrupt52_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt53_Handler
  Interrupt53_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt54_Handler
  Interrupt54_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt55_Handler
  Interrupt55_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt56_Handler
  Interrupt56_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt57_Handler
  Interrupt57_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt58_Handler
  Interrupt58_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt59_Handler
  Interrupt59_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt60_Handler
  Interrupt60_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt61_Handler
  Interrupt61_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt62_Handler
  Interrupt62_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt63_Handler
  Interrupt63_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt64_Handler
  Interrupt64_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt65_Handler
  Interrupt65_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt66_Handler
  Interrupt66_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt67_Handler
  Interrupt67_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt68_Handler
  Interrupt68_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt69_Handler
  Interrupt69_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt70_Handler
  Interrupt70_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt71_Handler
  Interrupt71_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt72_Handler
  Interrupt72_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt73_Handler
  Interrupt73_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt74_Handler
  Interrupt74_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt75_Handler
  Interrupt75_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt76_Handler
  Interrupt76_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt77_Handler
  Interrupt77_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt78_Handler
  Interrupt78_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt79_Handler
  Interrupt79_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt80_Handler
  Interrupt80_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt81_Handler
  Interrupt81_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt82_Handler
  Interrupt82_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt83_Handler
  Interrupt83_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt84_Handler
  Interrupt84_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt85_Handler
  Interrupt85_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt86_Handler
  Interrupt86_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt87_Handler
  Interrupt87_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt88_Handler
  Interrupt88_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt89_Handler
  Interrupt89_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt90_Handler
  Interrupt90_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt91_Handler
  Interrupt91_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt92_Handler
  Interrupt92_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt93_Handler
  Interrupt93_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt94_Handler
  Interrupt94_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt95_Handler
  Interrupt95_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt96_Handler
  Interrupt96_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt97_Handler
  Interrupt97_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt98_Handler
  Interrupt98_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt99_Handler
  Interrupt99_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt100_Handler
  Interrupt100_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt101_Handler
  Interrupt101_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt102_Handler
  Interrupt102_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt103_Handler
  Interrupt103_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt104_Handler
  Interrupt104_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt105_Handler
  Interrupt105_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt106_Handler
  Interrupt106_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt107_Handler
  Interrupt107_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt108_Handler
  Interrupt108_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt109_Handler
  Interrupt109_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt110_Handler
  Interrupt110_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt111_Handler
  Interrupt111_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt112_Handler
  Interrupt112_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt113_Handler
  Interrupt113_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt114_Handler
  Interrupt114_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt115_Handler
  Interrupt115_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt116_Handler
  Interrupt116_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt117_Handler
  Interrupt117_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt118_Handler
  Interrupt118_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt119_Handler
  Interrupt119_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt120_Handler
  Interrupt120_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt121_Handler
  Interrupt121_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt122_Handler
  Interrupt122_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt123_Handler
  Interrupt123_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt124_Handler
  Interrupt124_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt125_Handler
  Interrupt125_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt126_Handler
  Interrupt126_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt127_Handler
  Interrupt127_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt128_Handler
  Interrupt128_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt129_Handler
  Interrupt129_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt130_Handler
  Interrupt130_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt131_Handler
  Interrupt131_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt132_Handler
  Interrupt132_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt133_Handler
  Interrupt133_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt134_Handler
  Interrupt134_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt135_Handler
  Interrupt135_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt136_Handler
  Interrupt136_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt137_Handler
  Interrupt137_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt138_Handler
  Interrupt138_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt139_Handler
  Interrupt139_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt140_Handler
  Interrupt140_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt141_Handler
  Interrupt141_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt142_Handler
  Interrupt142_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt143_Handler
  Interrupt143_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt144_Handler
  Interrupt144_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt145_Handler
  Interrupt145_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt146_Handler
  Interrupt146_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt147_Handler
  Interrupt147_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt148_Handler
  Interrupt148_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt149_Handler
  Interrupt149_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt150_Handler
  Interrupt150_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt151_Handler
  Interrupt151_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt152_Handler
  Interrupt152_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt153_Handler
  Interrupt153_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt154_Handler
  Interrupt154_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt155_Handler
  Interrupt155_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt156_Handler
  Interrupt156_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt157_Handler
  Interrupt157_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt158_Handler
  Interrupt158_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt159_Handler
  Interrupt159_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt160_Handler
  Interrupt160_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt161_Handler
  Interrupt161_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt162_Handler
  Interrupt162_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt163_Handler
  Interrupt163_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt164_Handler
  Interrupt164_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt165_Handler
  Interrupt165_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt166_Handler
  Interrupt166_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt167_Handler
  Interrupt167_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt168_Handler
  Interrupt168_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt169_Handler
  Interrupt169_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt170_Handler
  Interrupt170_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt171_Handler
  Interrupt171_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt172_Handler
  Interrupt172_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt173_Handler
  Interrupt173_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt174_Handler
  Interrupt174_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt175_Handler
  Interrupt175_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt176_Handler
  Interrupt176_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt177_Handler
  Interrupt177_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt178_Handler
  Interrupt178_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt179_Handler
  Interrupt179_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt180_Handler
  Interrupt180_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt181_Handler
  Interrupt181_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt182_Handler
  Interrupt182_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt183_Handler
  Interrupt183_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt184_Handler
  Interrupt184_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt185_Handler
  Interrupt185_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt186_Handler
  Interrupt186_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt187_Handler
  Interrupt187_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt188_Handler
  Interrupt188_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt189_Handler
  Interrupt189_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt190_Handler
  Interrupt190_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt191_Handler
  Interrupt191_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt192_Handler
  Interrupt192_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt193_Handler
  Interrupt193_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt194_Handler
  Interrupt194_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt195_Handler
  Interrupt195_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt196_Handler
  Interrupt196_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt197_Handler
  Interrupt197_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt198_Handler
  Interrupt198_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt199_Handler
  Interrupt199_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt200_Handler
  Interrupt200_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt201_Handler
  Interrupt201_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt202_Handler
  Interrupt202_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt203_Handler
  Interrupt203_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt204_Handler
  Interrupt204_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt205_Handler
  Interrupt205_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt206_Handler
  Interrupt206_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt207_Handler
  Interrupt207_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt208_Handler
  Interrupt208_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt209_Handler
  Interrupt209_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt210_Handler
  Interrupt210_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt211_Handler
  Interrupt211_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt212_Handler
  Interrupt212_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt213_Handler
  Interrupt213_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt214_Handler
  Interrupt214_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt215_Handler
  Interrupt215_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt216_Handler
  Interrupt216_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt217_Handler
  Interrupt217_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt218_Handler
  Interrupt218_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt219_Handler
  Interrupt219_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt220_Handler
  Interrupt220_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt221_Handler
  Interrupt221_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt222_Handler
  Interrupt222_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt223_Handler
  Interrupt223_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt224_Handler
  Interrupt224_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt225_Handler
  Interrupt225_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt226_Handler
  Interrupt226_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt227_Handler
  Interrupt227_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt228_Handler
  Interrupt228_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt229_Handler
  Interrupt229_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt230_Handler
  Interrupt230_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt231_Handler
  Interrupt231_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt232_Handler
  Interrupt232_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt233_Handler
  Interrupt233_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt234_Handler
  Interrupt234_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt235_Handler
  Interrupt235_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt236_Handler
  Interrupt236_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt237_Handler
  Interrupt237_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt238_Handler
  Interrupt238_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt239_Handler
  Interrupt239_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt240_Handler
  Interrupt240_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt241_Handler
  Interrupt241_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt242_Handler
  Interrupt242_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt243_Handler
  Interrupt243_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt244_Handler
  Interrupt244_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt245_Handler
  Interrupt245_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt246_Handler
  Interrupt246_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt247_Handler
  Interrupt247_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt248_Handler
  Interrupt248_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt249_Handler
  Interrupt249_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt250_Handler
  Interrupt250_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt251_Handler
  Interrupt251_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt252_Handler
  Interrupt252_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt253_Handler
  Interrupt253_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt254_Handler
  Interrupt254_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt255_Handler
  Interrupt255_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt256_Handler
  Interrupt256_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt257_Handler
  Interrupt257_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt258_Handler
  Interrupt258_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt259_Handler
  Interrupt259_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt260_Handler
  Interrupt260_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt261_Handler
  Interrupt261_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt262_Handler
  Interrupt262_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt263_Handler
  Interrupt263_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt264_Handler
  Interrupt264_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt265_Handler
  Interrupt265_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt266_Handler
  Interrupt266_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt267_Handler
  Interrupt267_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt268_Handler
  Interrupt268_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt269_Handler
  Interrupt269_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt270_Handler
  Interrupt270_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt271_Handler
  Interrupt271_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt272_Handler
  Interrupt272_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt273_Handler
  Interrupt273_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt274_Handler
  Interrupt274_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt275_Handler
  Interrupt275_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt276_Handler
  Interrupt276_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt277_Handler
  Interrupt277_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt278_Handler
  Interrupt278_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt279_Handler
  Interrupt279_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt280_Handler
  Interrupt280_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt281_Handler
  Interrupt281_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt282_Handler
  Interrupt282_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt283_Handler
  Interrupt283_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt284_Handler
  Interrupt284_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt285_Handler
  Interrupt285_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt286_Handler
  Interrupt286_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt287_Handler
  Interrupt287_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt288_Handler
  Interrupt288_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt289_Handler
  Interrupt289_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt290_Handler
  Interrupt290_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt291_Handler
  Interrupt291_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt292_Handler
  Interrupt292_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt293_Handler
  Interrupt293_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt294_Handler
  Interrupt294_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt295_Handler
  Interrupt295_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt296_Handler
  Interrupt296_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt297_Handler
  Interrupt297_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt298_Handler
  Interrupt298_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt299_Handler
  Interrupt299_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt300_Handler
  Interrupt300_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt301_Handler
  Interrupt301_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt302_Handler
  Interrupt302_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt303_Handler
  Interrupt303_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt304_Handler
  Interrupt304_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt305_Handler
  Interrupt305_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt306_Handler
  Interrupt306_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt307_Handler
  Interrupt307_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt308_Handler
  Interrupt308_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt309_Handler
  Interrupt309_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt310_Handler
  Interrupt310_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt311_Handler
  Interrupt311_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt312_Handler
  Interrupt312_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt313_Handler
  Interrupt313_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt314_Handler
  Interrupt314_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt315_Handler
  Interrupt315_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt316_Handler
  Interrupt316_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt317_Handler
  Interrupt317_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt318_Handler
  Interrupt318_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt319_Handler
  Interrupt319_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt320_Handler
  Interrupt320_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt321_Handler
  Interrupt321_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt322_Handler
  Interrupt322_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt323_Handler
  Interrupt323_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt324_Handler
  Interrupt324_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt325_Handler
  Interrupt325_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt326_Handler
  Interrupt326_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt327_Handler
  Interrupt327_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt328_Handler
  Interrupt328_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt329_Handler
  Interrupt329_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt330_Handler
  Interrupt330_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt331_Handler
  Interrupt331_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt332_Handler
  Interrupt332_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt333_Handler
  Interrupt333_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt334_Handler
  Interrupt334_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt335_Handler
  Interrupt335_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt336_Handler
  Interrupt336_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt337_Handler
  Interrupt337_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt338_Handler
  Interrupt338_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt339_Handler
  Interrupt339_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt340_Handler
  Interrupt340_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt341_Handler
  Interrupt341_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt342_Handler
  Interrupt342_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt343_Handler
  Interrupt343_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt344_Handler
  Interrupt344_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt345_Handler
  Interrupt345_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt346_Handler
  Interrupt346_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt347_Handler
  Interrupt347_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt348_Handler
  Interrupt348_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt349_Handler
  Interrupt349_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt350_Handler
  Interrupt350_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt351_Handler
  Interrupt351_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt352_Handler
  Interrupt352_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt353_Handler
  Interrupt353_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt354_Handler
  Interrupt354_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt355_Handler
  Interrupt355_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt356_Handler
  Interrupt356_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt357_Handler
  Interrupt357_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt358_Handler
  Interrupt358_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt359_Handler
  Interrupt359_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt360_Handler
  Interrupt360_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt361_Handler
  Interrupt361_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt362_Handler
  Interrupt362_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt363_Handler
  Interrupt363_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt364_Handler
  Interrupt364_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt365_Handler
  Interrupt365_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt366_Handler
  Interrupt366_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt367_Handler
  Interrupt367_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt368_Handler
  Interrupt368_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt369_Handler
  Interrupt369_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt370_Handler
  Interrupt370_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt371_Handler
  Interrupt371_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt372_Handler
  Interrupt372_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt373_Handler
  Interrupt373_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt374_Handler
  Interrupt374_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt375_Handler
  Interrupt375_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt376_Handler
  Interrupt376_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt377_Handler
  Interrupt377_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt378_Handler
  Interrupt378_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt379_Handler
  Interrupt379_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt380_Handler
  Interrupt380_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt381_Handler
  Interrupt381_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt382_Handler
  Interrupt382_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt383_Handler
  Interrupt383_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt384_Handler
  Interrupt384_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt385_Handler
  Interrupt385_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt386_Handler
  Interrupt386_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt387_Handler
  Interrupt387_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt388_Handler
  Interrupt388_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt389_Handler
  Interrupt389_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt390_Handler
  Interrupt390_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt391_Handler
  Interrupt391_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt392_Handler
  Interrupt392_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt393_Handler
  Interrupt393_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt394_Handler
  Interrupt394_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt395_Handler
  Interrupt395_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt396_Handler
  Interrupt396_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt397_Handler
  Interrupt397_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt398_Handler
  Interrupt398_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt399_Handler
  Interrupt399_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt400_Handler
  Interrupt400_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt401_Handler
  Interrupt401_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt402_Handler
  Interrupt402_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt403_Handler
  Interrupt403_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt404_Handler
  Interrupt404_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt405_Handler
  Interrupt405_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt406_Handler
  Interrupt406_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt407_Handler
  Interrupt407_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt408_Handler
  Interrupt408_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt409_Handler
  Interrupt409_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt410_Handler
  Interrupt410_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt411_Handler
  Interrupt411_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt412_Handler
  Interrupt412_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt413_Handler
  Interrupt413_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt414_Handler
  Interrupt414_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt415_Handler
  Interrupt415_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt416_Handler
  Interrupt416_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt417_Handler
  Interrupt417_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt418_Handler
  Interrupt418_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt419_Handler
  Interrupt419_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt420_Handler
  Interrupt420_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt421_Handler
  Interrupt421_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt422_Handler
  Interrupt422_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt423_Handler
  Interrupt423_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt424_Handler
  Interrupt424_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt425_Handler
  Interrupt425_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt426_Handler
  Interrupt426_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt427_Handler
  Interrupt427_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt428_Handler
  Interrupt428_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt429_Handler
  Interrupt429_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt430_Handler
  Interrupt430_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt431_Handler
  Interrupt431_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt432_Handler
  Interrupt432_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt433_Handler
  Interrupt433_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt434_Handler
  Interrupt434_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt435_Handler
  Interrupt435_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt436_Handler
  Interrupt436_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt437_Handler
  Interrupt437_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt438_Handler
  Interrupt438_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt439_Handler
  Interrupt439_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt440_Handler
  Interrupt440_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt441_Handler
  Interrupt441_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt442_Handler
  Interrupt442_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt443_Handler
  Interrupt443_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt444_Handler
  Interrupt444_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt445_Handler
  Interrupt445_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt446_Handler
  Interrupt446_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt447_Handler
  Interrupt447_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt448_Handler
  Interrupt448_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt449_Handler
  Interrupt449_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt450_Handler
  Interrupt450_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt451_Handler
  Interrupt451_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt452_Handler
  Interrupt452_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt453_Handler
  Interrupt453_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt454_Handler
  Interrupt454_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt455_Handler
  Interrupt455_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt456_Handler
  Interrupt456_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt457_Handler
  Interrupt457_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt458_Handler
  Interrupt458_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt459_Handler
  Interrupt459_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt460_Handler
  Interrupt460_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt461_Handler
  Interrupt461_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt462_Handler
  Interrupt462_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt463_Handler
  Interrupt463_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt464_Handler
  Interrupt464_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt465_Handler
  Interrupt465_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt466_Handler
  Interrupt466_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt467_Handler
  Interrupt467_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt468_Handler
  Interrupt468_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt469_Handler
  Interrupt469_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt470_Handler
  Interrupt470_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt471_Handler
  Interrupt471_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt472_Handler
  Interrupt472_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt473_Handler
  Interrupt473_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt474_Handler
  Interrupt474_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt475_Handler
  Interrupt475_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt476_Handler
  Interrupt476_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt477_Handler
  Interrupt477_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt478_Handler
  Interrupt478_Handler,
#else
  Dummy_Handler,
#endif 
#ifdef Interrupt479_Handler
  Interrupt479_Handler
#else
  Dummy_Handler
#endif
};
/*----------------------------------------------------------------------------
  Reset Handler called on controller reset
 *----------------------------------------------------------------------------*/
void Reset_Handler(void)
{
  SystemInit(); 
  __init(_lc_ub_table);  
  main();                        
}
/*----------------------------------------------------------------------------
  System initialization function
 *----------------------------------------------------------------------------*/
void SystemInit (void)
{
    SCB_VTOR = 0x0000;

}
/*----------------------------------------------------------------------------
  Default Handler for Exceptions / Interrupts
 *----------------------------------------------------------------------------*/
void Dummy_Handler(void)
{
  while(1);
}
/*----------------------------------------------------------------------------
  Default Handler for Exceptions / Interrupts
 *----------------------------------------------------------------------------*/
void Interrupt_Dummy_Handler(void)
{
  while(1);
}

void NMI_Dummy_Handler(void)
{
  while(1);
}

void HardFault_Dummy_Handler(void)
{
  while(1);
}

void MemManage_Dummy_Handler(void)
{
  while(1);
}

void BusFault_Dummy_Handler(void)
{
  while(1);
}

void UsageFault_Dummy_Handler(void)
{
  while(1);
}

void SecureFault_Dummy_Handler(void)
{
  while(1);
}

void SVC_Dummy_Handler(void)
{
  while(1);
}

void DebugMon_Dummy_Handler(void)
{
  while(1);
}

void PendSV_Dummy_Handler(void)
{
  while(1);
}

void SysTick_Dummy_Handler(void)
{
  while(1);
}