#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"

/*Indicatotor = Indicator_+N+
    _0a_
5f |    | 1b
   |_6g_|
4e |    | 2c
   |_3d_|   .7 dp
*/

#define Indicatotor_0 LL_GPIO_PIN_3
#define Indicatotor_1 LL_GPIO_PIN_4
#define Indicatotor_2 LL_GPIO_PIN_5
#define Indicatotor_3 LL_GPIO_PIN_6
#define Indicatotor_4 LL_GPIO_PIN_7
#define Indicatotor_5 LL_GPIO_PIN_14
#define Indicatotor_6 LL_GPIO_PIN_15
//#define Indicatotor_7 LL_GPIO_PIN_7

//static int millisecond = 2;
int Number = 1024;
static uint32_t bouncer_cloak = 0;
static uint32_t button_flag = 0;

__attribute__((naked)) static void delay(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay+0x4");
    asm ("pop {r7, pc}");
#if defined(FLASH_0LAT_DELAY0LAT) || defined(FLASH_1LAT_DELAY0LAT)

    asm (".word 0x92");//asm (".word 0x927c00"); //9600000
#else
    asm (".word 8000"); // Задача самой задержки 8000 = 32786 = 2^15
#endif
}

__attribute__((naked)) static void delay_10ms(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay_10ms+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0xea60"); //60000
}


void rcc_config()
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

void digital_clock () {
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA );

  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB );

  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC );
// Задача пинов элементов индикатора 8.
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_4, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_5, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_14, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_15, LL_GPIO_MODE_OUTPUT);
//  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7, LL_GPIO_MODE_OUTPUT);
// задача пинов разрадов для индикатора 8. 8. 8. 8.
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_10, LL_GPIO_MODE_OUTPUT);
  LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_11, LL_GPIO_MODE_OUTPUT);

  // Button

  LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT); //USER Button
  //LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);

  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_3, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_4, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_5, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_6, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_7, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_14, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_15, LL_GPIO_OUTPUT_PUSHPULL);
//  LL_GPIO_SetPinOutputType(GPIOA, LL_GPIO_PIN_7, LL_GPIO_OUTPUT_PUSHPULL);

  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_8, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_9, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_10, LL_GPIO_OUTPUT_PUSHPULL);
  LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_11, LL_GPIO_OUTPUT_PUSHPULL);



}


/*Вывод числа от 0 до 9 на 7-ми сигментный индикатор
Карта распиновка, связь с пинами и номерами индикаторов из define
ПИН НА ПЛАТЕ | ПИН НА ИНДИКАТОРЕ | НОМЕР ИЗ DEFINE
    PA13 =            = a  =             = 0
    PA1 =            = b  =             = 1
    PA2 =            = c  =             = 2
    PA3 =            = d  =             = 3
    PA4 =            = e  =             = 4
    PA5 =            = f  =             = 5
    PA6 =            = g  =             = 6
    PA7 =            = dp =             = 7

    Indicatotor = Indicator_

Карта пинов на 7-ми сегментном индикаторе
   _0_
5 |   | 1
  |_6_|
4 |   | 2
  |_3_|   .7

*/
// Отображает число в группе индикаторов. Подаётся 1 цифра
void disp_digital_indicator (int Number)
{
  uint16_t Dictionary_Number[14] = {
    [0]  = (Indicatotor_0|Indicatotor_1|Indicatotor_2|Indicatotor_3|\
            Indicatotor_4|Indicatotor_5),
    [1]  = (Indicatotor_1|Indicatotor_2),
    [2]  = (Indicatotor_0|Indicatotor_1|Indicatotor_3|Indicatotor_4|\
            Indicatotor_6),
    [3]  = (Indicatotor_0|Indicatotor_1|Indicatotor_2|Indicatotor_3|\
            Indicatotor_6),
    [4]  = (Indicatotor_1|Indicatotor_2|Indicatotor_5|Indicatotor_6),
    [5]  = (Indicatotor_0|Indicatotor_2|Indicatotor_3|Indicatotor_5|\
            Indicatotor_6),
    [6]  = (Indicatotor_0|Indicatotor_2|Indicatotor_3|Indicatotor_4|\
            Indicatotor_5|Indicatotor_6),
    [7]  = (Indicatotor_0|Indicatotor_1|Indicatotor_2),
    [8]  = (Indicatotor_0|Indicatotor_1|Indicatotor_2|Indicatotor_3|\
            Indicatotor_4|Indicatotor_5|Indicatotor_6),
    [9]  = (Indicatotor_0|Indicatotor_1|Indicatotor_2|Indicatotor_3|\
            Indicatotor_5|Indicatotor_6),
    [10] = (Indicatotor_0|Indicatotor_1|Indicatotor_2|Indicatotor_3|\
            Indicatotor_4|Indicatotor_5|Indicatotor_6), //|Indicatotor_7
    [11] = (Indicatotor_0|Indicatotor_3|Indicatotor_4|Indicatotor_5|\
            Indicatotor_6),
    [12] = (Indicatotor_6|Indicatotor_4),
    [13] = (Indicatotor_6)
  };
  LL_GPIO_ResetOutputPin(GPIOB, Dictionary_Number[10]);
  LL_GPIO_SetOutputPin(GPIOB, Dictionary_Number[Number]);

}
// Выделяет определённый разряд
void digital_rank ( int rank)
{
  switch (rank) {
    case 3:
    {
      LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_9|\
                                LL_GPIO_PIN_10|LL_GPIO_PIN_11);
      LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_8);
    }
    break;
    case 2:
    {
      LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_8|\
                                LL_GPIO_PIN_10|LL_GPIO_PIN_11);
      LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_9);
    }
    break;
    case 1:
    {
      LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_8|\
                                LL_GPIO_PIN_9|LL_GPIO_PIN_11);
      LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_10);
    }
    break;
    case 0:
    {
      LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_8|\
                                LL_GPIO_PIN_9|LL_GPIO_PIN_10);
      LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_11);
    }
    break;
  }
}

