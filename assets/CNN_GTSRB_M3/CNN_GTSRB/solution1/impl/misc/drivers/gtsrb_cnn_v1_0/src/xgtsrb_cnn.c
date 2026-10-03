// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xgtsrb_cnn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGtsrb_cnn_CfgInitialize(XGtsrb_cnn *InstancePtr, XGtsrb_cnn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGtsrb_cnn_Start(XGtsrb_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGtsrb_cnn_IsDone(XGtsrb_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGtsrb_cnn_IsIdle(XGtsrb_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGtsrb_cnn_IsReady(XGtsrb_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGtsrb_cnn_EnableAutoRestart(XGtsrb_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGtsrb_cnn_DisableAutoRestart(XGtsrb_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_AP_CTRL, 0);
}

void XGtsrb_cnn_Set_w_c1(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C1_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C1_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_w_c1(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C1_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C1_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_b_c1(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C1_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C1_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_b_c1(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C1_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C1_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_w_c2(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C2_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C2_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_w_c2(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C2_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C2_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_b_c2(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C2_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C2_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_b_c2(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C2_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C2_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_w_c3(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C3_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C3_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_w_c3(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C3_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_C3_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_b_c3(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C3_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C3_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_b_c3(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C3_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_C3_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_w_fc1(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_FC1_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_FC1_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_w_fc1(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_FC1_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_FC1_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_b_fc1(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_FC1_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_FC1_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_b_fc1(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_FC1_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_FC1_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_w_fc2(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_FC2_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_FC2_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_w_fc2(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_FC2_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_W_FC2_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_b_fc2(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_FC2_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_FC2_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_b_fc2(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_FC2_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_B_FC2_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_feature_in(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_FEATURE_IN_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_FEATURE_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_feature_in(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_FEATURE_IN_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_FEATURE_IN_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_logits_out(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_LOGITS_OUT_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_LOGITS_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_logits_out(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_LOGITS_OUT_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_LOGITS_OUT_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_Set_top1(XGtsrb_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_TOP1_DATA, (u32)(Data));
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_TOP1_DATA + 4, (u32)(Data >> 32));
}

u64 XGtsrb_cnn_Get_top1(XGtsrb_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_TOP1_DATA);
    Data += (u64)XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_TOP1_DATA + 4) << 32;
    return Data;
}

void XGtsrb_cnn_InterruptGlobalEnable(XGtsrb_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_GIE, 1);
}

void XGtsrb_cnn_InterruptGlobalDisable(XGtsrb_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_GIE, 0);
}

void XGtsrb_cnn_InterruptEnable(XGtsrb_cnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_IER);
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_IER, Register | Mask);
}

void XGtsrb_cnn_InterruptDisable(XGtsrb_cnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_IER);
    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGtsrb_cnn_InterruptClear(XGtsrb_cnn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGtsrb_cnn_WriteReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_ISR, Mask);
}

u32 XGtsrb_cnn_InterruptGetEnabled(XGtsrb_cnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_IER);
}

u32 XGtsrb_cnn_InterruptGetStatus(XGtsrb_cnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGtsrb_cnn_ReadReg(InstancePtr->Control_BaseAddress, XGTSRB_CNN_CONTROL_ADDR_ISR);
}

