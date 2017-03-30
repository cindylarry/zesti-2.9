; ModuleID = '/home/klee/zesti-2.9/runtime/POSIX/fd_32.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.__fsid_t = type { [2 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.timespec = type { i64, i64 }

@__getdents = alias i64 (i32, %struct.dirent*, i64)* @getdents

define i32 @open(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !227), !dbg !257
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !228), !dbg !257
  call void @llvm.dbg.value(metadata !258, i64 0, metadata !229), !dbg !259
  %0 = and i32 %flags, 64, !dbg !260
  %1 = icmp eq i32 %0, 0, !dbg !260
  br i1 %1, label %bb8, label %bb, !dbg !260

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !231), !dbg !261
  %ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !262
  call void @llvm.va_start(i8* %ap12), !dbg !262
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !263
  %3 = load i32* %2, align 8, !dbg !263
  %4 = icmp ugt i32 %3, 47, !dbg !263
  br i1 %4, label %bb4, label %bb3, !dbg !263

bb3:                                              ; preds = %bb
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !263
  %6 = load i8** %5, align 8, !dbg !263
  %tmp = zext i32 %3 to i64
  %7 = ptrtoint i8* %6 to i64, !dbg !263
  %8 = add i64 %7, %tmp, !dbg !263
  %9 = inttoptr i64 %8 to i8*, !dbg !263
  %10 = add i32 %3, 8, !dbg !263
  store i32 %10, i32* %2, align 8, !dbg !263
  br label %bb5, !dbg !263

bb4:                                              ; preds = %bb
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !263
  %12 = load i8** %11, align 8, !dbg !263
  %13 = getelementptr inbounds i8* %12, i64 8, !dbg !263
  store i8* %13, i8** %11, align 8, !dbg !263
  br label %bb5, !dbg !263

bb5:                                              ; preds = %bb4, %bb3
  %addr.27.0 = phi i8* [ %12, %bb4 ], [ %9, %bb3 ]
  %14 = bitcast i8* %addr.27.0 to i32*, !dbg !263
  %15 = load i32* %14, align 4, !dbg !263
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !229), !dbg !263
  call void @llvm.va_end(i8* %ap12), !dbg !264
  br label %bb8, !dbg !264

bb8:                                              ; preds = %entry, %bb5
  %mode.0 = phi i32 [ %15, %bb5 ], [ 0, %entry ]
  %16 = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) nounwind, !dbg !265
  ret i32 %16, !dbg !265
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i32 @fstat64(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !162), !dbg !266
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !163), !dbg !266
  %0 = tail call i32 @__fd_fstat(i32 %fd, %struct.stat* %buf) nounwind, !dbg !267
  ret i32 %0, !dbg !267
}

declare i32 @__fd_fstat(i32, %struct.stat*)

define i32 @fstat(i32 %fd, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !164), !dbg !269
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !165), !dbg !269
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !166), !dbg !270
  %0 = call i32 @__fd_fstat(i32 %fd, %struct.stat* %tmp) nounwind, !dbg !271
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !168), !dbg !271
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !160), !dbg !272
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !161), !dbg !272
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !274
  %2 = load i64* %1, align 8, !dbg !274
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !274
  store i64 %2, i64* %3, align 8, !dbg !274
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !276
  %5 = load i64* %4, align 8, !dbg !276
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !276
  store i64 %5, i64* %6, align 8, !dbg !276
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !277
  %8 = load i32* %7, align 8, !dbg !277
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !277
  store i32 %8, i32* %9, align 8, !dbg !277
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !278
  %11 = load i64* %10, align 8, !dbg !278
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !278
  store i64 %11, i64* %12, align 8, !dbg !278
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !279
  %14 = load i32* %13, align 4, !dbg !279
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !279
  store i32 %14, i32* %15, align 4, !dbg !279
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !280
  %17 = load i32* %16, align 8, !dbg !280
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !280
  store i32 %17, i32* %18, align 8, !dbg !280
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !281
  %20 = load i64* %19, align 8, !dbg !281
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !281
  store i64 %20, i64* %21, align 8, !dbg !281
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !282
  %23 = load i64* %22, align 8, !dbg !282
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !282
  store i64 %23, i64* %24, align 8, !dbg !282
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !283
  %26 = load i64* %25, align 8, !dbg !283
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !283
  store i64 %26, i64* %27, align 8, !dbg !283
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !284
  %29 = load i64* %28, align 8, !dbg !284
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !284
  store i64 %29, i64* %30, align 8, !dbg !284
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !285
  %32 = load i64* %31, align 8, !dbg !285
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !285
  store i64 %32, i64* %33, align 8, !dbg !285
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !286
  %35 = load i64* %34, align 8, !dbg !286
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !286
  store i64 %35, i64* %36, align 8, !dbg !286
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !287
  %38 = load i64* %37, align 8, !dbg !287
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !287
  store i64 %38, i64* %39, align 8, !dbg !287
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !288
  %41 = load i64* %40, align 8, !dbg !288
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !288
  store i64 %41, i64* %42, align 8, !dbg !288
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !289
  %44 = load i64* %43, align 8, !dbg !289
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !289
  store i64 %44, i64* %45, align 8, !dbg !289
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !290
  %47 = load i64* %46, align 8, !dbg !290
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !290
  store i64 %47, i64* %48, align 8, !dbg !290
  ret i32 %0, !dbg !291
}

define i32 @__fxstat(i32 %vers, i32 %fd, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !169), !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !170), !dbg !292
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !171), !dbg !292
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !172), !dbg !293
  %0 = call i32 @__fd_fstat(i32 %fd, %struct.stat* %tmp) nounwind, !dbg !294
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !174), !dbg !294
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !160), !dbg !295
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !161), !dbg !295
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !297
  %2 = load i64* %1, align 8, !dbg !297
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !297
  store i64 %2, i64* %3, align 8, !dbg !297
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !298
  %5 = load i64* %4, align 8, !dbg !298
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !298
  store i64 %5, i64* %6, align 8, !dbg !298
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !299
  %8 = load i32* %7, align 8, !dbg !299
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !299
  store i32 %8, i32* %9, align 8, !dbg !299
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !300
  %11 = load i64* %10, align 8, !dbg !300
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !300
  store i64 %11, i64* %12, align 8, !dbg !300
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !301
  %14 = load i32* %13, align 4, !dbg !301
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !301
  store i32 %14, i32* %15, align 4, !dbg !301
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !302
  %17 = load i32* %16, align 8, !dbg !302
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !302
  store i32 %17, i32* %18, align 8, !dbg !302
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !303
  %20 = load i64* %19, align 8, !dbg !303
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !303
  store i64 %20, i64* %21, align 8, !dbg !303
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !304
  %23 = load i64* %22, align 8, !dbg !304
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !304
  store i64 %23, i64* %24, align 8, !dbg !304
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !305
  %26 = load i64* %25, align 8, !dbg !305
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !305
  store i64 %26, i64* %27, align 8, !dbg !305
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !306
  %29 = load i64* %28, align 8, !dbg !306
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !306
  store i64 %29, i64* %30, align 8, !dbg !306
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !307
  %32 = load i64* %31, align 8, !dbg !307
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !307
  store i64 %32, i64* %33, align 8, !dbg !307
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !308
  %35 = load i64* %34, align 8, !dbg !308
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !308
  store i64 %35, i64* %36, align 8, !dbg !308
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !309
  %38 = load i64* %37, align 8, !dbg !309
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !309
  store i64 %38, i64* %39, align 8, !dbg !309
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !310
  %41 = load i64* %40, align 8, !dbg !310
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !310
  store i64 %41, i64* %42, align 8, !dbg !310
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !311
  %44 = load i64* %43, align 8, !dbg !311
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !311
  store i64 %44, i64* %45, align 8, !dbg !311
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !312
  %47 = load i64* %46, align 8, !dbg !312
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !312
  store i64 %47, i64* %48, align 8, !dbg !312
  ret i32 %0, !dbg !313
}

