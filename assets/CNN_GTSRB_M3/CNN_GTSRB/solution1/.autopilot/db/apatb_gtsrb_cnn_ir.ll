; ModuleID = 'C:/Xilinx/pynq-zu/HLS/CNN_GTSRB/CNN_GTSRB/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_gtsrb_cnn_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="432" %w_c1, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %b_c1, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4608" %w_c2, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32" %b_c2, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="18432" %w_c3, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %b_c3, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16384" %w_fc1, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %b_fc1, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2752" %w_fc2, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="43" %b_fc2, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2700" %feature_in, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="43" %logits_out, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="1" %top1) local_unnamed_addr #0 {
entry:
  %w_c1_copy = alloca [432 x float], align 512
  %b_c1_copy = alloca [16 x float], align 512
  %malloccall = tail call i8* @malloc(i64 18432)
  %w_c2_copy = bitcast i8* %malloccall to [4608 x float]*
  %b_c2_copy = alloca [32 x float], align 512
  %malloccall1 = tail call i8* @malloc(i64 73728)
  %w_c3_copy = bitcast i8* %malloccall1 to [18432 x float]*
  %b_c3_copy = alloca [64 x float], align 512
  %malloccall2 = tail call i8* @malloc(i64 65536)
  %w_fc1_copy = bitcast i8* %malloccall2 to [16384 x float]*
  %b_fc1_copy = alloca [64 x float], align 512
  %malloccall3 = tail call i8* @malloc(i64 11008)
  %w_fc2_copy = bitcast i8* %malloccall3 to [2752 x float]*
  %b_fc2_copy = alloca [43 x float], align 512
  %malloccall4 = tail call i8* @malloc(i64 10800)
  %feature_in_copy = bitcast i8* %malloccall4 to [2700 x float]*
  %logits_out_copy = alloca [43 x float], align 512
  %top1_copy = alloca [1 x i32], align 512
  %0 = bitcast float* %w_c1 to [432 x float]*
  %1 = bitcast float* %b_c1 to [16 x float]*
  %2 = bitcast float* %w_c2 to [4608 x float]*
  %3 = bitcast float* %b_c2 to [32 x float]*
  %4 = bitcast float* %w_c3 to [18432 x float]*
  %5 = bitcast float* %b_c3 to [64 x float]*
  %6 = bitcast float* %w_fc1 to [16384 x float]*
  %7 = bitcast float* %b_fc1 to [64 x float]*
  %8 = bitcast float* %w_fc2 to [2752 x float]*
  %9 = bitcast float* %b_fc2 to [43 x float]*
  %10 = bitcast float* %feature_in to [2700 x float]*
  %11 = bitcast float* %logits_out to [43 x float]*
  %12 = bitcast i32* %top1 to [1 x i32]*
  call fastcc void @copy_in([432 x float]* nonnull %0, [432 x float]* nonnull align 512 %w_c1_copy, [16 x float]* nonnull %1, [16 x float]* nonnull align 512 %b_c1_copy, [4608 x float]* nonnull %2, [4608 x float]* %w_c2_copy, [32 x float]* nonnull %3, [32 x float]* nonnull align 512 %b_c2_copy, [18432 x float]* nonnull %4, [18432 x float]* %w_c3_copy, [64 x float]* nonnull %5, [64 x float]* nonnull align 512 %b_c3_copy, [16384 x float]* nonnull %6, [16384 x float]* %w_fc1_copy, [64 x float]* nonnull %7, [64 x float]* nonnull align 512 %b_fc1_copy, [2752 x float]* nonnull %8, [2752 x float]* %w_fc2_copy, [43 x float]* nonnull %9, [43 x float]* nonnull align 512 %b_fc2_copy, [2700 x float]* nonnull %10, [2700 x float]* %feature_in_copy, [43 x float]* nonnull %11, [43 x float]* nonnull align 512 %logits_out_copy, [1 x i32]* nonnull %12, [1 x i32]* nonnull align 512 %top1_copy)
  %13 = getelementptr inbounds [432 x float], [432 x float]* %w_c1_copy, i32 0, i32 0
  %14 = getelementptr inbounds [16 x float], [16 x float]* %b_c1_copy, i32 0, i32 0
  %15 = getelementptr inbounds [4608 x float], [4608 x float]* %w_c2_copy, i32 0, i32 0
  %16 = getelementptr inbounds [32 x float], [32 x float]* %b_c2_copy, i32 0, i32 0
  %17 = getelementptr inbounds [18432 x float], [18432 x float]* %w_c3_copy, i32 0, i32 0
  %18 = getelementptr inbounds [64 x float], [64 x float]* %b_c3_copy, i32 0, i32 0
  %19 = getelementptr inbounds [16384 x float], [16384 x float]* %w_fc1_copy, i32 0, i32 0
  %20 = getelementptr inbounds [64 x float], [64 x float]* %b_fc1_copy, i32 0, i32 0
  %21 = getelementptr inbounds [2752 x float], [2752 x float]* %w_fc2_copy, i32 0, i32 0
  %22 = getelementptr inbounds [43 x float], [43 x float]* %b_fc2_copy, i32 0, i32 0
  %23 = getelementptr inbounds [2700 x float], [2700 x float]* %feature_in_copy, i32 0, i32 0
  %24 = getelementptr inbounds [43 x float], [43 x float]* %logits_out_copy, i32 0, i32 0
  %25 = getelementptr inbounds [1 x i32], [1 x i32]* %top1_copy, i32 0, i32 0
  call void @apatb_gtsrb_cnn_hw(float* %13, float* %14, float* %15, float* %16, float* %17, float* %18, float* %19, float* %20, float* %21, float* %22, float* %23, float* %24, i32* %25)
  call void @copy_back([432 x float]* %0, [432 x float]* %w_c1_copy, [16 x float]* %1, [16 x float]* %b_c1_copy, [4608 x float]* %2, [4608 x float]* %w_c2_copy, [32 x float]* %3, [32 x float]* %b_c2_copy, [18432 x float]* %4, [18432 x float]* %w_c3_copy, [64 x float]* %5, [64 x float]* %b_c3_copy, [16384 x float]* %6, [16384 x float]* %w_fc1_copy, [64 x float]* %7, [64 x float]* %b_fc1_copy, [2752 x float]* %8, [2752 x float]* %w_fc2_copy, [43 x float]* %9, [43 x float]* %b_fc2_copy, [2700 x float]* %10, [2700 x float]* %feature_in_copy, [43 x float]* %11, [43 x float]* %logits_out_copy, [1 x i32]* %12, [1 x i32]* %top1_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([432 x float]* noalias readonly, [432 x float]* noalias align 512, [16 x float]* noalias readonly, [16 x float]* noalias align 512, [4608 x float]* noalias readonly, [4608 x float]* noalias, [32 x float]* noalias readonly, [32 x float]* noalias align 512, [18432 x float]* noalias readonly, [18432 x float]* noalias, [64 x float]* noalias readonly, [64 x float]* noalias align 512, [16384 x float]* noalias readonly, [16384 x float]* noalias, [64 x float]* noalias readonly, [64 x float]* noalias align 512, [2752 x float]* noalias readonly, [2752 x float]* noalias, [43 x float]* noalias readonly, [43 x float]* noalias align 512, [2700 x float]* noalias readonly, [2700 x float]* noalias, [43 x float]* noalias readonly, [43 x float]* noalias align 512, [1 x i32]* noalias readonly, [1 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a432f32([432 x float]* align 512 %1, [432 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* align 512 %3, [16 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a4608f32([4608 x float]* %5, [4608 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* align 512 %7, [32 x float]* %6)
  call fastcc void @onebyonecpy_hls.p0a18432f32([18432 x float]* %9, [18432 x float]* %8)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* align 512 %11, [64 x float]* %10)
  call fastcc void @onebyonecpy_hls.p0a16384f32([16384 x float]* %13, [16384 x float]* %12)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* align 512 %15, [64 x float]* %14)
  call fastcc void @onebyonecpy_hls.p0a2752f32([2752 x float]* %17, [2752 x float]* %16)
  call fastcc void @onebyonecpy_hls.p0a43f32([43 x float]* align 512 %19, [43 x float]* %18)
  call fastcc void @onebyonecpy_hls.p0a2700f32([2700 x float]* %21, [2700 x float]* %20)
  call fastcc void @onebyonecpy_hls.p0a43f32([43 x float]* align 512 %23, [43 x float]* %22)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %25, [1 x i32]* %24)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a432f32([432 x float]* noalias align 512, [432 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [432 x float]* %0, null
  %3 = icmp eq [432 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [432 x float], [432 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [432 x float], [432 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 432
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* noalias align 512, [16 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16 x float]* %0, null
  %3 = icmp eq [16 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x float], [16 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [16 x float], [16 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4608f32([4608 x float]* noalias, [4608 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4608 x float]* %0, null
  %3 = icmp eq [4608 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4608 x float], [4608 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [4608 x float], [4608 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4608
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* noalias align 512, [32 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [32 x float]* %0, null
  %3 = icmp eq [32 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x float], [32 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [32 x float], [32 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a18432f32([18432 x float]* noalias, [18432 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [18432 x float]* %0, null
  %3 = icmp eq [18432 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [18432 x float], [18432 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [18432 x float], [18432 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 18432
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* noalias align 512, [64 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x float]* %0, null
  %3 = icmp eq [64 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x float], [64 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [64 x float], [64 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a16384f32([16384 x float]* noalias, [16384 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16384 x float]* %0, null
  %3 = icmp eq [16384 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16384 x float], [16384 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [16384 x float], [16384 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16384
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2752f32([2752 x float]* noalias, [2752 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2752 x float]* %0, null
  %3 = icmp eq [2752 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2752 x float], [2752 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2752 x float], [2752 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2752
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a43f32([43 x float]* noalias align 512, [43 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [43 x float]* %0, null
  %3 = icmp eq [43 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [43 x float], [43 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [43 x float], [43 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 43
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2700f32([2700 x float]* noalias, [2700 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2700 x float]* %0, null
  %3 = icmp eq [2700 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2700 x float], [2700 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2700 x float], [2700 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2700
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* noalias align 512, [1 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x i32]* %0, null
  %3 = icmp eq [1 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %ret.loopexit

ret.loopexit:                                     ; preds = %entry
  %dst.addr = getelementptr [1 x i32], [1 x i32]* %0, i64 0, i64 0
  %src.addr = getelementptr [1 x i32], [1 x i32]* %1, i64 0, i64 0
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 512
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([432 x float]* noalias, [432 x float]* noalias readonly align 512, [16 x float]* noalias, [16 x float]* noalias readonly align 512, [4608 x float]* noalias, [4608 x float]* noalias readonly, [32 x float]* noalias, [32 x float]* noalias readonly align 512, [18432 x float]* noalias, [18432 x float]* noalias readonly, [64 x float]* noalias, [64 x float]* noalias readonly align 512, [16384 x float]* noalias, [16384 x float]* noalias readonly, [64 x float]* noalias, [64 x float]* noalias readonly align 512, [2752 x float]* noalias, [2752 x float]* noalias readonly, [43 x float]* noalias, [43 x float]* noalias readonly align 512, [2700 x float]* noalias, [2700 x float]* noalias readonly, [43 x float]* noalias, [43 x float]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a432f32([432 x float]* %0, [432 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %2, [16 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a4608f32([4608 x float]* %4, [4608 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* %6, [32 x float]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a18432f32([18432 x float]* %8, [18432 x float]* %9)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* %10, [64 x float]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a16384f32([16384 x float]* %12, [16384 x float]* %13)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* %14, [64 x float]* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0a2752f32([2752 x float]* %16, [2752 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a43f32([43 x float]* %18, [43 x float]* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0a2700f32([2700 x float]* %20, [2700 x float]* %21)
  call fastcc void @onebyonecpy_hls.p0a43f32([43 x float]* %22, [43 x float]* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %24, [1 x i32]* align 512 %25)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_gtsrb_cnn_hw(float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([432 x float]* noalias, [432 x float]* noalias readonly align 512, [16 x float]* noalias, [16 x float]* noalias readonly align 512, [4608 x float]* noalias, [4608 x float]* noalias readonly, [32 x float]* noalias, [32 x float]* noalias readonly align 512, [18432 x float]* noalias, [18432 x float]* noalias readonly, [64 x float]* noalias, [64 x float]* noalias readonly align 512, [16384 x float]* noalias, [16384 x float]* noalias readonly, [64 x float]* noalias, [64 x float]* noalias readonly align 512, [2752 x float]* noalias, [2752 x float]* noalias readonly, [43 x float]* noalias, [43 x float]* noalias readonly align 512, [2700 x float]* noalias, [2700 x float]* noalias readonly, [43 x float]* noalias, [43 x float]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a43f32([43 x float]* %22, [43 x float]* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %24, [1 x i32]* align 512 %25)
  ret void
}

define void @gtsrb_cnn_hw_stub_wrapper(float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, i32*) #4 {
entry:
  %13 = bitcast float* %0 to [432 x float]*
  %14 = bitcast float* %1 to [16 x float]*
  %15 = bitcast float* %2 to [4608 x float]*
  %16 = bitcast float* %3 to [32 x float]*
  %17 = bitcast float* %4 to [18432 x float]*
  %18 = bitcast float* %5 to [64 x float]*
  %19 = bitcast float* %6 to [16384 x float]*
  %20 = bitcast float* %7 to [64 x float]*
  %21 = bitcast float* %8 to [2752 x float]*
  %22 = bitcast float* %9 to [43 x float]*
  %23 = bitcast float* %10 to [2700 x float]*
  %24 = bitcast float* %11 to [43 x float]*
  %25 = bitcast i32* %12 to [1 x i32]*
  call void @copy_out([432 x float]* null, [432 x float]* %13, [16 x float]* null, [16 x float]* %14, [4608 x float]* null, [4608 x float]* %15, [32 x float]* null, [32 x float]* %16, [18432 x float]* null, [18432 x float]* %17, [64 x float]* null, [64 x float]* %18, [16384 x float]* null, [16384 x float]* %19, [64 x float]* null, [64 x float]* %20, [2752 x float]* null, [2752 x float]* %21, [43 x float]* null, [43 x float]* %22, [2700 x float]* null, [2700 x float]* %23, [43 x float]* null, [43 x float]* %24, [1 x i32]* null, [1 x i32]* %25)
  %26 = bitcast [432 x float]* %13 to float*
  %27 = bitcast [16 x float]* %14 to float*
  %28 = bitcast [4608 x float]* %15 to float*
  %29 = bitcast [32 x float]* %16 to float*
  %30 = bitcast [18432 x float]* %17 to float*
  %31 = bitcast [64 x float]* %18 to float*
  %32 = bitcast [16384 x float]* %19 to float*
  %33 = bitcast [64 x float]* %20 to float*
  %34 = bitcast [2752 x float]* %21 to float*
  %35 = bitcast [43 x float]* %22 to float*
  %36 = bitcast [2700 x float]* %23 to float*
  %37 = bitcast [43 x float]* %24 to float*
  %38 = bitcast [1 x i32]* %25 to i32*
  call void @gtsrb_cnn_hw_stub(float* %26, float* %27, float* %28, float* %29, float* %30, float* %31, float* %32, float* %33, float* %34, float* %35, float* %36, float* %37, i32* %38)
  call void @copy_in([432 x float]* null, [432 x float]* %13, [16 x float]* null, [16 x float]* %14, [4608 x float]* null, [4608 x float]* %15, [32 x float]* null, [32 x float]* %16, [18432 x float]* null, [18432 x float]* %17, [64 x float]* null, [64 x float]* %18, [16384 x float]* null, [16384 x float]* %19, [64 x float]* null, [64 x float]* %20, [2752 x float]* null, [2752 x float]* %21, [43 x float]* null, [43 x float]* %22, [2700 x float]* null, [2700 x float]* %23, [43 x float]* null, [43 x float]* %24, [1 x i32]* null, [1 x i32]* %25)
  ret void
}

declare void @gtsrb_cnn_hw_stub(float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
