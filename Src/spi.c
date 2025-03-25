/**
  ******************************************************************************
  * File Name          : SPI.c
  * Description        : This file provides code for the configuration
  *                      of the SPI instances.
  ******************************************************************************
  * This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * Copyright (c) 2018 STMicroelectronics International N.V. 
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without 
  * modification, are permitted, provided that the following conditions are met:
  *
  * 1. Redistribution of source code must retain the above copyright notice, 
  *    this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  *    this list of conditions and the following disclaimer in the documentation
  *    and/or other materials provided with the distribution.
  * 3. Neither the name of STMicroelectronics nor the names of other 
  *    contributors to this software may be used to endorse or promote products 
  *    derived from this software without specific written permission.
  * 4. This software, including modifications and/or derivative works of this 
  *    software, must execute solely and exclusively on microcontroller or
  *    microprocessor devices manufactured by or for STMicroelectronics.
  * 5. Redistribution and use of this software other than as permitted under 
  *    this license is void and will automatically terminate your rights under 
  *    this license. 
  *
  * THIS SOFTWARE IS PROVIDED BY STMICROELECTRONICS AND CONTRIBUTORS "AS IS" 
  * AND ANY EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING, BUT NOT 
  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
  * PARTICULAR PURPOSE AND NON-INFRINGEMENT OF THIRD PARTY INTELLECTUAL PROPERTY
  * RIGHTS ARE DISCLAIMED TO THE FULLEST EXTENT PERMITTED BY LAW. IN NO EVENT 
  * SHALL STMICROELECTRONICS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
  * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
  * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "spi.h"

#include "gpio.h"
#include "dma.h"

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

SPI_HandleTypeDef hspi3;
DMA_HandleTypeDef hdma_spi3_tx;
DMA_HandleTypeDef hdma_spi3_rx;

SPI_HandleTypeDef hspi1;
DMA_HandleTypeDef hdma_spi1_rx;
DMA_HandleTypeDef hdma_spi1_tx;



void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}


/* SPI3 init function */
void MX_SPI3_Init(void)
{

  hspi3.Instance = SPI3;
  hspi3.Init.Mode = SPI_MODE_MASTER;
  hspi3.Init.Direction = SPI_DIRECTION_2LINES;
  hspi3.Init.DataSize = SPI_DATASIZE_16BIT;
  hspi3.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi3.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi3.Init.NSS = SPI_NSS_SOFT;
  hspi3.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
  hspi3.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi3.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi3.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi3.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi3) != HAL_OK)
  {
    Error_Handler();
  }

}