define weak i32 @lstat64(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !175), !dbg !314
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !176), !dbg !314
  %0 = tail call i32 @__fd_lstat(i8* %path, %struct.stat* %buf) nounwind, !dbg !315
  ret i32 %0, !dbg !315
}

declare i32 @__fd_lstat(i8*, %struct.stat*)

define i32 @lstat(i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !177), !dbg !317
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !178), !dbg !317
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !179), !dbg !318
  %0 = call i32 @__fd_lstat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !319
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !181), !dbg !319
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !160), !dbg !320
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !161), !dbg !320
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !322
  %2 = load i64* %1, align 8, !dbg !322
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !322
  store i64 %2, i64* %3, align 8, !dbg !322
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !323
  %5 = load i64* %4, align 8, !dbg !323
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !323
  store i64 %5, i64* %6, align 8, !dbg !323
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !324
  %8 = load i32* %7, align 8, !dbg !324
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !324
  store i32 %8, i32* %9, align 8, !dbg !324
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !325
  %11 = load i64* %10, align 8, !dbg !325
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !325
  store i64 %11, i64* %12, align 8, !dbg !325
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !326
  %14 = load i32* %13, align 4, !dbg !326
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !326
  store i32 %14, i32* %15, align 4, !dbg !326
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !327
  %17 = load i32* %16, align 8, !dbg !327
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !327
  store i32 %17, i32* %18, align 8, !dbg !327
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !328
  %20 = load i64* %19, align 8, !dbg !328
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !328
  store i64 %20, i64* %21, align 8, !dbg !328
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !329
  %23 = load i64* %22, align 8, !dbg !329
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !329
  store i64 %23, i64* %24, align 8, !dbg !329
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !330
  %26 = load i64* %25, align 8, !dbg !330
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !330
  store i64 %26, i64* %27, align 8, !dbg !330
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !331
  %29 = load i64* %28, align 8, !dbg !331
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !331
  store i64 %29, i64* %30, align 8, !dbg !331
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !332
  %32 = load i64* %31, align 8, !dbg !332
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !332
  store i64 %32, i64* %33, align 8, !dbg !332
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !333
  %35 = load i64* %34, align 8, !dbg !333
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !333
  store i64 %35, i64* %36, align 8, !dbg !333
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !334
  %38 = load i64* %37, align 8, !dbg !334
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !334
  store i64 %38, i64* %39, align 8, !dbg !334
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !335
  %41 = load i64* %40, align 8, !dbg !335
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !335
  store i64 %41, i64* %42, align 8, !dbg !335
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !336
  %44 = load i64* %43, align 8, !dbg !336
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !336
  store i64 %44, i64* %45, align 8, !dbg !336
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !337
  %47 = load i64* %46, align 8, !dbg !337
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !337
  store i64 %47, i64* %48, align 8, !dbg !337
  ret i32 %0, !dbg !338
}

define i32 @__lxstat(i32 %vers, i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !182), !dbg !339
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !183), !dbg !339
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !184), !dbg !339
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !185), !dbg !340
  %0 = call i32 @__fd_lstat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !187), !dbg !341
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !160), !dbg !342
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !161), !dbg !342
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !344
  %2 = load i64* %1, align 8, !dbg !344
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !344
  store i64 %2, i64* %3, align 8, !dbg !344
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !345
  %5 = load i64* %4, align 8, !dbg !345
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !345
  store i64 %5, i64* %6, align 8, !dbg !345
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !346
  %8 = load i32* %7, align 8, !dbg !346
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !346
  store i32 %8, i32* %9, align 8, !dbg !346
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !347
  %11 = load i64* %10, align 8, !dbg !347
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !347
  store i64 %11, i64* %12, align 8, !dbg !347
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !348
  %14 = load i32* %13, align 4, !dbg !348
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !348
  store i32 %14, i32* %15, align 4, !dbg !348
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !349
  %17 = load i32* %16, align 8, !dbg !349
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !349
  store i32 %17, i32* %18, align 8, !dbg !349
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !350
  %20 = load i64* %19, align 8, !dbg !350
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !350
  store i64 %20, i64* %21, align 8, !dbg !350
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !351
  %23 = load i64* %22, align 8, !dbg !351
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !351
  store i64 %23, i64* %24, align 8, !dbg !351
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !352
  %26 = load i64* %25, align 8, !dbg !352
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !352
  store i64 %26, i64* %27, align 8, !dbg !352
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !353
  %29 = load i64* %28, align 8, !dbg !353
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !353
  store i64 %29, i64* %30, align 8, !dbg !353
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !354
  %32 = load i64* %31, align 8, !dbg !354
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !354
  store i64 %32, i64* %33, align 8, !dbg !354
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !355
  %35 = load i64* %34, align 8, !dbg !355
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !355
  store i64 %35, i64* %36, align 8, !dbg !355
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !356
  %38 = load i64* %37, align 8, !dbg !356
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !356
  store i64 %38, i64* %39, align 8, !dbg !356
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !357
  %41 = load i64* %40, align 8, !dbg !357
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !357
  store i64 %41, i64* %42, align 8, !dbg !357
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !358
  %44 = load i64* %43, align 8, !dbg !358
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !358
  store i64 %44, i64* %45, align 8, !dbg !358
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !359
  %47 = load i64* %46, align 8, !dbg !359
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !359
  store i64 %47, i64* %48, align 8, !dbg !359
  ret i32 %0, !dbg !360
}

define weak i32 @stat64(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !188), !dbg !361
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !189), !dbg !361
  %0 = tail call i32 @__fd_stat(i8* %path, %struct.stat* %buf) nounwind, !dbg !362
  ret i32 %0, !dbg !362
}

declare i32 @__fd_stat(i8*, %struct.stat*)

define i32 @stat(i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !190), !dbg !364
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !191), !dbg !364
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !192), !dbg !365
  %0 = call i32 @__fd_stat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !366
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !194), !dbg !366
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !160), !dbg !367
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !161), !dbg !367
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !369
  %2 = load i64* %1, align 8, !dbg !369
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !369
  store i64 %2, i64* %3, align 8, !dbg !369
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !370
  %5 = load i64* %4, align 8, !dbg !370
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !370
  store i64 %5, i64* %6, align 8, !dbg !370
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !371
  %8 = load i32* %7, align 8, !dbg !371
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !371
  store i32 %8, i32* %9, align 8, !dbg !371
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !372
  %11 = load i64* %10, align 8, !dbg !372
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !372
  store i64 %11, i64* %12, align 8, !dbg !372
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !373
  %14 = load i32* %13, align 4, !dbg !373
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !373
  store i32 %14, i32* %15, align 4, !dbg !373
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !374
  %17 = load i32* %16, align 8, !dbg !374
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !374
  store i32 %17, i32* %18, align 8, !dbg !374
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !375
  %20 = load i64* %19, align 8, !dbg !375
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !375
  store i64 %20, i64* %21, align 8, !dbg !375
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !376
  %23 = load i64* %22, align 8, !dbg !376
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !376
  store i64 %23, i64* %24, align 8, !dbg !376
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !377
  %26 = load i64* %25, align 8, !dbg !377
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !377
  store i64 %26, i64* %27, align 8, !dbg !377
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !378
  %29 = load i64* %28, align 8, !dbg !378
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !378
  store i64 %29, i64* %30, align 8, !dbg !378
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !379
  %32 = load i64* %31, align 8, !dbg !379
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !379
  store i64 %32, i64* %33, align 8, !dbg !379
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !380
  %35 = load i64* %34, align 8, !dbg !380
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !380
  store i64 %35, i64* %36, align 8, !dbg !380
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !381
  %38 = load i64* %37, align 8, !dbg !381
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !381
  store i64 %38, i64* %39, align 8, !dbg !381
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !382
  %41 = load i64* %40, align 8, !dbg !382
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !382
  store i64 %41, i64* %42, align 8, !dbg !382
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !383
  %44 = load i64* %43, align 8, !dbg !383
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !383
  store i64 %44, i64* %45, align 8, !dbg !383
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !384
  %47 = load i64* %46, align 8, !dbg !384
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !384
  store i64 %47, i64* %48, align 8, !dbg !384
  ret i32 %0, !dbg !385
}

