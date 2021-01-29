// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xqio_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XQio_accel_CfgInitialize(XQio_accel *InstancePtr, XQio_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XQio_accel_Start(XQio_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQio_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_AP_CTRL) & 0x80;
    XQio_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XQio_accel_IsDone(XQio_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQio_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XQio_accel_IsIdle(XQio_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQio_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XQio_accel_IsReady(XQio_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQio_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XQio_accel_EnableAutoRestart(XQio_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQio_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XQio_accel_DisableAutoRestart(XQio_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQio_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_AP_CTRL, 0);
}

void XQio_accel_Set_seed(XQio_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQio_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_SEED_DATA, Data);
}

u32 XQio_accel_Get_seed(XQio_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQio_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_SEED_DATA);
    return Data;
}

void XQio_accel_InterruptGlobalEnable(XQio_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQio_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_GIE, 1);
}

void XQio_accel_InterruptGlobalDisable(XQio_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQio_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_GIE, 0);
}

void XQio_accel_InterruptEnable(XQio_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQio_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_IER);
    XQio_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_IER, Register | Mask);
}

void XQio_accel_InterruptDisable(XQio_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQio_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_IER);
    XQio_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_IER, Register & (~Mask));
}

void XQio_accel_InterruptClear(XQio_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQio_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_ISR, Mask);
}

u32 XQio_accel_InterruptGetEnabled(XQio_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQio_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_IER);
}

u32 XQio_accel_InterruptGetStatus(XQio_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQio_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XQIO_ACCEL_AXILITES_ADDR_ISR);
}