void HAL_SPI_MspInit(SPI_HandleTypeDef* spiHandle)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    if(spiHandle->Instance == SPI1)
    {
        /* Enable clocks */
        __HAL_RCC_SPI1_CLK_ENABLE();
        __HAL_RCC_GPIOB_CLK_ENABLE();
        __HAL_RCC_DMA1_CLK_ENABLE();

        /* Configure SPI1 GPIO */
        GPIO_InitStruct.Pin = GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Pull = GPIO_NOPULL;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF5_SPI1;
        HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

        /* SPI1 DMA Init */
        /* SPI1_RX Init */
        hdma_spi1_rx.Instance = DMA1_Channel1;
        hdma_spi1_rx.Init.Request = DMA_REQUEST_SPI1_RX;
        hdma_spi1_rx.Init.Direction = DMA_PERIPH_TO_MEMORY;
        hdma_spi1_rx.Init.PeriphInc = DMA_PINC_DISABLE;
        hdma_spi1_rx.Init.MemInc = DMA_MINC_ENABLE;
        hdma_spi1_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
        hdma_spi1_rx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
        hdma_spi1_rx.Init.Mode = DMA_NORMAL;
        hdma_spi1_rx.Init.Priority = DMA_PRIORITY_MEDIUM;
        
        if (HAL_DMA_Init(&hdma_spi1_rx) != HAL_OK)
        {
            Error_Handler();
        }
        __HAL_LINKDMA(spiHandle, hdmarx, hdma_spi1_rx);

        /* SPI1_TX Init */
        hdma_spi1_tx.Instance = DMA1_Channel2;
        hdma_spi1_tx.Init.Request = DMA_REQUEST_SPI1_TX;
        hdma_spi1_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
        hdma_spi1_tx.Init.PeriphInc = DMA_PINC_DISABLE;
        hdma_spi1_tx.Init.MemInc = DMA_MINC_ENABLE;
        hdma_spi1_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
        hdma_spi1_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
        hdma_spi1_tx.Init.Mode = DMA_NORMAL;
        hdma_spi1_tx.Init.Priority = DMA_PRIORITY_MEDIUM;
        
        if (HAL_DMA_Init(&hdma_spi1_tx) != HAL_OK)
        {
            Error_Handler();
        }
        __HAL_LINKDMA(spiHandle, hdmatx, hdma_spi1_tx);

        /* Enable DMA interrupts */
        HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 1, 0);
        HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
        HAL_NVIC_SetPriority(DMA1_Channel2_IRQn, 1, 0);
        HAL_NVIC_EnableIRQ(DMA1_Channel2_IRQn);

        /* Enable DMA requests */
        SET_BIT(spiHandle->Instance->CR2, SPI_CR2_RXDMAEN);
        SET_BIT(spiHandle->Instance->CR2, SPI_CR2_TXDMAEN);

        /* Enable SPI */
        __HAL_SPI_ENABLE(spiHandle);
    }
    else if(spiHandle->Instance == SPI3)
    {
        /* Enable clocks */
        __HAL_RCC_SPI3_CLK_ENABLE();
        __HAL_RCC_GPIOC_CLK_ENABLE();
        __HAL_RCC_DMA1_CLK_ENABLE();

        /* Configure SPI3 GPIO */
        GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Pull = GPIO_PULLUP;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF6_SPI3;
        HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

        /* SPI3 DMA Init */
        /* SPI3_RX Init */
        hdma_spi3_rx.Instance = DMA1_Channel3;
        hdma_spi3_rx.Init.Request = DMA_REQUEST_SPI3_RX;
        hdma_spi3_rx.Init.Direction = DMA_PERIPH_TO_MEMORY;
        hdma_spi3_rx.Init.PeriphInc = DMA_PINC_DISABLE;
        hdma_spi3_rx.Init.MemInc = DMA_MINC_ENABLE;
        
        if(spiHandle->Init.DataSize == SPI_DATASIZE_8BIT) {
            hdma_spi3_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
            hdma_spi3_rx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
        } else {
            hdma_spi3_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
            hdma_spi3_rx.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
        }
        
        hdma_spi3_rx.Init.Mode = DMA_NORMAL;
        hdma_spi3_rx.Init.Priority = DMA_PRIORITY_MEDIUM;
        
        if (HAL_DMA_Init(&hdma_spi3_rx) != HAL_OK)
        {
            Error_Handler();
        }
        __HAL_LINKDMA(spiHandle, hdmarx, hdma_spi3_rx);

        /* SPI3_TX Init */
        hdma_spi3_tx.Instance = DMA1_Channel4;
        hdma_spi3_tx.Init.Request = DMA_REQUEST_SPI3_TX;
        hdma_spi3_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
        hdma_spi3_tx.Init.PeriphInc = DMA_PINC_DISABLE;
        hdma_spi3_tx.Init.MemInc = DMA_MINC_ENABLE;
        
        if(spiHandle->Init.DataSize == SPI_DATASIZE_8BIT) {
            hdma_spi3_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
            hdma_spi3_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
        } else {
            hdma_spi3_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
            hdma_spi3_tx.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
        }
        
        hdma_spi3_tx.Init.Mode = DMA_NORMAL;
        hdma_spi3_tx.Init.Priority = DMA_PRIORITY_MEDIUM;
        
        if (HAL_DMA_Init(&hdma_spi3_tx) != HAL_OK)
        {
            Error_Handler();
        }
        __HAL_LINKDMA(spiHandle, hdmatx, hdma_spi3_tx);

        /* Enable DMA interrupts */
        HAL_NVIC_SetPriority(DMA1_Channel3_IRQn, 1, 0);
        HAL_NVIC_EnableIRQ(DMA1_Channel3_IRQn);
        HAL_NVIC_SetPriority(DMA1_Channel4_IRQn, 1, 0);
        HAL_NVIC_EnableIRQ(DMA1_Channel4_IRQn);

        /* Enable DMA requests */
        SET_BIT(spiHandle->Instance->CR2, SPI_CR2_RXDMAEN);
        SET_BIT(spiHandle->Instance->CR2, SPI_CR2_TXDMAEN);

        /* Enable SPI */
        __HAL_SPI_ENABLE(spiHandle);
    }
}