define i32 @__xstat(i32 %vers, i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !195), !dbg !386
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !196), !dbg !386
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !197), !dbg !386
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !198), !dbg !387
  %0 = call i32 @__fd_stat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !388
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !200), !dbg !388
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !160), !dbg !389
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !161), !dbg !389
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !391
  %2 = load i64* %1, align 8, !dbg !391
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !391
  store i64 %2, i64* %3, align 8, !dbg !391
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !392
  %5 = load i64* %4, align 8, !dbg !392
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !392
  store i64 %5, i64* %6, align 8, !dbg !392
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !393
  %8 = load i32* %7, align 8, !dbg !393
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !393
  store i32 %8, i32* %9, align 8, !dbg !393
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !394
  %11 = load i64* %10, align 8, !dbg !394
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !394
  store i64 %11, i64* %12, align 8, !dbg !394
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !395
  %14 = load i32* %13, align 4, !dbg !395
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !395
  store i32 %14, i32* %15, align 4, !dbg !395
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !396
  %17 = load i32* %16, align 8, !dbg !396
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !396
  store i32 %17, i32* %18, align 8, !dbg !396
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !397
  %20 = load i64* %19, align 8, !dbg !397
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !397
  store i64 %20, i64* %21, align 8, !dbg !397
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !398
  %23 = load i64* %22, align 8, !dbg !398
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !398
  store i64 %23, i64* %24, align 8, !dbg !398
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !399
  %26 = load i64* %25, align 8, !dbg !399
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !399
  store i64 %26, i64* %27, align 8, !dbg !399
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !400
  %29 = load i64* %28, align 8, !dbg !400
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !400
  store i64 %29, i64* %30, align 8, !dbg !400
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !401
  %32 = load i64* %31, align 8, !dbg !401
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !401
  store i64 %32, i64* %33, align 8, !dbg !401
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !402
  %35 = load i64* %34, align 8, !dbg !402
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !402
  store i64 %35, i64* %36, align 8, !dbg !402
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !403
  %38 = load i64* %37, align 8, !dbg !403
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !403
  store i64 %38, i64* %39, align 8, !dbg !403
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !404
  %41 = load i64* %40, align 8, !dbg !404
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !404
  store i64 %41, i64* %42, align 8, !dbg !404
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !405
  %44 = load i64* %43, align 8, !dbg !405
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !405
  store i64 %44, i64* %45, align 8, !dbg !405
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !406
  %47 = load i64* %46, align 8, !dbg !406
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !406
  store i64 %47, i64* %48, align 8, !dbg !406
  ret i32 %0, !dbg !407
}

define weak i64 @lseek64(i32 %fd, i64 %off, i32 %whence) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !201), !dbg !408
  tail call void @llvm.dbg.value(metadata !{i64 %off}, i64 0, metadata !202), !dbg !408
  tail call void @llvm.dbg.value(metadata !{i32 %whence}, i64 0, metadata !203), !dbg !408
  %0 = tail call i64 @__fd_lseek(i32 %fd, i64 %off, i32 %whence) nounwind, !dbg !409
  ret i64 %0, !dbg !409
}

declare i64 @__fd_lseek(i32, i64, i32)

define i64 @lseek(i32 %fd, i64 %off, i32 %whence) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !204), !dbg !411
  tail call void @llvm.dbg.value(metadata !{i64 %off}, i64 0, metadata !205), !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %whence}, i64 0, metadata !206), !dbg !411
  %0 = tail call i64 @__fd_lseek(i32 %fd, i64 %off, i32 %whence) nounwind, !dbg !412
  ret i64 %0, !dbg !412
}

define weak i32 @open64(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !207), !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !208), !dbg !414
  call void @llvm.dbg.value(metadata !258, i64 0, metadata !209), !dbg !415
  %0 = and i32 %flags, 64, !dbg !416
  %1 = icmp eq i32 %0, 0, !dbg !416
  br i1 %1, label %bb8, label %bb, !dbg !416

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !212), !dbg !417
  %ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !418
  call void @llvm.va_start(i8* %ap12), !dbg !418
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !419
  %3 = load i32* %2, align 8, !dbg !419
  %4 = icmp ugt i32 %3, 47, !dbg !419
  br i1 %4, label %bb4, label %bb3, !dbg !419

bb3:                                              ; preds = %bb
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !419
  %6 = load i8** %5, align 8, !dbg !419
  %tmp = zext i32 %3 to i64
  %7 = ptrtoint i8* %6 to i64, !dbg !419
  %8 = add i64 %7, %tmp, !dbg !419
  %9 = inttoptr i64 %8 to i8*, !dbg !419
  %10 = add i32 %3, 8, !dbg !419
  store i32 %10, i32* %2, align 8, !dbg !419
  br label %bb5, !dbg !419

bb4:                                              ; preds = %bb
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !419
  %12 = load i8** %11, align 8, !dbg !419
  %13 = getelementptr inbounds i8* %12, i64 8, !dbg !419
  store i8* %13, i8** %11, align 8, !dbg !419
  br label %bb5, !dbg !419

bb5:                                              ; preds = %bb4, %bb3
  %addr.32.0 = phi i8* [ %12, %bb4 ], [ %9, %bb3 ]
  %14 = bitcast i8* %addr.32.0 to i32*, !dbg !419
  %15 = load i32* %14, align 4, !dbg !419
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !209), !dbg !419
  call void @llvm.va_end(i8* %ap12), !dbg !420
  br label %bb8, !dbg !420

bb8:                                              ; preds = %entry, %bb5
  %mode.0 = phi i32 [ %15, %bb5 ], [ 0, %entry ]
  %16 = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) nounwind, !dbg !421
  ret i32 %16, !dbg !421
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare i32 @__fd_open(i8*, i32, i32)

define i64 @getdents(i32 %fd, %struct.dirent* %dirp, i64 %nbytes) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !233), !dbg !422
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %dirp}, i64 0, metadata !234), !dbg !422
  tail call void @llvm.dbg.value(metadata !{i64 %nbytes}, i64 0, metadata !235), !dbg !422
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %dirp}, i64 0, metadata !236), !dbg !423
  %0 = trunc i64 %nbytes to i32, !dbg !424
  %1 = tail call i32 @__fd_getdents(i32 %fd, %struct.dirent* %dirp, i32 %0) nounwind, !dbg !424
  %2 = sext i32 %1 to i64, !dbg !424
  tail call void @llvm.dbg.value(metadata !{i64 %2}, i64 0, metadata !247), !dbg !424
  %3 = icmp sgt i32 %1, 0, !dbg !425
  br i1 %3, label %bb, label %bb3, !dbg !425

bb:                                               ; preds = %entry
  %4 = bitcast %struct.dirent* %dirp to i8*, !dbg !426
  %5 = getelementptr inbounds i8* %4, i64 %2, !dbg !426
  %6 = bitcast i8* %5 to %struct.dirent*, !dbg !426
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %6}, i64 0, metadata !248), !dbg !426
  %7 = icmp ugt %struct.dirent* %6, %dirp, !dbg !427
  br i1 %7, label %bb1, label %bb3, !dbg !427

bb1:                                              ; preds = %bb, %bb1
  %dp64.05 = phi %struct.dirent* [ %13, %bb1 ], [ %dirp, %bb ]
  %8 = getelementptr inbounds %struct.dirent* %dp64.05, i64 0, i32 2, !dbg !428
  %9 = bitcast %struct.dirent* %dp64.05 to i8*, !dbg !429
  %10 = load i16* %8, align 8, !dbg !429
  %11 = zext i16 %10 to i64, !dbg !429
  %12 = getelementptr inbounds i8* %9, i64 %11, !dbg !429
  %13 = bitcast i8* %12 to %struct.dirent*, !dbg !429
  %14 = icmp ult i8* %12, %5, !dbg !427
  br i1 %14, label %bb1, label %bb3, !dbg !427

bb3:                                              ; preds = %bb, %bb1, %entry
  ret i64 %2, !dbg !430
}

