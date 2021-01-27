// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xqio_accel.h"

extern XQio_accel_Config XQio_accel_ConfigTable[];

XQio_accel_Config *XQio_accel_LookupConfig(u16 DeviceId) {
	XQio_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XQIO_ACCEL_NUM_INSTANCES; Index++) {
		if (XQio_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XQio_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQio_accel_Initialize(XQio_accel *InstancePtr, u16 DeviceId) {
	XQio_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQio_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQio_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