void gpio_config() {
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC ) ;//Тактирование группы пинов
  LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT); // Включение и задача мода пина 8 из группы с
  LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);// Включение и задача мода пина 9 из группы С
  LL_GPIO_SetPinOutputType(GPIOC, LL_GPIO_PIN_8, LL_GPIO_OUTPUT_PUSHPULL);// Включение и задача выхода пина 8
  LL_GPIO_SetPinOutputType(GPIOC, LL_GPIO_PIN_9, LL_GPIO_OUTPUT_PUSHPULL);
  //LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);
  LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_9);
}


/*void invert_state_C_9()
{
  if (LL_GPIO_IsOutputPinSet(GPIOC, LL_GPIO_PIN_9)) {
    LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_9);
  } else {
    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_9);
  }
}*/

void bouncer()
{
    if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0)) {
      button_flag = 1;
      if (button_flag == 1){
          bouncer_cloak++;
          delay_10ms();
      }
      if (bouncer_cloak >= 15){
          button_flag = 0;
          bouncer_cloak = 0;
          Number++;
          LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
      }
  }
}

//Выделение разряда из заданного числа
int Numb_rank(int Number, int itter_rank) {
  int N_rank;
  switch (itter_rank)
  {
    case 0:
    {
      N_rank = Number%10;
      break;
    }
    case 1:
    {
      N_rank = Number%100/10;
      break;
    }
    case 2:
    {
      N_rank = Number%1000/100;
      break;
    }
    case 3:
    {
      N_rank = Number/1000;
      break;
    }
  }
  return N_rank;
}

void out_off_range(int Number)
{
  if (Number > 9999)
  {
  for (int itter = 0; itter < 16; itter++)
    {
      digital_rank(2);
      disp_digital_indicator(11);
      delay();
      digital_rank(1);
      disp_digital_indicator(12);
      delay();
      digital_rank(0);
      disp_digital_indicator(12);
      delay();
    }
  }
  else
  {
    digital_rank(3);
    disp_digital_indicator(13);
    delay();
    digital_rank(2);
    disp_digital_indicator(11);
    delay();
    digital_rank(1);
    disp_digital_indicator(12);
    delay();
    digital_rank(0);
    disp_digital_indicator(12);
    delay();
  }
}


void show_digital(int Number) {
  if ((Number <= 9999) && (Number >= -999))
  {
    for (int itter = 0; itter < 16; itter++)
    {
      if (Number >= 0) {
        digital_rank(itter%4);
        disp_digital_indicator(Numb_rank(Number,itter%4));//itter%4
        delay();
      } else {
        digital_rank(3);
        disp_digital_indicator(13);
        delay();
        digital_rank(itter%3);
        disp_digital_indicator(Numb_rank((-1*Number),itter%3));//itter%4
        delay();
      }
    }
  }
  else
    out_off_range(Number);
}

void systick_config()
{
  LL_InitTick(48000000, 1000);

  LL_SYSTICK_EnableIT();

  NVIC_SetPriority(SysTick_IRQn, 0);
  return;
}

void exti_config()
{
  // подача тактирования на модуль векторов прерывания
  LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);
  // Соединение порта А (GPIOA0) с линеей прерывания 0
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);
  // Включение обработки 0 линии
  LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);
  // срабатывание прерывания по возрастающему фронту
  LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
  //LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);
  // конфигурация линии прерывания + задача приоритета
  NVIC_EnableIRQ(EXTI0_1_IRQn);
  NVIC_SetPriority(EXTI0_1_IRQn, 0);


}

void EXTI0_1_IRQHandler(void)
{
          LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);
          Number++;
  /*if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0)) {
    button_flag = 1;
    if (button_flag == 1){
        bouncer_cloak++;
        delay_10ms();
    }
    if (bouncer_cloak >= 5){
        button_flag = 0;
        bouncer_cloak = 0;
        Number++;
    }
}*/
  LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
}

void SysTick_Handler(void)
{
    show_digital(Number);
}

int main ()
{
  rcc_config();
  gpio_config();
  digital_clock();
  exti_config();
  systick_config();

  while (1){
    //bouncer();
  }
}
