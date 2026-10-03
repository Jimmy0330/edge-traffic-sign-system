// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGTSRB_CNN_H
#define XGTSRB_CNN_H

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
#include "xgtsrb_cnn_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XGtsrb_cnn_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XGtsrb_cnn;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGtsrb_cnn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGtsrb_cnn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGtsrb_cnn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGtsrb_cnn_ReadReg(BaseAddress, RegOffset) \
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
int XGtsrb_cnn_Initialize(XGtsrb_cnn *InstancePtr, u16 DeviceId);
XGtsrb_cnn_Config* XGtsrb_cnn_LookupConfig(u16 DeviceId);
int XGtsrb_cnn_CfgInitialize(XGtsrb_cnn *InstancePtr, XGtsrb_cnn_Config *ConfigPtr);
#else
int XGtsrb_cnn_Initialize(XGtsrb_cnn *InstancePtr, const char* InstanceName);
int XGtsrb_cnn_Release(XGtsrb_cnn *InstancePtr);
#endif

void XGtsrb_cnn_Start(XGtsrb_cnn *InstancePtr);
u32 XGtsrb_cnn_IsDone(XGtsrb_cnn *InstancePtr);
u32 XGtsrb_cnn_IsIdle(XGtsrb_cnn *InstancePtr);
u32 XGtsrb_cnn_IsReady(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_EnableAutoRestart(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_DisableAutoRestart(XGtsrb_cnn *InstancePtr);

void XGtsrb_cnn_Set_w_c1(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_w_c1(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_b_c1(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_b_c1(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_w_c2(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_w_c2(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_b_c2(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_b_c2(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_w_c3(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_w_c3(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_b_c3(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_b_c3(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_w_fc1(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_w_fc1(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_b_fc1(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_b_fc1(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_w_fc2(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_w_fc2(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_b_fc2(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_b_fc2(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_feature_in(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_feature_in(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_logits_out(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_logits_out(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_Set_top1(XGtsrb_cnn *InstancePtr, u64 Data);
u64 XGtsrb_cnn_Get_top1(XGtsrb_cnn *InstancePtr);

void XGtsrb_cnn_InterruptGlobalEnable(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_InterruptGlobalDisable(XGtsrb_cnn *InstancePtr);
void XGtsrb_cnn_InterruptEnable(XGtsrb_cnn *InstancePtr, u32 Mask);
void XGtsrb_cnn_InterruptDisable(XGtsrb_cnn *InstancePtr, u32 Mask);
void XGtsrb_cnn_InterruptClear(XGtsrb_cnn *InstancePtr, u32 Mask);
u32 XGtsrb_cnn_InterruptGetEnabled(XGtsrb_cnn *InstancePtr);
u32 XGtsrb_cnn_InterruptGetStatus(XGtsrb_cnn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
