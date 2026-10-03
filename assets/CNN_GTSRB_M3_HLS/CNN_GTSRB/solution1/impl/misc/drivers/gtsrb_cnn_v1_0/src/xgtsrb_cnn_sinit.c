// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgtsrb_cnn.h"

extern XGtsrb_cnn_Config XGtsrb_cnn_ConfigTable[];

XGtsrb_cnn_Config *XGtsrb_cnn_LookupConfig(u16 DeviceId) {
	XGtsrb_cnn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGTSRB_CNN_NUM_INSTANCES; Index++) {
		if (XGtsrb_cnn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGtsrb_cnn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGtsrb_cnn_Initialize(XGtsrb_cnn *InstancePtr, u16 DeviceId) {
	XGtsrb_cnn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGtsrb_cnn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGtsrb_cnn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