declare i32 @__fd_getdents(i32, %struct.dirent*, i32)

define i32 @statfs(i8* %path, %struct.statfs* %buf32) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !253), !dbg !431
  tail call void @llvm.dbg.value(metadata !{%struct.statfs* %buf32}, i64 0, metadata !254), !dbg !431
  %0 = tail call i32 @__fd_statfs(i8* %path, %struct.statfs* %buf32) nounwind, !dbg !432
  ret i32 %0, !dbg !432
}

declare i32 @__fd_statfs(i8*, %struct.statfs*)

define i32 @ftruncate(i32 %fd, i64 %length) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !255), !dbg !434
  tail call void @llvm.dbg.value(metadata !{i64 %length}, i64 0, metadata !256), !dbg !434
  %0 = tail call i32 @__fd_ftruncate(i32 %fd, i64 %length) nounwind, !dbg !435
  ret i32 %0, !dbg !435
}

declare i32 @__fd_ftruncate(i32, i64)

!llvm.dbg.sp = !{!0, !69, !72, !75, !78, !84, !87, !90, !91, !92, !93, !98, !102, !105, !106, !125, !157}
!llvm.dbg.lv.__stat64_to_stat = !{!160, !161}
!llvm.dbg.lv.fstat64 = !{!162, !163}
!llvm.dbg.lv.fstat = !{!164, !165, !166, !168}
!llvm.dbg.lv.__fxstat = !{!169, !170, !171, !172, !174}
!llvm.dbg.lv.lstat64 = !{!175, !176}
!llvm.dbg.lv.lstat = !{!177, !178, !179, !181}
!llvm.dbg.lv.__lxstat = !{!182, !183, !184, !185, !187}
!llvm.dbg.lv.stat64 = !{!188, !189}
!llvm.dbg.lv.stat = !{!190, !191, !192, !194}
!llvm.dbg.lv.__xstat = !{!195, !196, !197, !198, !200}
!llvm.dbg.lv.lseek64 = !{!201, !202, !203}
!llvm.dbg.lv.lseek = !{!204, !205, !206}
!llvm.dbg.lv.open64 = !{!207, !208, !209, !212}
!llvm.dbg.lv.open = !{!227, !228, !229, !231}
!llvm.dbg.lv.getdents = !{!233, !234, !235, !236, !247, !248, !250, !252}
!llvm.dbg.lv.statfs = !{!253, !254}
!llvm.dbg.lv.ftruncate = !{!255, !256}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__stat64_to_stat", metadata !"__stat64_to_stat", metadata !"", metadata !1, i32 30, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd_32.c", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd_32.c", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5, metadata !49}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !7, i32 30, i64 1152, i64 64, i64 0, i32 0, null, metadata !8, i32 0, null} ; [ DW_TAG_structure_type ]
!7 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{metadata !9, metadata !14, metadata !16, metadata !18, metadata !21, metadata !23, metadata !25, metadata !27, metadata !28, metadata !31, metadata !33, metadata !35, metadata !43, metadata !44, metadata !45}
!9 = metadata !{i32 589837, metadata !6, metadata !"st_dev", metadata !10, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!10 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 589846, metadata !12, metadata !"__dev_t", metadata !12, i32 125, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!14 = metadata !{i32 589837, metadata !6, metadata !"st_ino", metadata !10, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 589846, metadata !12, metadata !"__ino64_t", metadata !12, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!16 = metadata !{i32 589837, metadata !6, metadata !"st_nlink", metadata !10, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ]
!17 = metadata !{i32 589846, metadata !12, metadata !"__nlink_t", metadata !12, i32 131, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 589837, metadata !6, metadata !"st_mode", metadata !10, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ]
!19 = metadata !{i32 589846, metadata !12, metadata !"__mode_t", metadata !12, i32 130, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 589837, metadata !6, metadata !"st_uid", metadata !10, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 589846, metadata !12, metadata !"__uid_t", metadata !12, i32 126, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 589837, metadata !6, metadata !"st_gid", metadata !10, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ]
!24 = metadata !{i32 589846, metadata !12, metadata !"__gid_t", metadata !12, i32 127, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 589837, metadata !6, metadata !"__pad0", metadata !10, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 589837, metadata !6, metadata !"st_rdev", metadata !10, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ]
!28 = metadata !{i32 589837, metadata !6, metadata !"st_size", metadata !10, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 589846, metadata !12, metadata !"__off_t", metadata !12, i32 132, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 589837, metadata !6, metadata !"st_blksize", metadata !10, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ]
!32 = metadata !{i32 589846, metadata !12, metadata !"__blksize_t", metadata !12, i32 158, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!33 = metadata !{i32 589837, metadata !6, metadata !"st_blocks", metadata !10, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ]
!34 = metadata !{i32 589846, metadata !12, metadata !"__blkcnt64_t", metadata !12, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 589837, metadata !6, metadata !"st_atim", metadata !10, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ]
!36 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !37, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !38, i32 0, null} ; [ DW_TAG_structure_type ]
!37 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!38 = metadata !{metadata !39, metadata !41}
!39 = metadata !{i32 589837, metadata !36, metadata !"tv_sec", metadata !37, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ]
!40 = metadata !{i32 589846, metadata !12, metadata !"__time_t", metadata !12, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!41 = metadata !{i32 589837, metadata !36, metadata !"tv_nsec", metadata !37, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ]
!42 = metadata !{i32 589846, metadata !12, metadata !"__syscall_slong_t", metadata !12, i32 177, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!43 = metadata !{i32 589837, metadata !6, metadata !"st_mtim", metadata !10, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ]
!44 = metadata !{i32 589837, metadata !6, metadata !"st_ctim", metadata !10, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !36} ; [ DW_TAG_member ]
!45 = metadata !{i32 589837, metadata !6, metadata !"__glibc_reserved", metadata !10, i32 164, i64 192, i64 64, i64 960, i32 0, metadata !46} ; [ DW_TAG_member ]
!46 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !42, metadata !47, i32 0, null} ; [ DW_TAG_array_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!49 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 589843, metadata !1, metadata !"stat", metadata !10, i32 47, i64 1152, i64 64, i64 0, i32 0, null, metadata !51, i32 0, null} ; [ DW_TAG_structure_type ]
!51 = metadata !{metadata !52, metadata !53, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !65, metadata !66, metadata !67, metadata !68}
!52 = metadata !{i32 589837, metadata !50, metadata !"st_dev", metadata !10, i32 48, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!53 = metadata !{i32 589837, metadata !50, metadata !"st_ino", metadata !10, i32 53, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 589846, metadata !12, metadata !"__ino_t", metadata !12, i32 128, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!55 = metadata !{i32 589837, metadata !50, metadata !"st_nlink", metadata !10, i32 61, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ]
!56 = metadata !{i32 589837, metadata !50, metadata !"st_mode", metadata !10, i32 62, i64 32, i64 32, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ]
!57 = metadata !{i32 589837, metadata !50, metadata !"st_uid", metadata !10, i32 64, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ]
!58 = metadata !{i32 589837, metadata !50, metadata !"st_gid", metadata !10, i32 65, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ]
!59 = metadata !{i32 589837, metadata !50, metadata !"__pad0", metadata !10, i32 67, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ]
!60 = metadata !{i32 589837, metadata !50, metadata !"st_rdev", metadata !10, i32 69, i64 64, i64 64, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ]
!61 = metadata !{i32 589837, metadata !50, metadata !"st_size", metadata !10, i32 74, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ]
!62 = metadata !{i32 589837, metadata !50, metadata !"st_blksize", metadata !10, i32 78, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ]
!63 = metadata !{i32 589837, metadata !50, metadata !"st_blocks", metadata !10, i32 80, i64 64, i64 64, i64 512, i32 0, metadata !64} ; [ DW_TAG_member ]
!64 = metadata !{i32 589846, metadata !12, metadata !"__blkcnt_t", metadata !12, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 589837, metadata !50, metadata !"st_atim", metadata !10, i32 91, i64 128, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ]
!66 = metadata !{i32 589837, metadata !50, metadata !"st_mtim", metadata !10, i32 92, i64 128, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ]
!67 = metadata !{i32 589837, metadata !50, metadata !"st_ctim", metadata !10, i32 93, i64 128, i64 64, i64 832, i32 0, metadata !36} ; [ DW_TAG_member ]
!68 = metadata !{i32 589837, metadata !50, metadata !"__glibc_reserved", metadata !10, i32 106, i64 192, i64 64, i64 960, i32 0, metadata !46} ; [ DW_TAG_member ]
!69 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat64", metadata !"fstat64", metadata !"fstat64", metadata !1, i32 199, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @fstat64} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, null} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{metadata !26, metadata !26, metadata !5}
!72 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat", metadata !"fstat", metadata !"fstat", metadata !1, i32 106, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @fstat} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{metadata !26, metadata !26, metadata !49}
!75 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fxstat", metadata !"__fxstat", metadata !"__fxstat", metadata !1, i32 99, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.stat*)* @__fxstat} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !26, metadata !26, metadata !26, metadata !49}
!78 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat64", metadata !"lstat64", metadata !"lstat64", metadata !1, i32 194, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @lstat64} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, null} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{metadata !26, metadata !81, metadata !5}
!81 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ]
!82 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !83} ; [ DW_TAG_const_type ]
!83 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!84 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat", metadata !"lstat", metadata !"lstat", metadata !1, i32 92, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @lstat} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, null} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{metadata !26, metadata !81, metadata !49}
!87 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__lxstat", metadata !"__lxstat", metadata !"__lxstat", metadata !1, i32 85, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @__lxstat} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, null} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !26, metadata !26, metadata !81, metadata !49}
!90 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat64", metadata !"stat64", metadata !"stat64", metadata !1, i32 189, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @stat64} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat", metadata !"stat", metadata !"stat", metadata !1, i32 78, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @stat} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__xstat", metadata !"__xstat", metadata !"__xstat", metadata !1, i32 71, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @__xstat} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek64", metadata !"lseek64", metadata !"lseek64", metadata !1, i32 184, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek64} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, null} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{metadata !96, metadata !26, metadata !96, metadata !26}
!96 = metadata !{i32 589846, metadata !97, metadata !"off64_t", metadata !97, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!97 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!98 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek", metadata !"lseek", metadata !"lseek", metadata !1, i32 67, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, null} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !101, metadata !26, metadata !101, metadata !26}
!101 = metadata !{i32 589846, metadata !97, metadata !"off_t", metadata !97, i32 93, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!102 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open64", metadata !"open64", metadata !"open64", metadata !1, i32 169, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open64} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, null} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{metadata !26, metadata !81, metadata !26}
!105 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open", metadata !"open", metadata !"open", metadata !1, i32 53, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getdents", metadata !"getdents", metadata !"getdents", metadata !1, i32 142, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.dirent*, i64)* @getdents} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, null} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{metadata !109, metadata !26, metadata !110, metadata !124}
!109 = metadata !{i32 589846, metadata !97, metadata !"ssize_t", metadata !97, i32 115, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!110 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ]
!111 = metadata !{i32 589843, metadata !1, metadata !"dirent", metadata !112, i32 23, i64 2240, i64 64, i64 0, i32 0, null, metadata !113, i32 0, null} ; [ DW_TAG_structure_type ]
!112 = metadata !{i32 589865, metadata !"dirent.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !118, metadata !120}
!114 = metadata !{i32 589837, metadata !111, metadata !"d_ino", metadata !112, i32 25, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ]
!115 = metadata !{i32 589837, metadata !111, metadata !"d_off", metadata !112, i32 26, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ]
!116 = metadata !{i32 589837, metadata !111, metadata !"d_reclen", metadata !112, i32 31, i64 16, i64 16, i64 128, i32 0, metadata !117} ; [ DW_TAG_member ]
!117 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!118 = metadata !{i32 589837, metadata !111, metadata !"d_type", metadata !112, i32 32, i64 8, i64 8, i64 144, i32 0, metadata !119} ; [ DW_TAG_member ]
!119 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!120 = metadata !{i32 589837, metadata !111, metadata !"d_name", metadata !112, i32 33, i64 2048, i64 8, i64 152, i32 0, metadata !121} ; [ DW_TAG_member ]
!121 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !83, metadata !122, i32 0, null} ; [ DW_TAG_array_type ]
!122 = metadata !{metadata !123}
!123 = metadata !{i32 589857, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!124 = metadata !{i32 589846, metadata !97, metadata !"size_t", metadata !97, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!125 = metadata !{i32 589870, i32 0, metadata !1, metadata !"statfs", metadata !"statfs", metadata !"statfs", metadata !1, i32 117, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @statfs} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, null} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{metadata !26, metadata !81, metadata !128}
!128 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ]
!129 = metadata !{i32 589843, metadata !1, metadata !"statfs", metadata !130, i32 25, i64 960, i64 64, i64 0, i32 0, null, metadata !131, i32 0, null} ; [ DW_TAG_structure_type ]
!130 = metadata !{i32 589865, metadata !"statfs.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!131 = metadata !{metadata !132, metadata !134, metadata !135, metadata !137, metadata !138, metadata !139, metadata !141, metadata !142, metadata !150, metadata !151, metadata !152, metadata !153}
!132 = metadata !{i32 589837, metadata !129, metadata !"f_type", metadata !130, i32 26, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_member ]
!133 = metadata !{i32 589846, metadata !12, metadata !"__fsword_t", metadata !12, i32 172, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!134 = metadata !{i32 589837, metadata !129, metadata !"f_bsize", metadata !130, i32 27, i64 64, i64 64, i64 64, i32 0, metadata !133} ; [ DW_TAG_member ]
!135 = metadata !{i32 589837, metadata !129, metadata !"f_blocks", metadata !130, i32 29, i64 64, i64 64, i64 128, i32 0, metadata !136} ; [ DW_TAG_member ]
!136 = metadata !{i32 589846, metadata !12, metadata !"__fsblkcnt_t", metadata !12, i32 163, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!137 = metadata !{i32 589837, metadata !129, metadata !"f_bfree", metadata !130, i32 30, i64 64, i64 64, i64 192, i32 0, metadata !136} ; [ DW_TAG_member ]
!138 = metadata !{i32 589837, metadata !129, metadata !"f_bavail", metadata !130, i32 31, i64 64, i64 64, i64 256, i32 0, metadata !136} ; [ DW_TAG_member ]
!139 = metadata !{i32 589837, metadata !129, metadata !"f_files", metadata !130, i32 32, i64 64, i64 64, i64 320, i32 0, metadata !140} ; [ DW_TAG_member ]
!140 = metadata !{i32 589846, metadata !12, metadata !"__fsfilcnt_t", metadata !12, i32 167, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!141 = metadata !{i32 589837, metadata !129, metadata !"f_ffree", metadata !130, i32 33, i64 64, i64 64, i64 384, i32 0, metadata !140} ; [ DW_TAG_member ]
!142 = metadata !{i32 589837, metadata !129, metadata !"f_fsid", metadata !130, i32 41, i64 64, i64 32, i64 448, i32 0, metadata !143} ; [ DW_TAG_member ]
!143 = metadata !{i32 589846, metadata !12, metadata !"__fsid_t", metadata !12, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ]
!144 = metadata !{i32 589843, metadata !1, metadata !"", metadata !12, i32 134, i64 64, i64 32, i64 0, i32 0, null, metadata !145, i32 0, null} ; [ DW_TAG_structure_type ]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 589837, metadata !144, metadata !"__val", metadata !12, i32 134, i64 64, i64 32, i64 0, i32 0, metadata !147} ; [ DW_TAG_member ]
!147 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !26, metadata !148, i32 0, null} ; [ DW_TAG_array_type ]
!148 = metadata !{metadata !149}
!149 = metadata !{i32 589857, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!150 = metadata !{i32 589837, metadata !129, metadata !"f_namelen", metadata !130, i32 42, i64 64, i64 64, i64 512, i32 0, metadata !133} ; [ DW_TAG_member ]
!151 = metadata !{i32 589837, metadata !129, metadata !"f_frsize", metadata !130, i32 43, i64 64, i64 64, i64 576, i32 0, metadata !133} ; [ DW_TAG_member ]
!152 = metadata !{i32 589837, metadata !129, metadata !"f_flags", metadata !130, i32 44, i64 64, i64 64, i64 640, i32 0, metadata !133} ; [ DW_TAG_member ]
!153 = metadata !{i32 589837, metadata !129, metadata !"f_spare", metadata !130, i32 45, i64 256, i64 64, i64 704, i32 0, metadata !154} ; [ DW_TAG_member ]
!154 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 64, i64 0, i32 0, metadata !133, metadata !155, i32 0, null} ; [ DW_TAG_array_type ]
!155 = metadata !{metadata !156}
!156 = metadata !{i32 589857, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!157 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ftruncate", metadata !"ftruncate", metadata !"ftruncate", metadata !1, i32 113, metadata !158, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @ftruncate} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, null} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{metadata !26, metadata !26, metadata !101}
!160 = metadata !{i32 590081, metadata !0, metadata !"a", metadata !1, i32 30, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 590081, metadata !0, metadata !"b", metadata !1, i32 30, metadata !49, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 590081, metadata !69, metadata !"fd", metadata !1, i32 199, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 590081, metadata !69, metadata !"buf", metadata !1, i32 199, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 590081, metadata !72, metadata !"fd", metadata !1, i32 106, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!165 = metadata !{i32 590081, metadata !72, metadata !"buf", metadata !1, i32 106, metadata !49, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 590080, metadata !167, metadata !"tmp", metadata !1, i32 107, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 589835, metadata !72, i32 106, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 590080, metadata !167, metadata !"res", metadata !1, i32 108, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 590081, metadata !75, metadata !"vers", metadata !1, i32 99, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 590081, metadata !75, metadata !"fd", metadata !1, i32 99, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 590081, metadata !75, metadata !"buf", metadata !1, i32 99, metadata !49, i32 0} ; [ DW_TAG_arg_variable ]
!172 = metadata !{i32 590080, metadata !173, metadata !"tmp", metadata !1, i32 100, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 589835, metadata !75, i32 99, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 590080, metadata !173, metadata !"res", metadata !1, i32 101, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 590081, metadata !78, metadata !"path", metadata !1, i32 194, metadata !81, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 590081, metadata !78, metadata !"buf", metadata !1, i32 194, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 590081, metadata !84, metadata !"path", metadata !1, i32 92, metadata !81, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 590081, metadata !84, metadata !"buf", metadata !1, i32 92, metadata !49, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 590080, metadata !180, metadata !"tmp", metadata !1, i32 93, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 589835, metadata !84, i32 92, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 590080, metadata !180, metadata !"res", metadata !1, i32 94, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 590081, metadata !87, metadata !"vers", metadata !1, i32 85, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!183 = metadata !{i32 590081, metadata !87, metadata !"path", metadata !1, i32 85, metadata !81, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 590081, metadata !87, metadata !"buf", metadata !1, i32 85, metadata !49, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 590080, metadata !186, metadata !"tmp", metadata !1, i32 86, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 589835, metadata !87, i32 85, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 590080, metadata !186, metadata !"res", metadata !1, i32 87, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 590081, metadata !90, metadata !"path", metadata !1, i32 189, metadata !81, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 590081, metadata !90, metadata !"buf", metadata !1, i32 189, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 590081, metadata !91, metadata !"path", metadata !1, i32 78, metadata !81, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 590081, metadata !91, metadata !"buf", metadata !1, i32 78, metadata !49, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 590080, metadata !193, metadata !"tmp", metadata !1, i32 79, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 589835, metadata !91, i32 78, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 590080, metadata !193, metadata !"res", metadata !1, i32 80, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 590081, metadata !92, metadata !"vers", metadata !1, i32 71, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!196 = metadata !{i32 590081, metadata !92, metadata !"path", metadata !1, i32 71, metadata !81, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 590081, metadata !92, metadata !"buf", metadata !1, i32 71, metadata !49, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 590080, metadata !199, metadata !"tmp", metadata !1, i32 72, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 589835, metadata !92, i32 71, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 590080, metadata !199, metadata !"res", metadata !1, i32 73, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 590081, metadata !93, metadata !"fd", metadata !1, i32 184, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 590081, metadata !93, metadata !"off", metadata !1, i32 184, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 590081, metadata !93, metadata !"whence", metadata !1, i32 184, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 590081, metadata !98, metadata !"fd", metadata !1, i32 67, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 590081, metadata !98, metadata !"off", metadata !1, i32 67, metadata !101, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 590081, metadata !98, metadata !"whence", metadata !1, i32 67, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!207 = metadata !{i32 590081, metadata !102, metadata !"pathname", metadata !1, i32 169, metadata !81, i32 0} ; [ DW_TAG_arg_variable ]
!208 = metadata !{i32 590081, metadata !102, metadata !"flags", metadata !1, i32 169, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 590080, metadata !210, metadata !"mode", metadata !1, i32 170, metadata !211, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 589835, metadata !102, i32 169, i32 0, metadata !1, i32 12} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 589846, metadata !97, metadata !"mode_t", metadata !97, i32 75, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!212 = metadata !{i32 590080, metadata !213, metadata !"ap", metadata !1, i32 174, metadata !214, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 589835, metadata !210, i32 175, i32 0, metadata !1, i32 13} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 589846, metadata !215, metadata !"va_list", metadata !215, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ]
!215 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!216 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !217, metadata !225, i32 0, null} ; [ DW_TAG_array_type ]
!217 = metadata !{i32 589843, metadata !1, metadata !"__va_list_tag", metadata !218, i32 0, i64 192, i64 64, i64 0, i32 0, null, metadata !219, i32 0, null} ; [ DW_TAG_structure_type ]
!218 = metadata !{i32 589865, metadata !"<built-in>", metadata !"/home/klee/zesti-2.9/build/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!219 = metadata !{metadata !220, metadata !221, metadata !222, metadata !224}
!220 = metadata !{i32 589837, metadata !217, metadata !"gp_offset", metadata !218, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!221 = metadata !{i32 589837, metadata !217, metadata !"fp_offset", metadata !218, i32 0, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ]
!222 = metadata !{i32 589837, metadata !217, metadata !"overflow_arg_area", metadata !218, i32 0, i64 64, i64 64, i64 64, i32 0, metadata !223} ; [ DW_TAG_member ]
!223 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!224 = metadata !{i32 589837, metadata !217, metadata !"reg_save_area", metadata !218, i32 0, i64 64, i64 64, i64 128, i32 0, metadata !223} ; [ DW_TAG_member ]
!225 = metadata !{metadata !226}
!226 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!227 = metadata !{i32 590081, metadata !105, metadata !"pathname", metadata !1, i32 53, metadata !81, i32 0} ; [ DW_TAG_arg_variable ]
!228 = metadata !{i32 590081, metadata !105, metadata !"flags", metadata !1, i32 53, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!229 = metadata !{i32 590080, metadata !230, metadata !"mode", metadata !1, i32 54, metadata !211, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 589835, metadata !105, i32 53, i32 0, metadata !1, i32 14} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 590080, metadata !232, metadata !"ap", metadata !1, i32 58, metadata !214, i32 0} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 589835, metadata !230, i32 59, i32 0, metadata !1, i32 15} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 590081, metadata !106, metadata !"fd", metadata !1, i32 142, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 590081, metadata !106, metadata !"dirp", metadata !1, i32 142, metadata !110, i32 0} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 590081, metadata !106, metadata !"nbytes", metadata !1, i32 142, metadata !124, i32 0} ; [ DW_TAG_arg_variable ]
!236 = metadata !{i32 590080, metadata !237, metadata !"dp64", metadata !1, i32 143, metadata !238, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 589835, metadata !106, i32 142, i32 0, metadata !1, i32 16} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !239} ; [ DW_TAG_pointer_type ]
!239 = metadata !{i32 589843, metadata !1, metadata !"dirent64", metadata !112, i32 38, i64 2240, i64 64, i64 0, i32 0, null, metadata !240, i32 0, null} ; [ DW_TAG_structure_type ]
!240 = metadata !{metadata !241, metadata !242, metadata !244, metadata !245, metadata !246}
!241 = metadata !{i32 589837, metadata !239, metadata !"d_ino", metadata !112, i32 39, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!242 = metadata !{i32 589837, metadata !239, metadata !"d_off", metadata !112, i32 40, i64 64, i64 64, i64 64, i32 0, metadata !243} ; [ DW_TAG_member ]
!243 = metadata !{i32 589846, metadata !12, metadata !"__off64_t", metadata !12, i32 133, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!244 = metadata !{i32 589837, metadata !239, metadata !"d_reclen", metadata !112, i32 41, i64 16, i64 16, i64 128, i32 0, metadata !117} ; [ DW_TAG_member ]
!245 = metadata !{i32 589837, metadata !239, metadata !"d_type", metadata !112, i32 42, i64 8, i64 8, i64 144, i32 0, metadata !119} ; [ DW_TAG_member ]
!246 = metadata !{i32 589837, metadata !239, metadata !"d_name", metadata !112, i32 43, i64 2048, i64 8, i64 152, i32 0, metadata !121} ; [ DW_TAG_member ]
!247 = metadata !{i32 590080, metadata !237, metadata !"res", metadata !1, i32 144, metadata !109, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 590080, metadata !249, metadata !"end", metadata !1, i32 147, metadata !238, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 589835, metadata !237, i32 147, i32 0, metadata !1, i32 17} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 590080, metadata !251, metadata !"dp", metadata !1, i32 149, metadata !110, i32 0} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 589835, metadata !249, i32 149, i32 0, metadata !1, i32 18} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 590080, metadata !251, metadata !"name_len", metadata !1, i32 150, metadata !124, i32 0} ; [ DW_TAG_auto_variable ]
!253 = metadata !{i32 590081, metadata !125, metadata !"path", metadata !1, i32 117, metadata !81, i32 0} ; [ DW_TAG_arg_variable ]
!254 = metadata !{i32 590081, metadata !125, metadata !"buf32", metadata !1, i32 117, metadata !128, i32 0} ; [ DW_TAG_arg_variable ]
!255 = metadata !{i32 590081, metadata !157, metadata !"fd", metadata !1, i32 113, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!256 = metadata !{i32 590081, metadata !157, metadata !"length", metadata !1, i32 113, metadata !101, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 53, i32 0, metadata !105, null}
!258 = metadata !{i32 0}
!259 = metadata !{i32 54, i32 0, metadata !230, null}
!260 = metadata !{i32 56, i32 0, metadata !230, null}
!261 = metadata !{i32 58, i32 0, metadata !232, null}
!262 = metadata !{i32 59, i32 0, metadata !232, null}
!263 = metadata !{i32 60, i32 0, metadata !232, null}
!264 = metadata !{i32 61, i32 0, metadata !232, null}
!265 = metadata !{i32 64, i32 0, metadata !230, null}
!266 = metadata !{i32 199, i32 0, metadata !69, null}
!267 = metadata !{i32 200, i32 0, metadata !268, null}
!268 = metadata !{i32 589835, metadata !69, i32 199, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 106, i32 0, metadata !72, null}
!270 = metadata !{i32 107, i32 0, metadata !167, null}
!271 = metadata !{i32 108, i32 0, metadata !167, null}
!272 = metadata !{i32 30, i32 0, metadata !0, metadata !273}
!273 = metadata !{i32 109, i32 0, metadata !167, null}
!274 = metadata !{i32 31, i32 0, metadata !275, metadata !273}
!275 = metadata !{i32 589835, metadata !0, i32 30, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 32, i32 0, metadata !275, metadata !273}
!277 = metadata !{i32 33, i32 0, metadata !275, metadata !273}
!278 = metadata !{i32 34, i32 0, metadata !275, metadata !273}
!279 = metadata !{i32 35, i32 0, metadata !275, metadata !273}
!280 = metadata !{i32 36, i32 0, metadata !275, metadata !273}
!281 = metadata !{i32 37, i32 0, metadata !275, metadata !273}
!282 = metadata !{i32 38, i32 0, metadata !275, metadata !273}
!283 = metadata !{i32 39, i32 0, metadata !275, metadata !273}
!284 = metadata !{i32 40, i32 0, metadata !275, metadata !273}
!285 = metadata !{i32 41, i32 0, metadata !275, metadata !273}
!286 = metadata !{i32 42, i32 0, metadata !275, metadata !273}
!287 = metadata !{i32 43, i32 0, metadata !275, metadata !273}
!288 = metadata !{i32 45, i32 0, metadata !275, metadata !273}
!289 = metadata !{i32 46, i32 0, metadata !275, metadata !273}
!290 = metadata !{i32 47, i32 0, metadata !275, metadata !273}
!291 = metadata !{i32 110, i32 0, metadata !167, null}
!292 = metadata !{i32 99, i32 0, metadata !75, null}
!293 = metadata !{i32 100, i32 0, metadata !173, null}
!294 = metadata !{i32 101, i32 0, metadata !173, null}
!295 = metadata !{i32 30, i32 0, metadata !0, metadata !296}
!296 = metadata !{i32 102, i32 0, metadata !173, null}
!297 = metadata !{i32 31, i32 0, metadata !275, metadata !296}
!298 = metadata !{i32 32, i32 0, metadata !275, metadata !296}
!299 = metadata !{i32 33, i32 0, metadata !275, metadata !296}
!300 = metadata !{i32 34, i32 0, metadata !275, metadata !296}
!301 = metadata !{i32 35, i32 0, metadata !275, metadata !296}
!302 = metadata !{i32 36, i32 0, metadata !275, metadata !296}
!303 = metadata !{i32 37, i32 0, metadata !275, metadata !296}
!304 = metadata !{i32 38, i32 0, metadata !275, metadata !296}
!305 = metadata !{i32 39, i32 0, metadata !275, metadata !296}
!306 = metadata !{i32 40, i32 0, metadata !275, metadata !296}
!307 = metadata !{i32 41, i32 0, metadata !275, metadata !296}
!308 = metadata !{i32 42, i32 0, metadata !275, metadata !296}
!309 = metadata !{i32 43, i32 0, metadata !275, metadata !296}
!310 = metadata !{i32 45, i32 0, metadata !275, metadata !296}
!311 = metadata !{i32 46, i32 0, metadata !275, metadata !296}
!312 = metadata !{i32 47, i32 0, metadata !275, metadata !296}
!313 = metadata !{i32 103, i32 0, metadata !173, null}
!314 = metadata !{i32 194, i32 0, metadata !78, null}
!315 = metadata !{i32 195, i32 0, metadata !316, null}
!316 = metadata !{i32 589835, metadata !78, i32 194, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!317 = metadata !{i32 92, i32 0, metadata !84, null}
!318 = metadata !{i32 93, i32 0, metadata !180, null}
!319 = metadata !{i32 94, i32 0, metadata !180, null}
!320 = metadata !{i32 30, i32 0, metadata !0, metadata !321}
!321 = metadata !{i32 95, i32 0, metadata !180, null}
!322 = metadata !{i32 31, i32 0, metadata !275, metadata !321}
!323 = metadata !{i32 32, i32 0, metadata !275, metadata !321}
!324 = metadata !{i32 33, i32 0, metadata !275, metadata !321}
!325 = metadata !{i32 34, i32 0, metadata !275, metadata !321}
!326 = metadata !{i32 35, i32 0, metadata !275, metadata !321}
!327 = metadata !{i32 36, i32 0, metadata !275, metadata !321}
!328 = metadata !{i32 37, i32 0, metadata !275, metadata !321}
!329 = metadata !{i32 38, i32 0, metadata !275, metadata !321}
!330 = metadata !{i32 39, i32 0, metadata !275, metadata !321}
!331 = metadata !{i32 40, i32 0, metadata !275, metadata !321}
!332 = metadata !{i32 41, i32 0, metadata !275, metadata !321}
!333 = metadata !{i32 42, i32 0, metadata !275, metadata !321}
!334 = metadata !{i32 43, i32 0, metadata !275, metadata !321}
!335 = metadata !{i32 45, i32 0, metadata !275, metadata !321}
!336 = metadata !{i32 46, i32 0, metadata !275, metadata !321}
!337 = metadata !{i32 47, i32 0, metadata !275, metadata !321}
!338 = metadata !{i32 96, i32 0, metadata !180, null}
!339 = metadata !{i32 85, i32 0, metadata !87, null}
!340 = metadata !{i32 86, i32 0, metadata !186, null}
!341 = metadata !{i32 87, i32 0, metadata !186, null}
!342 = metadata !{i32 30, i32 0, metadata !0, metadata !343}
!343 = metadata !{i32 88, i32 0, metadata !186, null}
!344 = metadata !{i32 31, i32 0, metadata !275, metadata !343}
!345 = metadata !{i32 32, i32 0, metadata !275, metadata !343}
!346 = metadata !{i32 33, i32 0, metadata !275, metadata !343}
!347 = metadata !{i32 34, i32 0, metadata !275, metadata !343}
!348 = metadata !{i32 35, i32 0, metadata !275, metadata !343}
!349 = metadata !{i32 36, i32 0, metadata !275, metadata !343}
!350 = metadata !{i32 37, i32 0, metadata !275, metadata !343}
!351 = metadata !{i32 38, i32 0, metadata !275, metadata !343}
!352 = metadata !{i32 39, i32 0, metadata !275, metadata !343}
!353 = metadata !{i32 40, i32 0, metadata !275, metadata !343}
!354 = metadata !{i32 41, i32 0, metadata !275, metadata !343}
!355 = metadata !{i32 42, i32 0, metadata !275, metadata !343}
!356 = metadata !{i32 43, i32 0, metadata !275, metadata !343}
!357 = metadata !{i32 45, i32 0, metadata !275, metadata !343}
!358 = metadata !{i32 46, i32 0, metadata !275, metadata !343}
!359 = metadata !{i32 47, i32 0, metadata !275, metadata !343}
!360 = metadata !{i32 89, i32 0, metadata !186, null}
!361 = metadata !{i32 189, i32 0, metadata !90, null}
!362 = metadata !{i32 190, i32 0, metadata !363, null}
!363 = metadata !{i32 589835, metadata !90, i32 189, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!364 = metadata !{i32 78, i32 0, metadata !91, null}
!365 = metadata !{i32 79, i32 0, metadata !193, null}
!366 = metadata !{i32 80, i32 0, metadata !193, null}
!367 = metadata !{i32 30, i32 0, metadata !0, metadata !368}
!368 = metadata !{i32 81, i32 0, metadata !193, null}
!369 = metadata !{i32 31, i32 0, metadata !275, metadata !368}
!370 = metadata !{i32 32, i32 0, metadata !275, metadata !368}
!371 = metadata !{i32 33, i32 0, metadata !275, metadata !368}
!372 = metadata !{i32 34, i32 0, metadata !275, metadata !368}
!373 = metadata !{i32 35, i32 0, metadata !275, metadata !368}
!374 = metadata !{i32 36, i32 0, metadata !275, metadata !368}
!375 = metadata !{i32 37, i32 0, metadata !275, metadata !368}
!376 = metadata !{i32 38, i32 0, metadata !275, metadata !368}
!377 = metadata !{i32 39, i32 0, metadata !275, metadata !368}
!378 = metadata !{i32 40, i32 0, metadata !275, metadata !368}
!379 = metadata !{i32 41, i32 0, metadata !275, metadata !368}
!380 = metadata !{i32 42, i32 0, metadata !275, metadata !368}
!381 = metadata !{i32 43, i32 0, metadata !275, metadata !368}
!382 = metadata !{i32 45, i32 0, metadata !275, metadata !368}
!383 = metadata !{i32 46, i32 0, metadata !275, metadata !368}
!384 = metadata !{i32 47, i32 0, metadata !275, metadata !368}
!385 = metadata !{i32 82, i32 0, metadata !193, null}
!386 = metadata !{i32 71, i32 0, metadata !92, null}
!387 = metadata !{i32 72, i32 0, metadata !199, null}
!388 = metadata !{i32 73, i32 0, metadata !199, null}
!389 = metadata !{i32 30, i32 0, metadata !0, metadata !390}
!390 = metadata !{i32 74, i32 0, metadata !199, null}
!391 = metadata !{i32 31, i32 0, metadata !275, metadata !390}
!392 = metadata !{i32 32, i32 0, metadata !275, metadata !390}
!393 = metadata !{i32 33, i32 0, metadata !275, metadata !390}
!394 = metadata !{i32 34, i32 0, metadata !275, metadata !390}
!395 = metadata !{i32 35, i32 0, metadata !275, metadata !390}
!396 = metadata !{i32 36, i32 0, metadata !275, metadata !390}
!397 = metadata !{i32 37, i32 0, metadata !275, metadata !390}
!398 = metadata !{i32 38, i32 0, metadata !275, metadata !390}
!399 = metadata !{i32 39, i32 0, metadata !275, metadata !390}
!400 = metadata !{i32 40, i32 0, metadata !275, metadata !390}
!401 = metadata !{i32 41, i32 0, metadata !275, metadata !390}
!402 = metadata !{i32 42, i32 0, metadata !275, metadata !390}
!403 = metadata !{i32 43, i32 0, metadata !275, metadata !390}
!404 = metadata !{i32 45, i32 0, metadata !275, metadata !390}
!405 = metadata !{i32 46, i32 0, metadata !275, metadata !390}
!406 = metadata !{i32 47, i32 0, metadata !275, metadata !390}
!407 = metadata !{i32 75, i32 0, metadata !199, null}
!408 = metadata !{i32 184, i32 0, metadata !93, null}
!409 = metadata !{i32 185, i32 0, metadata !410, null}
!410 = metadata !{i32 589835, metadata !93, i32 184, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!411 = metadata !{i32 67, i32 0, metadata !98, null}
!412 = metadata !{i32 68, i32 0, metadata !413, null}
!413 = metadata !{i32 589835, metadata !98, i32 67, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!414 = metadata !{i32 169, i32 0, metadata !102, null}
!415 = metadata !{i32 170, i32 0, metadata !210, null}
!416 = metadata !{i32 172, i32 0, metadata !210, null}
!417 = metadata !{i32 174, i32 0, metadata !213, null}
!418 = metadata !{i32 175, i32 0, metadata !213, null}
!419 = metadata !{i32 176, i32 0, metadata !213, null}
!420 = metadata !{i32 177, i32 0, metadata !213, null}
!421 = metadata !{i32 180, i32 0, metadata !210, null}
!422 = metadata !{i32 142, i32 0, metadata !106, null}
!423 = metadata !{i32 143, i32 0, metadata !237, null}
!424 = metadata !{i32 144, i32 0, metadata !237, null}
!425 = metadata !{i32 146, i32 0, metadata !237, null}
!426 = metadata !{i32 147, i32 0, metadata !249, null}
!427 = metadata !{i32 148, i32 0, metadata !249, null}
!428 = metadata !{i32 151, i32 0, metadata !251, null}
!429 = metadata !{i32 157, i32 0, metadata !251, null}
!430 = metadata !{i32 161, i32 0, metadata !237, null}
!431 = metadata !{i32 117, i32 0, metadata !125, null}
!432 = metadata !{i32 136, i32 0, metadata !433, null}
!433 = metadata !{i32 589835, metadata !125, i32 117, i32 0, metadata !1, i32 19} ; [ DW_TAG_lexical_block ]
!434 = metadata !{i32 113, i32 0, metadata !157, null}
!435 = metadata !{i32 114, i32 0, metadata !436, null}
!436 = metadata !{i32 589835, metadata !157, i32 113, i32 0, metadata !1, i32 20} ; [ DW_TAG_lexical_block ]
