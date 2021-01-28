// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XQIO_ACCEL_H
#define XQIO_ACCEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xqio_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XQio_accel_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XQio_accel;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XQio_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XQio_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XQio_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XQio_accel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XQio_accel_Initialize(XQio_accel *InstancePtr, u16 DeviceId);
XQio_accel_Config* XQio_accel_LookupConfig(u16 DeviceId);
int XQio_accel_CfgInitialize(XQio_accel *InstancePtr, XQio_accel_Config *ConfigPtr);
#else
int XQio_accel_Initialize(XQio_accel *InstancePtr, const char* InstanceName);
int XQio_accel_Release(XQio_accel *InstancePtr);
#endif

void XQio_accel_Start(XQio_accel *InstancePtr);
u32 XQio_accel_IsDone(XQio_accel *InstancePtr);
u32 XQio_accel_IsIdle(XQio_accel *InstancePtr);
u32 XQio_accel_IsReady(XQio_accel *InstancePtr);
void XQio_accel_EnableAutoRestart(XQio_accel *InstancePtr);
void XQio_accel_DisableAutoRestart(XQio_accel *InstancePtr);

void XQio_accel_Set_seed(XQio_accel *InstancePtr, u32 Data);
u32 XQio_accel_Get_seed(XQio_accel *InstancePtr);

void XQio_accel_InterruptGlobalEnable(XQio_accel *InstancePtr);
void XQio_accel_InterruptGlobalDisable(XQio_accel *InstancePtr);
void XQio_accel_InterruptEnable(XQio_accel *InstancePtr, u32 Mask);
void XQio_accel_InterruptDisable(XQio_accel *InstancePtr, u32 Mask);
void XQio_accel_InterruptClear(XQio_accel *InstancePtr, u32 Mask);
u32 XQio_accel_InterruptGetEnabled(XQio_accel *InstancePtr);
u32 XQio_accel_InterruptGetStatus(XQio_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