static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength)
{
    /* Clear DBM bit - not needed for G4 series */
    
    /* Configure DMA Channel data length */
    hdma->Instance->CNDTR = DataLength;

    /* Memory to Peripheral */
    if((hdma->Init.Direction) == DMA_MEMORY_TO_PERIPH)
    {
        /* Configure DMA Channel destination address */
        hdma->Instance->CPAR = DstAddress;

        /* Configure DMA Channel source address */
        hdma->Instance->CMAR = SrcAddress;
    }
    /* Peripheral to Memory */
    else
    {
        /* Configure DMA Channel source address */
        hdma->Instance->CPAR = SrcAddress;

        /* Configure DMA Channel destination address */
        hdma->Instance->CMAR = DstAddress;
    }
}

void transmit_spi(SPI_HandleTypeDef* spiHandle, uint8_t *tx_buf, uint8_t *rx_buf, uint16_t len)
{
    // Disable DMA
    // Disable DMA
    __HAL_DMA_DISABLE(spiHandle->hdmatx);
    __HAL_DMA_DISABLE(spiHandle->hdmarx);

    // Clear TX DMA flags - using correct G4 flags
    __HAL_DMA_CLEAR_FLAG(spiHandle->hdmatx, 
        (DMA_FLAG_TC4 | DMA_FLAG_HT4 | DMA_FLAG_TE4));

    // Clear RX DMA flags - using correct G4 flags  
    __HAL_DMA_CLEAR_FLAG(spiHandle->hdmarx,
        (DMA_FLAG_TC4 | DMA_FLAG_HT4 | DMA_FLAG_TE4));


    // Enable DMA requests for SPI
    SET_BIT(spiHandle->Instance->CR2, SPI_CR2_RXDMAEN);
    SET_BIT(spiHandle->Instance->CR2, SPI_CR2_TXDMAEN);

    // Configure DMA channels
    DMA_SetConfig(spiHandle->hdmatx, (uint32_t)tx_buf, (uint32_t)&spiHandle->Instance->DR, len);
    DMA_SetConfig(spiHandle->hdmarx, (uint32_t)&spiHandle->Instance->DR, (uint32_t)rx_buf, len);

    // Enable DMA
    __HAL_DMA_ENABLE(spiHandle->hdmarx);
    __HAL_DMA_ENABLE(spiHandle->hdmatx);
}


void HAL_SPI_MspDeInit(SPI_HandleTypeDef* spiHandle)
{

  if(spiHandle->Instance==SPI3)
  {
  /* USER CODE BEGIN SPI3_MspDeInit 0 */

  /* USER CODE END SPI3_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_SPI3_CLK_DISABLE();
  
    /**SPI3 GPIO Configuration    
    PC10     ------> SPI3_SCK
    PC11     ------> SPI3_MISO
    PC12     ------> SPI3_MOSI 
    */
    HAL_GPIO_DeInit(GPIOC, GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12);

    /* SPI3 DMA DeInit */
    HAL_DMA_DeInit(spiHandle->hdmatx);
    HAL_DMA_DeInit(spiHandle->hdmarx);

    /* SPI3 interrupt Deinit */
    HAL_NVIC_DisableIRQ(SPI3_IRQn);
  /* USER CODE BEGIN SPI3_MspDeInit 1 */

  /* USER CODE END SPI3_MspDeInit 1 */
  }
  else if(spiHandle->Instance==SPI1)
  {
  /* USER CODE BEGIN SPI1_MspDeInit 0 */

  /* USER CODE END SPI1_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_SPI1_CLK_DISABLE();

    /**SPI1 GPIO Configuration
    PA5     ------> SPI1_SCK
    PA6     ------> SPI1_MISO
    PA7     ------> SPI1_MOSI
    */
    HAL_GPIO_DeInit(GPIOB, GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5);

    /* SPI1 DMA DeInit */
    HAL_DMA_DeInit(spiHandle->hdmarx);
    HAL_DMA_DeInit(spiHandle->hdmatx);
    HAL_NVIC_DisableIRQ(SPI1_IRQn);
  /* USER CODE BEGIN SPI1_MspDeInit 1 */

  /* USER CODE END SPI1_MspDeInit 1 */
  }
} 

/* USER CODE BEGIN 1 */

/* USER CODE END 1 */

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
