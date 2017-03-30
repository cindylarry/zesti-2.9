; ModuleID = '/home/klee/zesti-2.9/runtime/POSIX/fd_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.exe_disk_file_t = type { i32, i8*, i8*, %struct.stat64*, %struct.exe_sockaddr_t* }
%struct.exe_file_system_t = type { i32, i32, i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, i32, %struct.exe_disk_file_t*, i32, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t*, %struct.exe_sockaddr_t, %struct.exe_sockaddr_t*, i32 }
%struct.exe_sockaddr_t = type { %struct.sockaddr_storage*, i32 }
%struct.exe_sym_env_t = type { [32 x %struct.exe_file_t], i32, i32, i32 }
%struct.fill_info_t = type { i32, i32, i32, %union.anon }
%struct.sockaddr_storage = type { i16, i64, [112 x i8] }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.anon = type { i8* }

@__exe_env = unnamed_addr global %struct.exe_sym_env_t { [32 x %struct.exe_file_t] [%struct.exe_file_t { i32 0, i32 5, i64 0, %struct.exe_disk_file_t* null, %struct.exe_sockaddr_t zeroinitializer, %struct.exe_sockaddr_t* null, i32 0 }, %struct.exe_file_t { i32 1, i32 9, i64 0, %struct.exe_disk_file_t* null, %struct.exe_sockaddr_t zeroinitializer, %struct.exe_sockaddr_t* null, i32 0 }, %struct.exe_file_t { i32 2, i32 9, i64 0, %struct.exe_disk_file_t* null, %struct.exe_sockaddr_t zeroinitializer, %struct.exe_sockaddr_t* null, i32 0 }, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer, %struct.exe_file_t zeroinitializer], i32 18, i32 0, i32 0 }, align 32
@.str = private unnamed_addr constant [37 x i8] c"s >= 0 && \22unable to open fill file\22\00", align 8
@.str1 = private unnamed_addr constant [45 x i8] c"/home/klee/zesti-2.9/runtime/POSIX/fd_init.c\00", align 8
@__PRETTY_FUNCTION__.5204 = internal unnamed_addr constant [14 x i8] c"__fill_blocks\00"
@.str2 = private unnamed_addr constant [62 x i8] c"dfile->size >= p->offset + s && \22fill file to big for socket\22\00", align 8
@.str3 = private unnamed_addr constant [27 x i8] c"0 && \22unknown fill method\22\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"-stat\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"contents || size\00", align 1
@__PRETTY_FUNCTION__.5278 = internal unnamed_addr constant [19 x i8] c"__create_new_dfile\00", align 16
@.str6 = private unnamed_addr constant [5 x i8] c"-src\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__exe_fs = common unnamed_addr global %struct.exe_file_system_t zeroinitializer, align 32
@__stream_fill_info = internal unnamed_addr global %struct.fill_info_t* null
@__n_stream_fill_info = internal unnamed_addr global i32 0
@__dgram_fill_info = internal unnamed_addr global %struct.fill_info_t* null
@__n_dgram_fill_info = internal unnamed_addr global i32 0
@.str11 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"read_fail\00", align 1
@.str13 = private unnamed_addr constant [11 x i8] c"write_fail\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"close_fail\00", align 1
@.str15 = private unnamed_addr constant [15 x i8] c"ftruncate_fail\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"getcwd_fail\00", align 1
@.str17 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str18 = private unnamed_addr constant [14 x i8] c"model_version\00", align 1
@.str19 = private unnamed_addr constant [37 x i8] c"malloc returned NULL for sym_streams\00", align 8
@.str20 = private unnamed_addr constant [36 x i8] c"malloc returned NULL for sym_dgrams\00", align 8

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @klee_make_symbolic(i8*, i64, i8*)

define i32 @native_read_file(i8* %path, i32 %flags, i8** nocapture %_buf) nounwind {
entry:
  %s = alloca %struct.stat64, align 8
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !125), !dbg !258
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !126), !dbg !258
  call void @llvm.dbg.value(metadata !{i8** %_buf}, i64 0, metadata !127), !dbg !258
  call void @llvm.dbg.declare(metadata !{%struct.stat64* %s}, metadata !128), !dbg !259
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !120) nounwind, !dbg !260
  call void @llvm.dbg.value(metadata !{%struct.stat64* %s}, i64 0, metadata !121) nounwind, !dbg !260
  %0 = call i32 @__xstat64(i32 1, i8* %path, %struct.stat64* %s) nounwind, !dbg !262
  %1 = icmp eq i32 %0, -1, !dbg !261
  br i1 %1, label %bb8, label %bb1, !dbg !261

bb1:                                              ; preds = %entry
  %2 = getelementptr inbounds %struct.stat64* %s, i64 0, i32 8, !dbg !264
  %3 = load i64* %2, align 8, !dbg !264
  %4 = call noalias i8* @malloc(i64 %3) nounwind, !dbg !264
  store i8* %4, i8** %_buf, align 8, !dbg !264
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !130), !dbg !264
  %5 = call i64 (i64, ...)* @syscall(i64 2, i8* %path, i32 %flags, i32 0) nounwind, !dbg !265
  %6 = trunc i64 %5 to i32, !dbg !265
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !131), !dbg !265
  %7 = icmp eq i32 %6, -1, !dbg !266
  br i1 %7, label %bb8, label %bb6, !dbg !266

bb4:                                              ; preds = %bb6
  %8 = getelementptr inbounds i8* %4, i64 %13, !dbg !267
  %9 = call i64 (i64, ...)* @syscall(i64 0, i32 %6, i8* %8, i64 %14) nounwind, !dbg !267
  %10 = trunc i64 %9 to i32, !dbg !267
  %11 = icmp slt i32 %10, 1, !dbg !268
  br i1 %11, label %bb7, label %bb5, !dbg !268

bb5:                                              ; preds = %bb4
  %12 = add nsw i32 %10, %cnt.0, !dbg !269
  br label %bb6, !dbg !269

bb6:                                              ; preds = %bb1, %bb5
  %cnt.0 = phi i32 [ %12, %bb5 ], [ 0, %bb1 ]
  %13 = sext i32 %cnt.0 to i64, !dbg !270
  %14 = load i64* %2, align 8, !dbg !270
  %15 = icmp slt i64 %13, %14, !dbg !270
  br i1 %15, label %bb4, label %bb7, !dbg !270

bb7:                                              ; preds = %bb6, %bb4
  %16 = call i64 (i64, ...)* @syscall(i64 3, i32 %6) nounwind, !dbg !271
  %17 = load i64* %2, align 8, !dbg !272
  %18 = trunc i64 %17 to i32, !dbg !272
  br label %bb8, !dbg !272

bb8:                                              ; preds = %bb1, %entry, %bb7
  %.0 = phi i32 [ %18, %bb7 ], [ -1, %entry ], [ -1, %bb1 ]
  ret i32 %.0, !dbg !273
}

declare noalias i8* @malloc(i64) nounwind

declare i64 @syscall(i64, ...) nounwind

define void @__fill_blocks(%struct.exe_disk_file_t* nocapture %dfile, %struct.fill_info_t* nocapture %fill_info, i32 %n_fill_info, i32 %do_memset) nounwind {
entry:
  %file = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %dfile}, i64 0, metadata !134), !dbg !274
  call void @llvm.dbg.value(metadata !{%struct.fill_info_t* %fill_info}, i64 0, metadata !135), !dbg !274
  call void @llvm.dbg.value(metadata !{i32 %n_fill_info}, i64 0, metadata !136), !dbg !274
  call void @llvm.dbg.value(metadata !{i32 %do_memset}, i64 0, metadata !137), !dbg !274
  call void @llvm.dbg.declare(metadata !{i8** %file}, metadata !142), !dbg !275
  call void @llvm.dbg.value(metadata !276, i64 0, metadata !138), !dbg !277
  %0 = icmp eq i32 %do_memset, 0, !dbg !278
  %1 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 1, !dbg !279
  %2 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 0, !dbg !280
  br label %bb22, !dbg !277

bb:                                               ; preds = %bb22
  %scevgep40 = getelementptr %struct.fill_info_t* %fill_info, i64 %indvar33, i32 1
  %3 = load i32* %scevgep40, align 4, !dbg !281
  switch i32 %3, label %bb20 [
    i32 0, label %bb1
    i32 1, label %bb6
    i32 2, label %bb11
  ], !dbg !281

bb1:                                              ; preds = %bb
  %4 = load i32* %scevgep39, align 8, !dbg !282
  br i1 %0, label %bb5.preheader, label %bb2, !dbg !278

bb5.preheader:                                    ; preds = %bb1
  %5 = icmp eq i32 %4, 0, !dbg !282
  br i1 %5, label %bb21, label %bb4, !dbg !282

bb2:                                              ; preds = %bb1
  %6 = zext i32 %4 to i64, !dbg !279
  %7 = load i32* %scevgep3738, align 8, !dbg !279
  %8 = load i8** %1, align 8, !dbg !279
  %9 = load i32* %scevgep3536, align 8, !dbg !279
  %10 = zext i32 %9 to i64, !dbg !279
  %11 = getelementptr inbounds i8* %8, i64 %10, !dbg !279
  %12 = trunc i32 %7 to i8, !dbg !279
  call void @llvm.memset.p0i8.i64(i8* %11, i8 %12, i64 %6, i32 1, i1 false), !dbg !279
  br label %bb21, !dbg !279

bb4:                                              ; preds = %bb5.preheader, %bb4
  %j.028 = phi i32 [ %tmp32, %bb4 ], [ 0, %bb5.preheader ]
  %tmp32 = add i32 %j.028, 1
  %13 = load i8** %1, align 8, !dbg !283
  %14 = load i32* %scevgep3536, align 8, !dbg !283
  %15 = add i32 %14, %j.028, !dbg !283
  %16 = zext i32 %15 to i64, !dbg !283
  %17 = getelementptr inbounds i8* %13, i64 %16, !dbg !283
  %18 = load i8* %17, align 1, !dbg !283
  %19 = load i32* %scevgep3738, align 8, !dbg !283
  %20 = trunc i32 %19 to i8, !dbg !283
  %21 = icmp eq i8 %18, %20, !dbg !283
  %22 = zext i1 %21 to i64, !dbg !283
  call void @klee_assume(i64 %22) nounwind, !dbg !283
  %23 = load i32* %scevgep39, align 8, !dbg !282
  %24 = icmp ugt i32 %23, %tmp32, !dbg !282
  br i1 %24, label %bb4, label %bb21, !dbg !282

bb6:                                              ; preds = %bb
  %25 = load i32* %scevgep39, align 8, !dbg !284
  br i1 %0, label %bb10.preheader, label %bb7, !dbg !285

bb10.preheader:                                   ; preds = %bb6
  %26 = icmp eq i32 %25, 0, !dbg !284
  br i1 %26, label %bb21, label %bb9, !dbg !284

bb7:                                              ; preds = %bb6
  %27 = zext i32 %25 to i64, !dbg !286
  %28 = load i8** %scevgep37, align 8, !dbg !286
  %29 = load i8** %1, align 8, !dbg !286
  %30 = load i32* %scevgep3536, align 8, !dbg !286
  %31 = zext i32 %30 to i64, !dbg !286
  %32 = getelementptr inbounds i8* %29, i64 %31, !dbg !286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %28, i64 %27, i32 1, i1 false), !dbg !286
  br label %bb21, !dbg !286

bb9:                                              ; preds = %bb10.preheader, %bb9
  %33 = phi i32 [ %tmp31, %bb9 ], [ 0, %bb10.preheader ]
  %tmp31 = add i32 %33, 1
  %34 = load i8** %1, align 8, !dbg !287
  %35 = load i32* %scevgep3536, align 8, !dbg !287
  %36 = add i32 %35, %33, !dbg !287
  %37 = zext i32 %36 to i64, !dbg !287
  %38 = getelementptr inbounds i8* %34, i64 %37, !dbg !287
  %39 = load i8* %38, align 1, !dbg !287
  %40 = load i8** %scevgep37, align 8, !dbg !287
  %41 = zext i32 %33 to i64, !dbg !287
  %42 = getelementptr inbounds i8* %40, i64 %41, !dbg !287
  %43 = load i8* %42, align 1, !dbg !287
  %44 = icmp eq i8 %39, %43, !dbg !287
  %45 = zext i1 %44 to i64, !dbg !287
  call void @klee_assume(i64 %45) nounwind, !dbg !287
  %46 = load i32* %scevgep39, align 8, !dbg !284
  %47 = icmp ugt i32 %46, %tmp31, !dbg !284
  br i1 %47, label %bb9, label %bb21, !dbg !284

bb11:                                             ; preds = %bb
  %48 = load i8** %scevgep37, align 8, !dbg !288
  %49 = call i32 @native_read_file(i8* %48, i32 0, i8** %file) nounwind, !dbg !288
  %50 = icmp slt i32 %49, 0, !dbg !289
  br i1 %50, label %bb12, label %bb13, !dbg !289

bb12:                                             ; preds = %bb11
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !143), !dbg !290
  call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !141), !dbg !288
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i32 85, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.5204, i64 0, i64 0)) noreturn nounwind, !dbg !289
  unreachable, !dbg !289

bb13:                                             ; preds = %bb11
  %51 = load i32* %2, align 8, !dbg !280
  %52 = load i32* %scevgep3536, align 8, !dbg !280
  %53 = add i32 %52, %49, !dbg !280
  %54 = icmp ult i32 %51, %53, !dbg !280
  br i1 %54, label %bb14, label %bb15, !dbg !280

bb14:                                             ; preds = %bb13
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !143), !dbg !290
  call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !141), !dbg !288
  call void @__assert_fail(i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i32 86, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.5204, i64 0, i64 0)) noreturn nounwind, !dbg !280
  unreachable, !dbg !280

bb15:                                             ; preds = %bb13
  br i1 %0, label %bb19.preheader, label %bb16, !dbg !291

bb19.preheader:                                   ; preds = %bb15
  %55 = icmp eq i32 %49, 0, !dbg !292
  br i1 %55, label %bb21, label %bb18.lr.ph, !dbg !292

bb18.lr.ph:                                       ; preds = %bb19.preheader
  %56 = load i8** %file, align 8, !dbg !293
  %tmp = zext i32 %49 to i64
  br label %bb18

bb16:                                             ; preds = %bb15
  %57 = sext i32 %49 to i64, !dbg !294
  %58 = load i8** %file, align 8, !dbg !294
  %59 = load i8** %1, align 8, !dbg !294
  %60 = zext i32 %52 to i64, !dbg !294
  %61 = getelementptr inbounds i8* %59, i64 %60, !dbg !294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %58, i64 %57, i32 1, i1 false), !dbg !294
  br label %bb21, !dbg !294

bb18:                                             ; preds = %bb18.bb18_crit_edge, %bb18.lr.ph
  %62 = phi i32 [ %52, %bb18.lr.ph ], [ %.pre, %bb18.bb18_crit_edge ]
  %indvar = phi i64 [ 0, %bb18.lr.ph ], [ %indvar.next, %bb18.bb18_crit_edge ]
  %scevgep = getelementptr i8* %56, i64 %indvar
  %tmp29 = trunc i64 %indvar to i32
  %63 = load i8** %1, align 8, !dbg !293
  %tmp30 = add i32 %62, %tmp29
  %64 = zext i32 %tmp30 to i64, !dbg !293
  %65 = getelementptr inbounds i8* %63, i64 %64, !dbg !293
  %66 = load i8* %65, align 1, !dbg !293
  %67 = load i8* %scevgep, align 1, !dbg !293
  %68 = icmp eq i8 %66, %67, !dbg !293
  %69 = zext i1 %68 to i64, !dbg !293
  call void @klee_assume(i64 %69) nounwind, !dbg !293
  %indvar.next = add i64 %indvar, 1
  %exitcond = icmp eq i64 %indvar.next, %tmp
  br i1 %exitcond, label %bb21, label %bb18.bb18_crit_edge, !dbg !292

bb18.bb18_crit_edge:                              ; preds = %bb18
  %.pre = load i32* %scevgep3536, align 8
  br label %bb18

bb20:                                             ; preds = %bb
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !143), !dbg !290
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.5204, i64 0, i64 0)) noreturn nounwind, !dbg !295
  unreachable, !dbg !295

bb21:                                             ; preds = %bb5.preheader, %bb4, %bb10.preheader, %bb9, %bb19.preheader, %bb18, %bb16, %bb7, %bb2
  %indvar.next34 = add i64 %indvar33, 1
  br label %bb22, !dbg !277

bb22:                                             ; preds = %bb21, %entry
  %indvar33 = phi i64 [ %indvar.next34, %bb21 ], [ 0, %entry ]
  %scevgep3536 = getelementptr inbounds %struct.fill_info_t* %fill_info, i64 %indvar33, i32 0
  %scevgep37 = getelementptr %struct.fill_info_t* %fill_info, i64 %indvar33, i32 3, i32 0
  %scevgep3738 = bitcast i8** %scevgep37 to i32*
  %scevgep39 = getelementptr %struct.fill_info_t* %fill_info, i64 %indvar33, i32 2
  %i.0 = trunc i64 %indvar33 to i32
  %70 = icmp ult i32 %i.0, %n_fill_info, !dbg !277
  br i1 %70, label %bb, label %return, !dbg !277

return:                                           ; preds = %bb22
  ret void, !dbg !296
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare void @klee_assume(i64)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal fastcc void @__create_new_dfile(%struct.exe_disk_file_t* nocapture %dfile, i32 %size, i8* %contents, i8* %name, %struct.fill_info_t* nocapture %fill_info, i32 %n_fill_info, %struct.stat64* nocapture %defaults, i32 %is_foreign) nounwind {
entry:
  %sname = alloca [256 x i8], align 1
  %src_name = alloca [256 x i8], align 1
  call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %dfile}, i64 0, metadata !145), !dbg !297
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !146), !dbg !297
  call void @llvm.dbg.value(metadata !{i8* %contents}, i64 0, metadata !147), !dbg !297
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !148), !dbg !298
  call void @llvm.dbg.value(metadata !{%struct.fill_info_t* %fill_info}, i64 0, metadata !149), !dbg !299
  call void @llvm.dbg.value(metadata !{i32 %n_fill_info}, i64 0, metadata !150), !dbg !299
  call void @llvm.dbg.value(metadata !{%struct.stat64* %defaults}, i64 0, metadata !151), !dbg !300
  call void @llvm.dbg.value(metadata !{i32 %is_foreign}, i64 0, metadata !152), !dbg !300
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %sname}, metadata !156), !dbg !301
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %src_name}, metadata !160), !dbg !301
  %0 = call noalias i8* @malloc(i64 144) nounwind, !dbg !302
  %1 = bitcast i8* %0 to %struct.stat64*, !dbg !302
  call void @llvm.dbg.value(metadata !{%struct.stat64* %1}, i64 0, metadata !153), !dbg !302
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !155), !dbg !303
  %2 = load i8* %name, align 1, !dbg !303
  %3 = icmp eq i8 %2, 0, !dbg !303
  %4 = getelementptr inbounds [256 x i8]* %sname, i64 0, i64 0, !dbg !304
  br i1 %3, label %bb2, label %bb, !dbg !303

bb:                                               ; preds = %entry, %bb
  %indvar46 = phi i64 [ %tmp48, %bb ], [ 0, %entry ]
  %5 = phi i8* [ %9, %bb ], [ %4, %entry ]
  %6 = phi i8 [ %7, %bb ], [ %2, %entry ]
  %tmp48 = add i64 %indvar46, 1
  %scevgep49 = getelementptr i8* %name, i64 %tmp48
  store i8 %6, i8* %5, align 1, !dbg !305
  %7 = load i8* %scevgep49, align 1, !dbg !303
  %8 = icmp eq i8 %7, 0, !dbg !303
  %9 = getelementptr inbounds [256 x i8]* %sname, i64 0, i64 %tmp48, !dbg !304
  br i1 %8, label %bb2, label %bb, !dbg !303

bb2:                                              ; preds = %bb, %entry
  %.lcssa39 = phi i8* [ %4, %entry ], [ %9, %bb ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %.lcssa39, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !304
  %10 = icmp eq i8* %contents, null, !dbg !306
  %11 = icmp eq i32 %size, 0, !dbg !306
  %12 = and i1 %10, %11, !dbg !306
  br i1 %12, label %bb5, label %bb6, !dbg !306

bb5:                                              ; preds = %bb2
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i32 113, i8* getelementptr inbounds ([19 x i8]* @__PRETTY_FUNCTION__.5278, i64 0, i64 0)) noreturn nounwind, !dbg !306
  unreachable, !dbg !306

bb6:                                              ; preds = %bb2
  %13 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 0, !dbg !307
  store i32 %size, i32* %13, align 8, !dbg !307
  call void @llvm.dbg.value(metadata !308, i64 0, metadata !161), !dbg !309
  %14 = zext i32 %size to i64, !dbg !310
  %15 = call noalias i8* @malloc(i64 %14) nounwind, !dbg !310
  br i1 %10, label %bb8, label %bb7, !dbg !311

bb7:                                              ; preds = %bb6
  call void @llvm.dbg.value(metadata !{i8* %15}, i64 0, metadata !161), !dbg !312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %contents, i64 %14, i32 1, i1 false), !dbg !313
  %16 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 1, !dbg !314
  store i8* %contents, i8** %16, align 8, !dbg !314
  br label %bb9, !dbg !314

bb8:                                              ; preds = %bb6
  %17 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 1, !dbg !310
  store i8* %15, i8** %17, align 8, !dbg !310
  br label %bb9, !dbg !310

bb9:                                              ; preds = %bb8, %bb7
  %18 = phi i8* [ %contents, %bb7 ], [ %15, %bb8 ]
  %original_file.0 = phi i8* [ %15, %bb7 ], [ null, %bb8 ]
  %19 = icmp eq i32 %n_fill_info, 0, !dbg !315
  br i1 %19, label %bb12, label %bb10, !dbg !315

bb10:                                             ; preds = %bb9
  %20 = call i32 @klee_zest_enabled() nounwind, !dbg !315
  %21 = icmp eq i32 %20, 0, !dbg !315
  br i1 %21, label %bb10.bb12_crit_edge, label %bb11, !dbg !315

bb10.bb12_crit_edge:                              ; preds = %bb10
  %.pre = load i32* %13, align 8
  %.phi.trans.insert = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 1
  %.pre50 = load i8** %.phi.trans.insert, align 8
  br label %bb12

bb11:                                             ; preds = %bb10
  call void @__fill_blocks(%struct.exe_disk_file_t* %dfile, %struct.fill_info_t* %fill_info, i32 %n_fill_info, i32 1) nounwind, !dbg !316
  %22 = load i32* %13, align 8, !dbg !317
  %23 = zext i32 %22 to i64, !dbg !317
  %24 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 1, !dbg !317
  %25 = load i8** %24, align 8, !dbg !317
  call void @klee_make_symbolic(i8* %25, i64 %23, i8* %name) nounwind, !dbg !317
  br label %bb13, !dbg !317

bb12:                                             ; preds = %bb9, %bb10.bb12_crit_edge
  %26 = phi i8* [ %.pre50, %bb10.bb12_crit_edge ], [ %18, %bb9 ]
  %27 = phi i32 [ %.pre, %bb10.bb12_crit_edge ], [ %size, %bb9 ]
  %28 = zext i32 %27 to i64, !dbg !318
  call void @klee_make_symbolic(i8* %26, i64 %28, i8* %name) nounwind, !dbg !318
  call void @__fill_blocks(%struct.exe_disk_file_t* %dfile, %struct.fill_info_t* %fill_info, i32 %n_fill_info, i32 0) nounwind, !dbg !319
  br label %bb13, !dbg !319

bb13:                                             ; preds = %bb12, %bb11
  br i1 %10, label %bb18, label %bb16.preheader, !dbg !320

bb16.preheader:                                   ; preds = %bb13
  %29 = load i32* %13, align 8, !dbg !321
  %30 = icmp eq i32 %29, 0, !dbg !321
  br i1 %30, label %bb17, label %bb15.lr.ph, !dbg !321

bb15.lr.ph:                                       ; preds = %bb16.preheader
  %31 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 1, !dbg !322
  br label %bb15

bb15:                                             ; preds = %bb15.lr.ph, %bb15
  %32 = phi i32 [ 0, %bb15.lr.ph ], [ %tmp, %bb15 ]
  %tmp = add i32 %32, 1
  %33 = load i8** %31, align 8, !dbg !322
  %34 = zext i32 %32 to i64, !dbg !322
  %35 = getelementptr inbounds i8* %33, i64 %34, !dbg !322
  %36 = load i8* %35, align 1, !dbg !322
  %37 = getelementptr inbounds i8* %original_file.0, i64 %34, !dbg !322
  %38 = load i8* %37, align 1, !dbg !322
  %39 = icmp eq i8 %36, %38, !dbg !322
  %40 = zext i1 %39 to i64, !dbg !322
  call void @klee_prefer_cex(i8* %33, i64 %40) nounwind, !dbg !322
  %41 = load i32* %13, align 8, !dbg !321
  %42 = icmp ugt i32 %41, %tmp, !dbg !321
  br i1 %42, label %bb15, label %bb17, !dbg !321

bb17:                                             ; preds = %bb15, %bb16.preheader
  call void @free(i8* %original_file.0) nounwind, !dbg !323
  br label %bb18, !dbg !323

bb18:                                             ; preds = %bb13, %bb17
  %43 = getelementptr inbounds i8* %0, i64 48
  %44 = bitcast i8* %43 to i64*, !dbg !324
  store i64 %14, i64* %44, align 8, !dbg !324
  call void @klee_make_symbolic(i8* %0, i64 144, i8* %4) nounwind, !dbg !325
  %45 = getelementptr inbounds i8* %0, i64 8
  %46 = bitcast i8* %45 to i64*, !dbg !326
  %47 = load i64* %46, align 8, !dbg !326
  %48 = call i32 @klee_is_symbolic(i64 %47) nounwind, !dbg !326
  %49 = icmp eq i32 %48, 0, !dbg !326
  %50 = load i64* %46, align 8, !dbg !326
  br i1 %49, label %bb20, label %bb22, !dbg !326

bb20:                                             ; preds = %bb18
  %51 = and i64 %50, 2147483647, !dbg !326
  %52 = icmp eq i64 %51, 0, !dbg !326
  br i1 %52, label %bb21, label %bb22, !dbg !326

bb21:                                             ; preds = %bb20
  %53 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 1, !dbg !327
  %54 = load i64* %53, align 8, !dbg !327
  store i64 %54, i64* %46, align 8, !dbg !327
  br label %bb22, !dbg !327

bb22:                                             ; preds = %bb18, %bb21, %bb20
  %55 = phi i64 [ %54, %bb21 ], [ %50, %bb20 ], [ %50, %bb18 ]
  %56 = and i64 %55, 2147483647, !dbg !328
  %57 = icmp ne i64 %56, 0, !dbg !328
  %58 = zext i1 %57 to i64, !dbg !328
  call void @klee_assume(i64 %58) nounwind, !dbg !328
  %59 = getelementptr inbounds i8* %0, i64 56
  %60 = bitcast i8* %59 to i64*, !dbg !329
  %61 = load i64* %60, align 8, !dbg !329
  %62 = icmp ult i64 %61, 65536, !dbg !329
  %63 = zext i1 %62 to i64, !dbg !329
  call void @klee_assume(i64 %63) nounwind, !dbg !329
  %64 = getelementptr inbounds i8* %0, i64 24
  %65 = bitcast i8* %64 to i32*, !dbg !330
  %66 = load i32* %65, align 8, !dbg !330
  %67 = and i32 %66, -61952, !dbg !330
  %68 = icmp eq i32 %67, 0, !dbg !330
  %69 = zext i1 %68 to i64, !dbg !330
  call void @klee_prefer_cex(i8* %0, i64 %69) nounwind, !dbg !330
  %70 = bitcast i8* %0 to i64*, !dbg !331
  %71 = load i64* %70, align 8, !dbg !331
  %72 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 0, !dbg !331
  %73 = load i64* %72, align 8, !dbg !331
  %74 = icmp eq i64 %71, %73, !dbg !331
  %75 = zext i1 %74 to i64, !dbg !331
  call void @klee_prefer_cex(i8* %0, i64 %75) nounwind, !dbg !331
  %76 = getelementptr inbounds i8* %0, i64 40
  %77 = bitcast i8* %76 to i64*, !dbg !332
  %78 = load i64* %77, align 8, !dbg !332
  %79 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 7, !dbg !332
  %80 = load i64* %79, align 8, !dbg !332
  %81 = icmp eq i64 %78, %80, !dbg !332
  %82 = zext i1 %81 to i64, !dbg !332
  call void @klee_prefer_cex(i8* %0, i64 %82) nounwind, !dbg !332
  %83 = load i32* %65, align 8, !dbg !333
  %84 = and i32 %83, 448, !dbg !333
  %85 = icmp eq i32 %84, 384, !dbg !333
  %86 = zext i1 %85 to i64, !dbg !333
  call void @klee_prefer_cex(i8* %0, i64 %86) nounwind, !dbg !333
  %87 = load i32* %65, align 8, !dbg !334
  %88 = and i32 %87, 56, !dbg !334
  %89 = icmp eq i32 %88, 16, !dbg !334
  %90 = zext i1 %89 to i64, !dbg !334
  call void @klee_prefer_cex(i8* %0, i64 %90) nounwind, !dbg !334
  %91 = load i32* %65, align 8, !dbg !335
  %92 = and i32 %91, 7, !dbg !335
  %93 = icmp eq i32 %92, 2, !dbg !335
  %94 = zext i1 %93 to i64, !dbg !335
  call void @klee_prefer_cex(i8* %0, i64 %94) nounwind, !dbg !335
  %95 = load i32* %65, align 8, !dbg !336
  %96 = and i32 %95, 61440, !dbg !336
  %97 = icmp eq i32 %96, 32768, !dbg !336
  %98 = zext i1 %97 to i64, !dbg !336
  call void @klee_prefer_cex(i8* %0, i64 %98) nounwind, !dbg !336
  %99 = getelementptr inbounds i8* %0, i64 16
  %100 = bitcast i8* %99 to i64*, !dbg !337
  %101 = load i64* %100, align 8, !dbg !337
  %102 = icmp eq i64 %101, 1, !dbg !337
  %103 = zext i1 %102 to i64, !dbg !337
  call void @klee_prefer_cex(i8* %0, i64 %103) nounwind, !dbg !337
  %104 = getelementptr inbounds i8* %0, i64 28
  %105 = bitcast i8* %104 to i32*, !dbg !338
  %106 = load i32* %105, align 4, !dbg !338
  %107 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 4, !dbg !338
  %108 = load i32* %107, align 4, !dbg !338
  %109 = icmp eq i32 %106, %108, !dbg !338
  %110 = zext i1 %109 to i64, !dbg !338
  call void @klee_prefer_cex(i8* %0, i64 %110) nounwind, !dbg !338
  %111 = getelementptr inbounds i8* %0, i64 32
  %112 = bitcast i8* %111 to i32*, !dbg !339
  %113 = load i32* %112, align 8, !dbg !339
  %114 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 5, !dbg !339
  %115 = load i32* %114, align 8, !dbg !339
  %116 = icmp eq i32 %113, %115, !dbg !339
  %117 = zext i1 %116 to i64, !dbg !339
  call void @klee_prefer_cex(i8* %0, i64 %117) nounwind, !dbg !339
  %118 = load i64* %60, align 8, !dbg !340
  %119 = icmp eq i64 %118, 4096, !dbg !340
  %120 = zext i1 %119 to i64, !dbg !340
  call void @klee_prefer_cex(i8* %0, i64 %120) nounwind, !dbg !340
  %121 = getelementptr inbounds i8* %0, i64 72
  %122 = bitcast i8* %121 to i64*, !dbg !341
  %123 = load i64* %122, align 8, !dbg !341
  %124 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 11, i32 0, !dbg !341
  %125 = load i64* %124, align 8, !dbg !341
  %126 = icmp eq i64 %123, %125, !dbg !341
  %127 = zext i1 %126 to i64, !dbg !341
  call void @klee_prefer_cex(i8* %0, i64 %127) nounwind, !dbg !341
  %128 = getelementptr inbounds i8* %0, i64 88
  %129 = bitcast i8* %128 to i64*, !dbg !342
  %130 = load i64* %129, align 8, !dbg !342
  %131 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 12, i32 0, !dbg !342
  %132 = load i64* %131, align 8, !dbg !342
  %133 = icmp eq i64 %130, %132, !dbg !342
  %134 = zext i1 %133 to i64, !dbg !342
  call void @klee_prefer_cex(i8* %0, i64 %134) nounwind, !dbg !342
  %135 = getelementptr inbounds i8* %0, i64 104
  %136 = bitcast i8* %135 to i64*, !dbg !343
  %137 = load i64* %136, align 8, !dbg !343
  %138 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 13, i32 0, !dbg !343
  %139 = load i64* %138, align 8, !dbg !343
  %140 = icmp eq i64 %137, %139, !dbg !343
  %141 = zext i1 %140 to i64, !dbg !343
  call void @klee_prefer_cex(i8* %0, i64 %141) nounwind, !dbg !343
  br i1 %10, label %bb28, label %bb23, !dbg !344

bb23:                                             ; preds = %bb22
  %142 = load i64* %44, align 8, !dbg !345
  %143 = icmp sgt i64 %142, %14, !dbg !345
  %.lobit = lshr i64 %142, 63
  %144 = zext i1 %143 to i64
  %145 = or i64 %144, %.lobit
  %iftmp.35.0 = xor i64 %145, 1
  call void @klee_assume(i64 %iftmp.35.0) nounwind, !dbg !345
  br label %bb29, !dbg !345

bb28:                                             ; preds = %bb22
  %146 = load i32* %13, align 8, !dbg !346
  %147 = zext i32 %146 to i64, !dbg !346
  store i64 %147, i64* %44, align 8, !dbg !346
  br label %bb29, !dbg !346

bb29:                                             ; preds = %bb28, %bb23
  %148 = getelementptr inbounds i8* %0, i64 64
  %149 = bitcast i8* %148 to i64*, !dbg !347
  store i64 8, i64* %149, align 8, !dbg !347
  %150 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 3, !dbg !348
  store %struct.stat64* %1, %struct.stat64** %150, align 8, !dbg !348
  %151 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 4, !dbg !349
  store %struct.exe_sockaddr_t* null, %struct.exe_sockaddr_t** %151, align 8, !dbg !349
  %152 = icmp eq i32 %is_foreign, 0, !dbg !350
  br i1 %152, label %return, label %bb30, !dbg !350

bb30:                                             ; preds = %bb29
  %153 = getelementptr inbounds i8* %0, i64 24
  %154 = bitcast i8* %153 to i32*, !dbg !351
  %155 = load i32* %154, align 8, !dbg !351
  %156 = and i32 %155, 61440, !dbg !351
  %157 = icmp eq i32 %156, 49152, !dbg !351
  %158 = zext i1 %157 to i64, !dbg !351
  call void @klee_assume(i64 %158) nounwind, !dbg !351
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !155), !dbg !352
  %159 = load i8* %name, align 1, !dbg !352
  %160 = icmp eq i8 %159, 0, !dbg !352
  %161 = getelementptr inbounds [256 x i8]* %src_name, i64 0, i64 0, !dbg !353
  br i1 %160, label %bb33, label %bb31, !dbg !352

bb31:                                             ; preds = %bb30, %bb31
  %indvar = phi i64 [ %tmp44, %bb31 ], [ 0, %bb30 ]
  %162 = phi i8* [ %166, %bb31 ], [ %161, %bb30 ]
  %163 = phi i8 [ %164, %bb31 ], [ %159, %bb30 ]
  %tmp44 = add i64 %indvar, 1
  %scevgep = getelementptr i8* %name, i64 %tmp44
  store i8 %163, i8* %162, align 1, !dbg !354
  %164 = load i8* %scevgep, align 1, !dbg !352
  %165 = icmp eq i8 %164, 0, !dbg !352
  %166 = getelementptr inbounds [256 x i8]* %src_name, i64 0, i64 %tmp44, !dbg !353
  br i1 %165, label %bb33, label %bb31, !dbg !352

bb33:                                             ; preds = %bb31, %bb30
  %.lcssa = phi i8* [ %161, %bb30 ], [ %166, %bb31 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %.lcssa, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i64 5, i32 1, i1 false), !dbg !353
  %167 = call noalias i8* @calloc(i64 1, i64 16) nounwind, !dbg !355
  %168 = bitcast i8* %167 to %struct.exe_sockaddr_t*, !dbg !355
  store %struct.exe_sockaddr_t* %168, %struct.exe_sockaddr_t** %151, align 8, !dbg !355
  %169 = call noalias i8* @malloc(i64 128) nounwind, !dbg !356
  %170 = bitcast i8* %169 to %struct.sockaddr_storage*, !dbg !356
  call void @llvm.dbg.value(metadata !{%struct.sockaddr_storage* %170}, i64 0, metadata !164), !dbg !356
  %171 = bitcast i8* %167 to %struct.sockaddr_storage**, !dbg !356
  store %struct.sockaddr_storage* %170, %struct.sockaddr_storage** %171, align 8, !dbg !356
  call void @klee_make_symbolic(i8* %169, i64 128, i8* %161) nounwind, !dbg !357
  %172 = getelementptr inbounds i8* %169, i64 2
  %173 = bitcast i8* %172 to i16*, !dbg !358
  %174 = load i16* %173, align 2, !dbg !358
  %175 = icmp ne i16 %174, 0, !dbg !358
  %176 = zext i1 %175 to i64, !dbg !358
  call void @klee_assume(i64 %176) nounwind, !dbg !358
  %177 = load i16* %173, align 2, !dbg !359
  %178 = icmp ne i16 %177, 0, !dbg !359
  %179 = zext i1 %178 to i64, !dbg !359
  call void @klee_assume(i64 %179) nounwind, !dbg !359
  br label %return, !dbg !359

return:                                           ; preds = %bb29, %bb33
  ret void, !dbg !360
}

declare i32 @klee_zest_enabled()

declare void @klee_prefer_cex(i8*, i64)

declare void @free(i8* nocapture) nounwind

declare i32 @klee_is_symbolic(i64)

declare noalias i8* @calloc(i64, i64) nounwind

define %struct.exe_disk_file_t* @klee_init_cp_file(i8* %path, i32 %flags) nounwind {
entry:
  %def = alloca %struct.stat64, align 8
  %buf = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !166), !dbg !361
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !167), !dbg !361
  call void @llvm.dbg.declare(metadata !{%struct.stat64* %def}, metadata !171), !dbg !362
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !172), !dbg !363
  %0 = call i32 @native_read_file(i8* %path, i32 %flags, i8** %buf) nounwind, !dbg !364
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !170), !dbg !364
  %1 = icmp slt i32 %0, 0, !dbg !365
  br i1 %1, label %bb7, label %bb1, !dbg !365

bb1:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !366, i64 0, metadata !120) nounwind, !dbg !367
  call void @llvm.dbg.value(metadata !{%struct.stat64* %def}, i64 0, metadata !121) nounwind, !dbg !367
  %2 = call i32 @__xstat64(i32 1, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), %struct.stat64* %def) nounwind, !dbg !369
  call void @llvm.dbg.value(metadata !276, i64 0, metadata !168), !dbg !370
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !370
  %4 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 16, !dbg !371
  br label %bb5, !dbg !370

bb2:                                              ; preds = %bb5
  %scevgep = getelementptr %struct.exe_disk_file_t* %4, i64 %indvar, i32 3
  %5 = load %struct.stat64** %scevgep, align 8, !dbg !371
  %6 = icmp eq %struct.stat64* %5, null, !dbg !371
  br i1 %6, label %bb3, label %bb4, !dbg !371

bb3:                                              ; preds = %bb2
  %7 = load i8** %buf, align 8, !dbg !372
  %8 = getelementptr inbounds %struct.exe_disk_file_t* %4, i64 %indvar, !dbg !372
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %8, i32 %0, i8* %7, i8* %path, %struct.fill_info_t* null, i32 0, %struct.stat64* %def, i32 0) nounwind, !dbg !372
  %9 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 16, !dbg !373
  %10 = call i64 @strlen(i8* %path) nounwind readonly, !dbg !373
  %11 = add i64 %10, 1, !dbg !373
  %12 = call noalias i8* @malloc(i64 %11) nounwind, !dbg !373
  %13 = getelementptr inbounds %struct.exe_disk_file_t* %9, i64 %indvar, i32 2, !dbg !373
  store i8* %12, i8** %13, align 8, !dbg !373
  %14 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 16, !dbg !374
  %15 = getelementptr inbounds %struct.exe_disk_file_t* %14, i64 %indvar, i32 2, !dbg !374
  %16 = load i8** %15, align 8, !dbg !374
  %17 = call i8* @strcpy(i8* noalias %16, i8* noalias %path) nounwind, !dbg !374
  %18 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 16, !dbg !375
  %19 = getelementptr inbounds %struct.exe_disk_file_t* %18, i64 %indvar, !dbg !375
  br label %bb7, !dbg !375

bb4:                                              ; preds = %bb2
  %indvar.next = add i64 %indvar, 1
  br label %bb5, !dbg !370

bb5:                                              ; preds = %bb4, %bb1
  %indvar = phi i64 [ %indvar.next, %bb4 ], [ 0, %bb1 ]
  %k.0 = trunc i64 %indvar to i32
  %20 = icmp ugt i32 %3, %k.0, !dbg !370
  br i1 %20, label %bb2, label %bb7, !dbg !370

bb7:                                              ; preds = %bb5, %entry, %bb3
  %.0 = phi %struct.exe_disk_file_t* [ %19, %bb3 ], [ null, %entry ], [ null, %bb5 ]
  ret %struct.exe_disk_file_t* %.0, !dbg !376
}

declare i64 @strlen(i8* nocapture) nounwind readonly

declare i8* @strcpy(i8*, i8* nocapture) nounwind

define void @klee_init_fds(i32 %n_files, i32 %file_length, i32 %sym_stdout_flag, i32 %save_all_writes_flag, i32 %n_streams, i32 %stream_len, i32 %n_dgrams, i32 %dgram_len, i32 %max_failures, i32 %one_line_streams, %struct.fill_info_t* %stream_fill_info, i32 %n_stream_fill_info, %struct.fill_info_t* %dgram_fill_info, i32 %n_dgram_fill_info) nounwind {
entry:
  %x.i = alloca i32, align 4
  %name = alloca [7 x i8], align 1
  %sname = alloca [8 x i8], align 1
  %dname = alloca [7 x i8], align 1
  %s = alloca %struct.stat64, align 8
  call void @llvm.dbg.value(metadata !{i32 %n_files}, i64 0, metadata !173), !dbg !377
  call void @llvm.dbg.value(metadata !{i32 %file_length}, i64 0, metadata !174), !dbg !377
  call void @llvm.dbg.value(metadata !{i32 %sym_stdout_flag}, i64 0, metadata !175), !dbg !378
  call void @llvm.dbg.value(metadata !{i32 %save_all_writes_flag}, i64 0, metadata !176), !dbg !378
  call void @llvm.dbg.value(metadata !{i32 %n_streams}, i64 0, metadata !177), !dbg !379
  call void @llvm.dbg.value(metadata !{i32 %stream_len}, i64 0, metadata !178), !dbg !379
  call void @llvm.dbg.value(metadata !{i32 %n_dgrams}, i64 0, metadata !179), !dbg !380
  call void @llvm.dbg.value(metadata !{i32 %dgram_len}, i64 0, metadata !180), !dbg !380
  call void @llvm.dbg.value(metadata !{i32 %max_failures}, i64 0, metadata !181), !dbg !381
  call void @llvm.dbg.value(metadata !{i32 %one_line_streams}, i64 0, metadata !182), !dbg !382
  call void @llvm.dbg.value(metadata !{%struct.fill_info_t* %stream_fill_info}, i64 0, metadata !183), !dbg !383
  call void @llvm.dbg.value(metadata !{i32 %n_stream_fill_info}, i64 0, metadata !184), !dbg !383
  call void @llvm.dbg.value(metadata !{%struct.fill_info_t* %dgram_fill_info}, i64 0, metadata !185), !dbg !384
  call void @llvm.dbg.value(metadata !{i32 %n_dgram_fill_info}, i64 0, metadata !186), !dbg !384
  call void @llvm.dbg.declare(metadata !{[7 x i8]* %name}, metadata !189), !dbg !385
  call void @llvm.dbg.declare(metadata !{[8 x i8]* %sname}, metadata !193), !dbg !386
  call void @llvm.dbg.declare(metadata !{[7 x i8]* %dname}, metadata !197), !dbg !387
  call void @llvm.dbg.declare(metadata !{%struct.stat64* %s}, metadata !198), !dbg !388
  %0 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 0, !dbg !385
  store i8 63, i8* %0, align 1, !dbg !385
  %1 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 1, !dbg !385
  store i8 45, i8* %1, align 1, !dbg !385
  %2 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 2, !dbg !385
  store i8 100, i8* %2, align 1, !dbg !385
  %3 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 3, !dbg !385
  store i8 97, i8* %3, align 1, !dbg !385
  %4 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 4, !dbg !385
  store i8 116, i8* %4, align 1, !dbg !385
  %5 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 5, !dbg !385
  store i8 97, i8* %5, align 1, !dbg !385
  %6 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 6, !dbg !385
  store i8 0, i8* %6, align 1, !dbg !385
  %7 = getelementptr inbounds [8 x i8]* %sname, i64 0, i64 0, !dbg !386
  store i8 83, i8* %7, align 1, !dbg !386
  %8 = getelementptr inbounds [8 x i8]* %sname, i64 0, i64 1, !dbg !386
  store i8 84, i8* %8, align 1, !dbg !386
  %9 = getelementptr inbounds [8 x i8]* %sname, i64 0, i64 2, !dbg !386
  store i8 82, i8* %9, align 1, !dbg !386
  %10 = getelementptr inbounds [8 x i8]* %sname, i64 0, i64 3, !dbg !386
  store i8 69, i8* %10, align 1, !dbg !386
  %11 = getelementptr inbounds [8 x i8]* %sname, i64 0, i64 4, !dbg !386
  store i8 65, i8* %11, align 1, !dbg !386
  %12 = getelementptr inbounds [8 x i8]* %sname, i64 0, i64 5, !dbg !386
  store i8 77, i8* %12, align 1, !dbg !386
  %13 = getelementptr inbounds [8 x i8]* %sname, i64 0, i64 6, !dbg !386
  store i8 63, i8* %13, align 1, !dbg !386
  %14 = getelementptr inbounds [8 x i8]* %sname, i64 0, i64 7, !dbg !386
  store i8 0, i8* %14, align 1, !dbg !386
  %15 = getelementptr inbounds [7 x i8]* %dname, i64 0, i64 0, !dbg !387
  store i8 68, i8* %15, align 1, !dbg !387
  %16 = getelementptr inbounds [7 x i8]* %dname, i64 0, i64 1, !dbg !387
  store i8 71, i8* %16, align 1, !dbg !387
  %17 = getelementptr inbounds [7 x i8]* %dname, i64 0, i64 2, !dbg !387
  store i8 82, i8* %17, align 1, !dbg !387
  %18 = getelementptr inbounds [7 x i8]* %dname, i64 0, i64 3, !dbg !387
  store i8 65, i8* %18, align 1, !dbg !387
  %19 = getelementptr inbounds [7 x i8]* %dname, i64 0, i64 4, !dbg !387
  store i8 77, i8* %19, align 1, !dbg !387
  %20 = getelementptr inbounds [7 x i8]* %dname, i64 0, i64 5, !dbg !387
  store i8 63, i8* %20, align 1, !dbg !387
  %21 = getelementptr inbounds [7 x i8]* %dname, i64 0, i64 6, !dbg !387
  store i8 0, i8* %21, align 1, !dbg !387
  call void @llvm.dbg.value(metadata !366, i64 0, metadata !120) nounwind, !dbg !389
  call void @llvm.dbg.value(metadata !{%struct.stat64* %s}, i64 0, metadata !121) nounwind, !dbg !389
  %22 = call i32 @__xstat64(i32 1, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), %struct.stat64* %s) nounwind, !dbg !391
  store %struct.fill_info_t* %stream_fill_info, %struct.fill_info_t** @__stream_fill_info, align 8, !dbg !392
  store i32 %n_stream_fill_info, i32* @__n_stream_fill_info, align 4, !dbg !393
  store %struct.fill_info_t* %dgram_fill_info, %struct.fill_info_t** @__dgram_fill_info, align 8, !dbg !394
  store i32 %n_dgram_fill_info, i32* @__n_dgram_fill_info, align 4, !dbg !395
  store i32 %n_files, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 32, !dbg !396
  %23 = zext i32 %n_files to i64, !dbg !397
  %24 = mul i64 %23, 40, !dbg !397
  %25 = call noalias i8* @malloc(i64 %24) nounwind, !dbg !397
  %26 = bitcast i8* %25 to %struct.exe_disk_file_t*, !dbg !397
  store %struct.exe_disk_file_t* %26, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !397
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 4, !dbg !398
  call void @llvm.dbg.value(metadata !276, i64 0, metadata !187), !dbg !399
  %27 = icmp eq i32 %n_files, 0, !dbg !399
  br i1 %27, label %bb3, label %bb, !dbg !399

bb:                                               ; preds = %entry, %bb.bb_crit_edge
  %28 = phi %struct.exe_disk_file_t* [ %.pre, %bb.bb_crit_edge ], [ %26, %entry ]
  %indvar44 = phi i64 [ %indvar.next45, %bb.bb_crit_edge ], [ 0, %entry ]
  %tmp48 = add i64 %indvar44, 65
  %tmp49 = trunc i64 %tmp48 to i8
  store i8 %tmp49, i8* %0, align 1, !dbg !400
  %scevgep50 = getelementptr %struct.exe_disk_file_t* %28, i64 %indvar44
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %scevgep50, i32 %file_length, i8* null, i8* %0, %struct.fill_info_t* null, i32 0, %struct.stat64* %s, i32 0) nounwind, !dbg !401
  %indvar.next45 = add i64 %indvar44, 1
  %exitcond47 = icmp eq i64 %indvar.next45, %23
  br i1 %exitcond47, label %bb3, label %bb.bb_crit_edge, !dbg !399

bb.bb_crit_edge:                                  ; preds = %bb
  %.pre = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8
  br label %bb

bb3:                                              ; preds = %bb, %entry
  store i32 10, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !402
  %29 = call noalias i8* @malloc(i64 400) nounwind, !dbg !403
  %30 = bitcast i8* %29 to %struct.exe_disk_file_t*, !dbg !403
  store %struct.exe_disk_file_t* %30, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 16, !dbg !403
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 400, i32 8, i1 false), !dbg !404
  %31 = icmp eq i32 %file_length, 0, !dbg !405
  br i1 %31, label %bb5, label %bb4, !dbg !405

bb4:                                              ; preds = %bb3
  %32 = call noalias i8* @malloc(i64 40) nounwind, !dbg !406
  %33 = bitcast i8* %32 to %struct.exe_disk_file_t*, !dbg !406
  store %struct.exe_disk_file_t* %33, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 16, !dbg !406
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %33, i32 %file_length, i8* null, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), %struct.fill_info_t* null, i32 0, %struct.stat64* %s, i32 0) nounwind, !dbg !407
  %34 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 16, !dbg !408
  store %struct.exe_disk_file_t* %34, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 0, i32 3), align 16, !dbg !408
  br label %bb6, !dbg !408

bb5:                                              ; preds = %bb3
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 16, !dbg !409
  br label %bb6, !dbg !409

bb6:                                              ; preds = %bb5, %bb4
  store i32 %max_failures, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 14), align 8, !dbg !410
  %35 = icmp eq i32 %max_failures, 0, !dbg !411
  br i1 %35, label %bb8, label %bb7, !dbg !411

bb7:                                              ; preds = %bb6
  %36 = call noalias i8* @malloc(i64 4) nounwind, !dbg !412
  %37 = bitcast i8* %36 to i32*, !dbg !412
  store i32* %37, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 15), align 32, !dbg !412
  %38 = call noalias i8* @malloc(i64 4) nounwind, !dbg !413
  %39 = bitcast i8* %38 to i32*, !dbg !413
  store i32* %39, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 16), align 8, !dbg !413
  %40 = call noalias i8* @malloc(i64 4) nounwind, !dbg !414
  %41 = bitcast i8* %40 to i32*, !dbg !414
  store i32* %41, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 17), align 16, !dbg !414
  %42 = call noalias i8* @malloc(i64 4) nounwind, !dbg !415
  %43 = bitcast i8* %42 to i32*, !dbg !415
  store i32* %43, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 18), align 8, !dbg !415
  %44 = call noalias i8* @malloc(i64 4) nounwind, !dbg !416
  %45 = bitcast i8* %44 to i32*, !dbg !416
  store i32* %45, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 19), align 32, !dbg !416
  call void @klee_make_symbolic(i8* %36, i64 4, i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !417
  %46 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 16), align 8, !dbg !418
  %47 = bitcast i32* %46 to i8*, !dbg !418
  call void @klee_make_symbolic(i8* %47, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !418
  %48 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 17), align 16, !dbg !419
  %49 = bitcast i32* %48 to i8*, !dbg !419
  call void @klee_make_symbolic(i8* %49, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !419
  %50 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 18), align 8, !dbg !420
  %51 = bitcast i32* %50 to i8*, !dbg !420
  call void @klee_make_symbolic(i8* %51, i64 4, i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !420
  %52 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 19), align 32, !dbg !421
  %53 = bitcast i32* %52 to i8*, !dbg !421
  call void @klee_make_symbolic(i8* %53, i64 4, i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !421
  br label %bb8, !dbg !421

bb8:                                              ; preds = %bb6, %bb7
  %54 = icmp eq i32 %sym_stdout_flag, 0, !dbg !422
  br i1 %54, label %bb10, label %bb9, !dbg !422

bb9:                                              ; preds = %bb8
  %55 = call noalias i8* @malloc(i64 40) nounwind, !dbg !423
  %56 = bitcast i8* %55 to %struct.exe_disk_file_t*, !dbg !423
  store %struct.exe_disk_file_t* %56, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !423
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %56, i32 1024, i8* null, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), %struct.fill_info_t* null, i32 0, %struct.stat64* %s, i32 0) nounwind, !dbg !424
  %57 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !425
  store %struct.exe_disk_file_t* %57, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 1, i32 3), align 8, !dbg !425
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 32, !dbg !426
  br label %bb11, !dbg !426

bb10:                                             ; preds = %bb8
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !427
  br label %bb11, !dbg !427

bb11:                                             ; preds = %bb10, %bb9
  store i32 %save_all_writes_flag, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 3), align 8, !dbg !428
  call void @llvm.dbg.value(metadata !429, i64 0, metadata !122) nounwind, !dbg !430
  call void @llvm.dbg.declare(metadata !{i32* %x.i}, metadata !123) nounwind, !dbg !432
  %x1.i = bitcast i32* %x.i to i8*, !dbg !433
  call void @klee_make_symbolic(i8* %x1.i, i64 4, i8* getelementptr inbounds ([14 x i8]* @.str18, i64 0, i64 0)) nounwind, !dbg !433
  %58 = load i32* %x.i, align 4, !dbg !434
  store i32 %58, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 2), align 4, !dbg !431
  %59 = icmp eq i32 %58, 1, !dbg !435
  %60 = zext i1 %59 to i64, !dbg !435
  call void @klee_assume(i64 %60) nounwind, !dbg !435
  store i32 %n_streams, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !436
  %61 = zext i32 %n_streams to i64, !dbg !437
  %62 = mul i64 %61, 40, !dbg !437
  %63 = call noalias i8* @malloc(i64 %62) nounwind, !dbg !437
  %64 = bitcast i8* %63 to %struct.exe_disk_file_t*, !dbg !437
  store %struct.exe_disk_file_t* %64, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 32, !dbg !437
  %65 = icmp eq i8* %63, null, !dbg !438
  br i1 %65, label %bb12, label %bb17.preheader, !dbg !438

bb12:                                             ; preds = %bb11
  call void @klee_warning(i8* getelementptr inbounds ([37 x i8]* @.str19, i64 0, i64 0)) nounwind, !dbg !439
  br label %bb17.preheader, !dbg !439

bb17.preheader:                                   ; preds = %bb12, %bb11
  %66 = icmp eq i32 %n_streams, 0, !dbg !440
  br i1 %66, label %bb18, label %bb14, !dbg !440

bb14:                                             ; preds = %bb14, %bb17.preheader
  %indvar37 = phi i64 [ 0, %bb17.preheader ], [ %indvar.next38, %bb14 ]
  %tmp41 = add i64 %indvar37, 49
  %tmp42 = trunc i64 %tmp41 to i8
  %67 = call i64 @strlen(i8* %7) nounwind readonly, !dbg !441
  %68 = add i64 %67, -1, !dbg !441
  %69 = getelementptr inbounds [8 x i8]* %sname, i64 0, i64 %68, !dbg !441
  store i8 %tmp42, i8* %69, align 1, !dbg !441
  %70 = load i32* @__n_stream_fill_info, align 4, !dbg !442
  %71 = load %struct.fill_info_t** @__stream_fill_info, align 8, !dbg !442
  %72 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 32, !dbg !442
  %scevgep43 = getelementptr %struct.exe_disk_file_t* %72, i64 %indvar37
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %scevgep43, i32 %stream_len, i8* null, i8* %7, %struct.fill_info_t* %71, i32 %70, %struct.stat64* %s, i32 1) nounwind, !dbg !442
  %indvar.next38 = add i64 %indvar37, 1
  %exitcond40 = icmp eq i64 %indvar.next38, %61
  br i1 %exitcond40, label %bb18, label %bb14, !dbg !440

bb18:                                             ; preds = %bb14, %bb17.preheader
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !443
  store i32 %n_dgrams, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 11), align 8, !dbg !444
  %73 = zext i32 %n_dgrams to i64, !dbg !445
  %74 = mul i64 %73, 40, !dbg !445
  %75 = call noalias i8* @malloc(i64 %74) nounwind, !dbg !445
  %76 = bitcast i8* %75 to %struct.exe_disk_file_t*, !dbg !445
  store %struct.exe_disk_file_t* %76, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 13), align 16, !dbg !445
  %77 = icmp eq i8* %75, null, !dbg !446
  br i1 %77, label %bb19, label %bb24.preheader, !dbg !446

bb19:                                             ; preds = %bb18
  call void @klee_warning(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0)) nounwind, !dbg !447
  br label %bb24.preheader, !dbg !447

bb24.preheader:                                   ; preds = %bb19, %bb18
  %78 = icmp eq i32 %n_dgrams, 0, !dbg !448
  br i1 %78, label %bb25, label %bb21, !dbg !448

bb21:                                             ; preds = %bb21, %bb24.preheader
  %indvar = phi i64 [ 0, %bb24.preheader ], [ %indvar.next, %bb21 ]
  %tmp35 = add i64 %indvar, 49
  %tmp36 = trunc i64 %tmp35 to i8
  %79 = call i64 @strlen(i8* %15) nounwind readonly, !dbg !449
  %80 = add i64 %79, -1, !dbg !449
  %81 = getelementptr inbounds [7 x i8]* %dname, i64 0, i64 %80, !dbg !449
  store i8 %tmp36, i8* %81, align 1, !dbg !449
  %82 = load i32* @__n_dgram_fill_info, align 4, !dbg !450
  %83 = load %struct.fill_info_t** @__dgram_fill_info, align 8, !dbg !450
  %84 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 13), align 16, !dbg !450
  %scevgep = getelementptr %struct.exe_disk_file_t* %84, i64 %indvar
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %scevgep, i32 %dgram_len, i8* null, i8* %15, %struct.fill_info_t* %83, i32 %82, %struct.stat64* %s, i32 1) nounwind, !dbg !450
  %indvar.next = add i64 %indvar, 1
  %exitcond = icmp eq i64 %indvar.next, %73
  br i1 %exitcond, label %bb25, label %bb21, !dbg !448

bb25:                                             ; preds = %bb21, %bb24.preheader
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 4, !dbg !451
  call void @llvm.dbg.value(metadata !276, i64 0, metadata !199), !dbg !452
  %85 = call i64 (i64, ...)* @syscall(i64 8, i32 0, i64 0, i32 1) nounwind, !dbg !453
  %86 = icmp eq i64 %85, -1, !dbg !454
  br i1 %86, label %bb28, label %bb27, !dbg !454

bb27:                                             ; preds = %bb25
  store i64 %85, i64* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 0, i32 2), align 8, !dbg !455
  br label %bb28, !dbg !455

bb28:                                             ; preds = %bb25, %bb27
  %87 = call i64 (i64, ...)* @syscall(i64 8, i32 1, i64 0, i32 1) nounwind, !dbg !453
  %88 = icmp eq i64 %87, -1, !dbg !454
  br i1 %88, label %bb28.1, label %bb27.1, !dbg !454

bb28.1:                                           ; preds = %bb27.1, %bb28
  %89 = call i64 (i64, ...)* @syscall(i64 8, i32 2, i64 0, i32 1) nounwind, !dbg !453
  %90 = icmp eq i64 %89, -1, !dbg !454
  br i1 %90, label %bb28.2, label %bb27.2, !dbg !454

bb27.1:                                           ; preds = %bb28
  store i64 %87, i64* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 1, i32 2), align 8, !dbg !455
  br label %bb28.1, !dbg !455

bb28.2:                                           ; preds = %bb27.2, %bb28.1
  call void @llvm.dbg.value(metadata !{i64 %85}, i64 0, metadata !200), !dbg !453
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !199), !dbg !452
  ret void, !dbg !456

bb27.2:                                           ; preds = %bb28.1
  store i64 %89, i64* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 2, i32 2), align 8, !dbg !455
  br label %bb28.2, !dbg !455
}

declare void @klee_warning(i8*)

!llvm.dbg.sp = !{!0, !53, !56, !61, !111, !114, !117}
!llvm.dbg.lv.stat64 = !{!120, !121}
!llvm.dbg.lv.__sym_uint32 = !{!122, !123}
!llvm.dbg.lv.native_read_file = !{!125, !126, !127, !128, !130, !131, !132, !133}
!llvm.dbg.enum = !{!100}
!llvm.dbg.lv.__fill_blocks = !{!134, !135, !136, !137, !138, !140, !141, !142, !143}
!llvm.dbg.lv.__create_new_dfile = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !155, !156, !160, !161, !162, !164}
!llvm.dbg.lv.klee_init_cp_file = !{!166, !167, !168, !170, !171, !172}
!llvm.dbg.lv.klee_init_fds = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !189, !193, !197, !198, !199, !200}
!llvm.dbg.gv = !{!203, !204, !205, !206, !207, !208, !231}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat64", metadata !"stat64", metadata !"stat64", metadata !3, i32 503, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd_init.c", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd_init.c", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, null} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{metadata !6, metadata !7, metadata !10}
!6 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!9 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !12, i32 30, i64 1152, i64 64, i64 0, i32 0, null, metadata !13, i32 0, null} ; [ DW_TAG_structure_type ]
!12 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !2} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !19, metadata !21, metadata !23, metadata !26, metadata !28, metadata !30, metadata !31, metadata !32, metadata !35, metadata !37, metadata !39, metadata !47, metadata !48, metadata !49}
!14 = metadata !{i32 589837, metadata !11, metadata !"st_dev", metadata !15, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!15 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 589846, metadata !17, metadata !"__dev_t", metadata !17, i32 125, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 589837, metadata !11, metadata !"st_ino", metadata !15, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ]
!20 = metadata !{i32 589846, metadata !17, metadata !"__ino64_t", metadata !17, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 589837, metadata !11, metadata !"st_nlink", metadata !15, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 589846, metadata !17, metadata !"__nlink_t", metadata !17, i32 131, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 589837, metadata !11, metadata !"st_mode", metadata !15, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ]
!24 = metadata !{i32 589846, metadata !17, metadata !"__mode_t", metadata !17, i32 130, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 589837, metadata !11, metadata !"st_uid", metadata !15, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 589846, metadata !17, metadata !"__uid_t", metadata !17, i32 126, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 589837, metadata !11, metadata !"st_gid", metadata !15, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 589846, metadata !17, metadata !"__gid_t", metadata !17, i32 127, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 589837, metadata !11, metadata !"__pad0", metadata !15, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !6} ; [ DW_TAG_member ]
!31 = metadata !{i32 589837, metadata !11, metadata !"st_rdev", metadata !15, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ]
!32 = metadata !{i32 589837, metadata !11, metadata !"st_size", metadata !15, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ]
!33 = metadata !{i32 589846, metadata !17, metadata !"__off_t", metadata !17, i32 132, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ]
!34 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 589837, metadata !11, metadata !"st_blksize", metadata !15, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ]
!36 = metadata !{i32 589846, metadata !17, metadata !"__blksize_t", metadata !17, i32 158, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ]
!37 = metadata !{i32 589837, metadata !11, metadata !"st_blocks", metadata !15, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !38} ; [ DW_TAG_member ]
!38 = metadata !{i32 589846, metadata !17, metadata !"__blkcnt64_t", metadata !17, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 589837, metadata !11, metadata !"st_atim", metadata !15, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !40} ; [ DW_TAG_member ]
!40 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !41, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !42, i32 0, null} ; [ DW_TAG_structure_type ]
!41 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!42 = metadata !{metadata !43, metadata !45}
!43 = metadata !{i32 589837, metadata !40, metadata !"tv_sec", metadata !41, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ]
!44 = metadata !{i32 589846, metadata !17, metadata !"__time_t", metadata !17, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ]
!45 = metadata !{i32 589837, metadata !40, metadata !"tv_nsec", metadata !41, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ]
!46 = metadata !{i32 589846, metadata !17, metadata !"__syscall_slong_t", metadata !17, i32 177, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ]
!47 = metadata !{i32 589837, metadata !11, metadata !"st_mtim", metadata !15, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !40} ; [ DW_TAG_member ]
!48 = metadata !{i32 589837, metadata !11, metadata !"st_ctim", metadata !15, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !40} ; [ DW_TAG_member ]
!49 = metadata !{i32 589837, metadata !11, metadata !"__glibc_reserved", metadata !15, i32 164, i64 192, i64 64, i64 960, i32 0, metadata !50} ; [ DW_TAG_member ]
!50 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !46, metadata !51, i32 0, null} ; [ DW_TAG_array_type ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!53 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__sym_uint32", metadata !"__sym_uint32", metadata !"", metadata !1, i32 205, metadata !54, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, null} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{metadata !25, metadata !7}
!56 = metadata !{i32 589870, i32 0, metadata !1, metadata !"native_read_file", metadata !"native_read_file", metadata !"native_read_file", metadata !1, i32 325, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i8**)* @native_read_file} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, null} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{metadata !6, metadata !7, metadata !6, metadata !59}
!59 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ]
!60 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!61 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fill_blocks", metadata !"__fill_blocks", metadata !"__fill_blocks", metadata !1, i32 55, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.exe_disk_file_t*, %struct.fill_info_t*, i32, i32)* @__fill_blocks} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, null} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{null, metadata !64, metadata !93, metadata !25, metadata !6}
!64 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 589846, metadata !12, metadata !"exe_disk_file_t", metadata !12, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ]
!66 = metadata !{i32 589843, metadata !1, metadata !"", metadata !12, i32 26, i64 320, i64 64, i64 0, i32 0, null, metadata !67, i32 0, null} ; [ DW_TAG_structure_type ]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!68 = metadata !{i32 589837, metadata !66, metadata !"size", metadata !12, i32 27, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ]
!69 = metadata !{i32 589837, metadata !66, metadata !"contents", metadata !12, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !60} ; [ DW_TAG_member ]
!70 = metadata !{i32 589837, metadata !66, metadata !"path", metadata !12, i32 29, i64 64, i64 64, i64 128, i32 0, metadata !60} ; [ DW_TAG_member ]
!71 = metadata !{i32 589837, metadata !66, metadata !"stat", metadata !12, i32 30, i64 64, i64 64, i64 192, i32 0, metadata !10} ; [ DW_TAG_member ]
!72 = metadata !{i32 589837, metadata !66, metadata !"src", metadata !12, i32 31, i64 64, i64 64, i64 256, i32 0, metadata !73} ; [ DW_TAG_member ]
!73 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 589846, metadata !12, metadata !"exe_sockaddr_t", metadata !12, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ]
!75 = metadata !{i32 589843, metadata !1, metadata !"", metadata !12, i32 21, i64 128, i64 64, i64 0, i32 0, null, metadata !76, i32 0, null} ; [ DW_TAG_structure_type ]
!76 = metadata !{metadata !77, metadata !90}
!77 = metadata !{i32 589837, metadata !75, metadata !"addr", metadata !12, i32 22, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ]
!78 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ]
!79 = metadata !{i32 589843, metadata !1, metadata !"sockaddr_storage", metadata !80, i32 163, i64 1024, i64 64, i64 0, i32 0, null, metadata !81, i32 0, null} ; [ DW_TAG_structure_type ]
!80 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!81 = metadata !{metadata !82, metadata !85, metadata !86}
!82 = metadata !{i32 589837, metadata !79, metadata !"ss_family", metadata !80, i32 164, i64 16, i64 16, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ]
!83 = metadata !{i32 589846, metadata !80, metadata !"sa_family_t", metadata !80, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ]
!84 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 589837, metadata !79, metadata !"__ss_align", metadata !80, i32 165, i64 64, i64 64, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ]
!86 = metadata !{i32 589837, metadata !79, metadata !"__ss_padding", metadata !80, i32 166, i64 896, i64 8, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ]
!87 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 896, i64 8, i64 0, i32 0, metadata !9, metadata !88, i32 0, null} ; [ DW_TAG_array_type ]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 589857, i64 0, i64 111}      ; [ DW_TAG_subrange_type ]
!90 = metadata !{i32 589837, metadata !75, metadata !"addrlen", metadata !12, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ]
!91 = metadata !{i32 589846, metadata !92, metadata !"socklen_t", metadata !92, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!92 = metadata !{i32 589865, metadata !"socket_type.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!93 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ]
!94 = metadata !{i32 589846, metadata !95, metadata !"fill_info_t", metadata !95, i32 152, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ]
!95 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/klee/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!96 = metadata !{i32 589843, metadata !1, metadata !"", metadata !12, i32 101, i64 192, i64 64, i64 0, i32 0, null, metadata !97, i32 0, null} ; [ DW_TAG_structure_type ]
!97 = metadata !{metadata !98, metadata !99, metadata !105, metadata !106}
!98 = metadata !{i32 589837, metadata !96, metadata !"offset", metadata !12, i32 102, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ]
!99 = metadata !{i32 589837, metadata !96, metadata !"fill_method", metadata !12, i32 103, i64 32, i64 32, i64 32, i32 0, metadata !100} ; [ DW_TAG_member ]
!100 = metadata !{i32 589828, metadata !1, metadata !"", metadata !12, i32 103, i64 32, i64 32, i64 0, i32 0, null, metadata !101, i32 0, null} ; [ DW_TAG_enumeration_type ]
!101 = metadata !{metadata !102, metadata !103, metadata !104}
!102 = metadata !{i32 589864, metadata !"fill_set", i64 0} ; [ DW_TAG_enumerator ]
!103 = metadata !{i32 589864, metadata !"fill_copy", i64 1} ; [ DW_TAG_enumerator ]
!104 = metadata !{i32 589864, metadata !"fill_file", i64 2} ; [ DW_TAG_enumerator ]
!105 = metadata !{i32 589837, metadata !96, metadata !"length", metadata !12, i32 104, i64 32, i64 32, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ]
!106 = metadata !{i32 589837, metadata !96, metadata !"arg", metadata !12, i32 108, i64 64, i64 64, i64 128, i32 0, metadata !107} ; [ DW_TAG_member ]
!107 = metadata !{i32 589847, metadata !1, metadata !"", metadata !12, i32 105, i64 64, i64 64, i64 0, i32 0, null, metadata !108, i32 0, null} ; [ DW_TAG_union_type ]
!108 = metadata !{metadata !109, metadata !110}
!109 = metadata !{i32 589837, metadata !107, metadata !"value", metadata !12, i32 106, i64 32, i64 32, i64 0, i32 0, metadata !6} ; [ DW_TAG_member ]
!110 = metadata !{i32 589837, metadata !107, metadata !"string", metadata !12, i32 107, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ]
!111 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__create_new_dfile", metadata !"__create_new_dfile", metadata !"", metadata !1, i32 105, metadata !112, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.exe_disk_file_t*, i32, i8*, i8*, %struct.fill_info_t*, i32, %struct.stat64*, i32)* @__create_new_dfile} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, null} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{null, metadata !64, metadata !25, metadata !60, metadata !7, metadata !93, metadata !25, metadata !10, metadata !6}
!114 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_init_cp_file", metadata !"klee_init_cp_file", metadata !"klee_init_cp_file", metadata !1, i32 346, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.exe_disk_file_t* (i8*, i32)* @klee_init_cp_file} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, null} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{metadata !64, metadata !7, metadata !6}
!117 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !1, i32 227, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fill_info_t*, i32, %struct.fill_info_t*, i32)* @klee_init_fds} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, null} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !25, metadata !25, metadata !6, metadata !6, metadata !25, metadata !25, metadata !25, metadata !25, metadata !25, metadata !6, metadata !93, metadata !25, metadata !93, metadata !25}
!120 = metadata !{i32 590081, metadata !0, metadata !"__path", metadata !3, i32 502, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 590081, metadata !0, metadata !"__statbuf", metadata !3, i32 502, metadata !10, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 590081, metadata !53, metadata !"name", metadata !1, i32 205, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 590080, metadata !124, metadata !"x", metadata !1, i32 206, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 589835, metadata !53, i32 205, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 590081, metadata !56, metadata !"path", metadata !1, i32 325, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 590081, metadata !56, metadata !"flags", metadata !1, i32 325, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 590081, metadata !56, metadata !"_buf", metadata !1, i32 325, metadata !59, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 590080, metadata !129, metadata !"s", metadata !1, i32 326, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 589835, metadata !56, i32 325, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 590080, metadata !129, metadata !"buf", metadata !1, i32 327, metadata !60, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 590080, metadata !129, metadata !"fd", metadata !1, i32 328, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 590080, metadata !129, metadata !"rd", metadata !1, i32 335, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 590080, metadata !129, metadata !"cnt", metadata !1, i32 335, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 590081, metadata !61, metadata !"dfile", metadata !1, i32 55, metadata !64, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 590081, metadata !61, metadata !"fill_info", metadata !1, i32 55, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 590081, metadata !61, metadata !"n_fill_info", metadata !1, i32 55, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 590081, metadata !61, metadata !"do_memset", metadata !1, i32 55, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 590080, metadata !139, metadata !"i", metadata !1, i32 56, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 589835, metadata !61, i32 55, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 590080, metadata !139, metadata !"j", metadata !1, i32 56, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 590080, metadata !139, metadata !"s", metadata !1, i32 57, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 590080, metadata !139, metadata !"file", metadata !1, i32 58, metadata !60, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 590080, metadata !144, metadata !"p", metadata !1, i32 60, metadata !93, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 589835, metadata !139, i32 60, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 590081, metadata !111, metadata !"dfile", metadata !1, i32 102, metadata !64, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 590081, metadata !111, metadata !"size", metadata !1, i32 102, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 590081, metadata !111, metadata !"contents", metadata !1, i32 102, metadata !60, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 590081, metadata !111, metadata !"name", metadata !1, i32 103, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 590081, metadata !111, metadata !"fill_info", metadata !1, i32 104, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 590081, metadata !111, metadata !"n_fill_info", metadata !1, i32 104, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 590081, metadata !111, metadata !"defaults", metadata !1, i32 105, metadata !10, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 590081, metadata !111, metadata !"is_foreign", metadata !1, i32 105, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 590080, metadata !154, metadata !"s", metadata !1, i32 106, metadata !10, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 589835, metadata !111, i32 105, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 590080, metadata !154, metadata !"sp", metadata !1, i32 107, metadata !7, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 590080, metadata !154, metadata !"sname", metadata !1, i32 108, metadata !157, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !9, metadata !158, i32 0, null} ; [ DW_TAG_array_type ]
!158 = metadata !{metadata !159}
!159 = metadata !{i32 589857, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!160 = metadata !{i32 590080, metadata !154, metadata !"src_name", metadata !1, i32 108, metadata !157, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 590080, metadata !154, metadata !"original_file", metadata !1, i32 116, metadata !60, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 590080, metadata !163, metadata !"i", metadata !1, i32 135, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 589835, metadata !154, i32 136, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 590080, metadata !165, metadata !"ss", metadata !1, i32 185, metadata !78, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 589835, metadata !154, i32 187, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 590081, metadata !114, metadata !"path", metadata !1, i32 346, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!167 = metadata !{i32 590081, metadata !114, metadata !"flags", metadata !1, i32 346, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 590080, metadata !169, metadata !"k", metadata !1, i32 347, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 589835, metadata !114, i32 346, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 590080, metadata !169, metadata !"fsize", metadata !1, i32 348, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 590080, metadata !169, metadata !"def", metadata !1, i32 349, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 590080, metadata !169, metadata !"buf", metadata !1, i32 350, metadata !60, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 590081, metadata !117, metadata !"n_files", metadata !1, i32 220, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 590081, metadata !117, metadata !"file_length", metadata !1, i32 220, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 590081, metadata !117, metadata !"sym_stdout_flag", metadata !1, i32 221, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 590081, metadata !117, metadata !"save_all_writes_flag", metadata !1, i32 221, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 590081, metadata !117, metadata !"n_streams", metadata !1, i32 222, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 590081, metadata !117, metadata !"stream_len", metadata !1, i32 222, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 590081, metadata !117, metadata !"n_dgrams", metadata !1, i32 223, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!180 = metadata !{i32 590081, metadata !117, metadata !"dgram_len", metadata !1, i32 223, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 590081, metadata !117, metadata !"max_failures", metadata !1, i32 224, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 590081, metadata !117, metadata !"one_line_streams", metadata !1, i32 225, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!183 = metadata !{i32 590081, metadata !117, metadata !"stream_fill_info", metadata !1, i32 226, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 590081, metadata !117, metadata !"n_stream_fill_info", metadata !1, i32 226, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 590081, metadata !117, metadata !"dgram_fill_info", metadata !1, i32 227, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 590081, metadata !117, metadata !"n_dgram_fill_info", metadata !1, i32 227, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 590080, metadata !188, metadata !"k", metadata !1, i32 228, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 589835, metadata !117, i32 227, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 590080, metadata !188, metadata !"name", metadata !1, i32 229, metadata !190, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 56, i64 8, i64 0, i32 0, metadata !9, metadata !191, i32 0, null} ; [ DW_TAG_array_type ]
!191 = metadata !{metadata !192}
!192 = metadata !{i32 589857, i64 0, i64 6}       ; [ DW_TAG_subrange_type ]
!193 = metadata !{i32 590080, metadata !188, metadata !"sname", metadata !1, i32 230, metadata !194, i32 0} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 8, i64 0, i32 0, metadata !9, metadata !195, i32 0, null} ; [ DW_TAG_array_type ]
!195 = metadata !{metadata !196}
!196 = metadata !{i32 589857, i64 0, i64 7}       ; [ DW_TAG_subrange_type ]
!197 = metadata !{i32 590080, metadata !188, metadata !"dname", metadata !1, i32 231, metadata !190, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 590080, metadata !188, metadata !"s", metadata !1, i32 233, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 590080, metadata !188, metadata !"i", metadata !1, i32 316, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 590080, metadata !188, metadata !"offset", metadata !1, i32 317, metadata !201, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 589846, metadata !202, metadata !"off_t", metadata !202, i32 93, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ]
!202 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!203 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__one_line_streams", metadata !"__one_line_streams", metadata !"", metadata !1, i32 49, metadata !6, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!204 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__stream_fill_info", metadata !"__stream_fill_info", metadata !"", metadata !1, i32 50, metadata !93, i1 true, i1 true, %struct.fill_info_t** @__stream_fill_info} ; [ DW_TAG_variable ]
!205 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__n_stream_fill_info", metadata !"__n_stream_fill_info", metadata !"", metadata !1, i32 51, metadata !25, i1 true, i1 true, i32* @__n_stream_fill_info} ; [ DW_TAG_variable ]
!206 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__dgram_fill_info", metadata !"__dgram_fill_info", metadata !"", metadata !1, i32 52, metadata !93, i1 true, i1 true, %struct.fill_info_t** @__dgram_fill_info} ; [ DW_TAG_variable ]
!207 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__n_dgram_fill_info", metadata !"__n_dgram_fill_info", metadata !"", metadata !1, i32 53, metadata !25, i1 true, i1 true, i32* @__n_dgram_fill_info} ; [ DW_TAG_variable ]
!208 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__exe_env", metadata !"__exe_env", metadata !"", metadata !1, i32 39, metadata !209, i1 false, i1 true, %struct.exe_sym_env_t* @__exe_env} ; [ DW_TAG_variable ]
!209 = metadata !{i32 589846, metadata !12, metadata !"exe_sym_env_t", metadata !12, i32 101, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ]
!210 = metadata !{i32 589843, metadata !1, metadata !"", metadata !12, i32 88, i64 14464, i64 64, i64 0, i32 0, null, metadata !211, i32 0, null} ; [ DW_TAG_structure_type ]
!211 = metadata !{metadata !212, metadata !227, metadata !229, metadata !230}
!212 = metadata !{i32 589837, metadata !210, metadata !"fds", metadata !12, i32 89, i64 14336, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_member ]
!213 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 14336, i64 64, i64 0, i32 0, metadata !214, metadata !225, i32 0, null} ; [ DW_TAG_array_type ]
!214 = metadata !{i32 589846, metadata !12, metadata !"exe_file_t", metadata !12, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !215} ; [ DW_TAG_typedef ]
!215 = metadata !{i32 589843, metadata !1, metadata !"exe_file_t", metadata !12, i32 44, i64 448, i64 64, i64 0, i32 0, null, metadata !216, i32 0, null} ; [ DW_TAG_structure_type ]
!216 = metadata !{metadata !217, metadata !218, metadata !219, metadata !221, metadata !222, metadata !223, metadata !224}
!217 = metadata !{i32 589837, metadata !215, metadata !"fd", metadata !12, i32 45, i64 32, i64 32, i64 0, i32 0, metadata !6} ; [ DW_TAG_member ]
!218 = metadata !{i32 589837, metadata !215, metadata !"flags", metadata !12, i32 46, i64 32, i64 32, i64 32, i32 0, metadata !25} ; [ DW_TAG_member ]
!219 = metadata !{i32 589837, metadata !215, metadata !"off", metadata !12, i32 49, i64 64, i64 64, i64 64, i32 0, metadata !220} ; [ DW_TAG_member ]
!220 = metadata !{i32 589846, metadata !202, metadata !"off64_t", metadata !202, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ]
!221 = metadata !{i32 589837, metadata !215, metadata !"dfile", metadata !12, i32 50, i64 64, i64 64, i64 128, i32 0, metadata !64} ; [ DW_TAG_member ]
!222 = metadata !{i32 589837, metadata !215, metadata !"local", metadata !12, i32 51, i64 128, i64 64, i64 192, i32 0, metadata !74} ; [ DW_TAG_member ]
!223 = metadata !{i32 589837, metadata !215, metadata !"foreign", metadata !12, i32 52, i64 64, i64 64, i64 320, i32 0, metadata !73} ; [ DW_TAG_member ]
!224 = metadata !{i32 589837, metadata !215, metadata !"domain", metadata !12, i32 56, i64 32, i64 32, i64 384, i32 0, metadata !6} ; [ DW_TAG_member ]
!225 = metadata !{metadata !226}
!226 = metadata !{i32 589857, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!227 = metadata !{i32 589837, metadata !210, metadata !"umask", metadata !12, i32 90, i64 32, i64 32, i64 14336, i32 0, metadata !228} ; [ DW_TAG_member ]
!228 = metadata !{i32 589846, metadata !202, metadata !"mode_t", metadata !202, i32 75, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!229 = metadata !{i32 589837, metadata !210, metadata !"version", metadata !12, i32 91, i64 32, i64 32, i64 14368, i32 0, metadata !25} ; [ DW_TAG_member ]
!230 = metadata !{i32 589837, metadata !210, metadata !"save_all_writes", metadata !12, i32 95, i64 32, i64 32, i64 14400, i32 0, metadata !6} ; [ DW_TAG_member ]
!231 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__exe_fs", metadata !"__exe_fs", metadata !"", metadata !1, i32 26, metadata !232, i1 false, i1 true, %struct.exe_file_system_t* @__exe_fs} ; [ DW_TAG_variable ]
!232 = metadata !{i32 589846, metadata !12, metadata !"exe_file_system_t", metadata !12, i32 88, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ]
!233 = metadata !{i32 589843, metadata !1, metadata !"", metadata !12, i32 59, i64 1216, i64 64, i64 0, i32 0, null, metadata !234, i32 0, null} ; [ DW_TAG_structure_type ]
!234 = metadata !{metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257}
!235 = metadata !{i32 589837, metadata !233, metadata !"n_sym_files", metadata !12, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ]
!236 = metadata !{i32 589837, metadata !233, metadata !"n_sym_files_used", metadata !12, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !25} ; [ DW_TAG_member ]
!237 = metadata !{i32 589837, metadata !233, metadata !"n_cp_files", metadata !12, i32 62, i64 32, i64 32, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ]
!238 = metadata !{i32 589837, metadata !233, metadata !"sym_stdin", metadata !12, i32 63, i64 64, i64 64, i64 128, i32 0, metadata !64} ; [ DW_TAG_member ]
!239 = metadata !{i32 589837, metadata !233, metadata !"sym_stdout", metadata !12, i32 63, i64 64, i64 64, i64 192, i32 0, metadata !64} ; [ DW_TAG_member ]
!240 = metadata !{i32 589837, metadata !233, metadata !"stdout_writes", metadata !12, i32 64, i64 32, i64 32, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ]
!241 = metadata !{i32 589837, metadata !233, metadata !"sym_files", metadata !12, i32 65, i64 64, i64 64, i64 320, i32 0, metadata !64} ; [ DW_TAG_member ]
!242 = metadata !{i32 589837, metadata !233, metadata !"cp_files", metadata !12, i32 66, i64 64, i64 64, i64 384, i32 0, metadata !64} ; [ DW_TAG_member ]
!243 = metadata !{i32 589837, metadata !233, metadata !"n_sym_streams", metadata !12, i32 68, i64 32, i64 32, i64 448, i32 0, metadata !25} ; [ DW_TAG_member ]
!244 = metadata !{i32 589837, metadata !233, metadata !"n_sym_streams_used", metadata !12, i32 69, i64 32, i64 32, i64 480, i32 0, metadata !25} ; [ DW_TAG_member ]
!245 = metadata !{i32 589837, metadata !233, metadata !"sym_streams", metadata !12, i32 70, i64 64, i64 64, i64 512, i32 0, metadata !64} ; [ DW_TAG_member ]
!246 = metadata !{i32 589837, metadata !233, metadata !"n_sym_dgrams", metadata !12, i32 72, i64 32, i64 32, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ]
!247 = metadata !{i32 589837, metadata !233, metadata !"n_sym_dgrams_used", metadata !12, i32 73, i64 32, i64 32, i64 608, i32 0, metadata !25} ; [ DW_TAG_member ]
!248 = metadata !{i32 589837, metadata !233, metadata !"sym_dgrams", metadata !12, i32 74, i64 64, i64 64, i64 640, i32 0, metadata !64} ; [ DW_TAG_member ]
!249 = metadata !{i32 589837, metadata !233, metadata !"max_failures", metadata !12, i32 76, i64 32, i64 32, i64 704, i32 0, metadata !25} ; [ DW_TAG_member ]
!250 = metadata !{i32 589837, metadata !233, metadata !"read_fail", metadata !12, i32 79, i64 64, i64 64, i64 768, i32 0, metadata !251} ; [ DW_TAG_member ]
!251 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!252 = metadata !{i32 589837, metadata !233, metadata !"write_fail", metadata !12, i32 79, i64 64, i64 64, i64 832, i32 0, metadata !251} ; [ DW_TAG_member ]
!253 = metadata !{i32 589837, metadata !233, metadata !"close_fail", metadata !12, i32 79, i64 64, i64 64, i64 896, i32 0, metadata !251} ; [ DW_TAG_member ]
!254 = metadata !{i32 589837, metadata !233, metadata !"ftruncate_fail", metadata !12, i32 79, i64 64, i64 64, i64 960, i32 0, metadata !251} ; [ DW_TAG_member ]
!255 = metadata !{i32 589837, metadata !233, metadata !"getcwd_fail", metadata !12, i32 79, i64 64, i64 64, i64 1024, i32 0, metadata !251} ; [ DW_TAG_member ]
!256 = metadata !{i32 589837, metadata !233, metadata !"chmod_fail", metadata !12, i32 80, i64 64, i64 64, i64 1088, i32 0, metadata !251} ; [ DW_TAG_member ]
!257 = metadata !{i32 589837, metadata !233, metadata !"fchmod_fail", metadata !12, i32 80, i64 64, i64 64, i64 1152, i32 0, metadata !251} ; [ DW_TAG_member ]
!258 = metadata !{i32 325, i32 0, metadata !56, null}
!259 = metadata !{i32 326, i32 0, metadata !129, null}
!260 = metadata !{i32 502, i32 0, metadata !0, metadata !261}
!261 = metadata !{i32 329, i32 0, metadata !129, null}
!262 = metadata !{i32 504, i32 0, metadata !263, metadata !261}
!263 = metadata !{i32 589835, metadata !0, i32 503, i32 0, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 331, i32 0, metadata !129, null}
!265 = metadata !{i32 332, i32 0, metadata !129, null}
!266 = metadata !{i32 333, i32 0, metadata !129, null}
!267 = metadata !{i32 337, i32 0, metadata !129, null}
!268 = metadata !{i32 338, i32 0, metadata !129, null}
!269 = metadata !{i32 340, i32 0, metadata !129, null}
!270 = metadata !{i32 336, i32 0, metadata !129, null}
!271 = metadata !{i32 342, i32 0, metadata !129, null}
!272 = metadata !{i32 343, i32 0, metadata !129, null}
!273 = metadata !{i32 330, i32 0, metadata !129, null}
!274 = metadata !{i32 55, i32 0, metadata !61, null}
!275 = metadata !{i32 58, i32 0, metadata !139, null}
!276 = metadata !{i32 0}
!277 = metadata !{i32 59, i32 0, metadata !139, null}
!278 = metadata !{i32 64, i32 0, metadata !144, null}
!279 = metadata !{i32 65, i32 0, metadata !144, null}
!280 = metadata !{i32 86, i32 0, metadata !144, null}
!281 = metadata !{i32 61, i32 0, metadata !144, null}
!282 = metadata !{i32 67, i32 0, metadata !144, null}
!283 = metadata !{i32 68, i32 0, metadata !144, null}
!284 = metadata !{i32 78, i32 0, metadata !144, null}
!285 = metadata !{i32 75, i32 0, metadata !144, null}
!286 = metadata !{i32 76, i32 0, metadata !144, null}
!287 = metadata !{i32 79, i32 0, metadata !144, null}
!288 = metadata !{i32 84, i32 0, metadata !144, null}
!289 = metadata !{i32 85, i32 0, metadata !144, null}
!290 = metadata !{i32 60, i32 0, metadata !144, null}
!291 = metadata !{i32 87, i32 0, metadata !144, null}
!292 = metadata !{i32 90, i32 0, metadata !144, null}
!293 = metadata !{i32 91, i32 0, metadata !144, null}
!294 = metadata !{i32 88, i32 0, metadata !144, null}
!295 = metadata !{i32 96, i32 0, metadata !144, null}
!296 = metadata !{i32 99, i32 0, metadata !139, null}
!297 = metadata !{i32 102, i32 0, metadata !111, null}
!298 = metadata !{i32 103, i32 0, metadata !111, null}
!299 = metadata !{i32 104, i32 0, metadata !111, null}
!300 = metadata !{i32 105, i32 0, metadata !111, null}
!301 = metadata !{i32 108, i32 0, metadata !154, null}
!302 = metadata !{i32 106, i32 0, metadata !154, null}
!303 = metadata !{i32 109, i32 0, metadata !154, null}
!304 = metadata !{i32 111, i32 0, metadata !154, null}
!305 = metadata !{i32 110, i32 0, metadata !154, null}
!306 = metadata !{i32 113, i32 0, metadata !154, null}
!307 = metadata !{i32 115, i32 0, metadata !154, null}
!308 = metadata !{i8* null}
!309 = metadata !{i32 116, i32 0, metadata !154, null}
!310 = metadata !{i32 122, i32 0, metadata !154, null}
!311 = metadata !{i32 117, i32 0, metadata !154, null}
!312 = metadata !{i32 118, i32 0, metadata !154, null}
!313 = metadata !{i32 119, i32 0, metadata !154, null}
!314 = metadata !{i32 120, i32 0, metadata !154, null}
!315 = metadata !{i32 125, i32 0, metadata !154, null}
!316 = metadata !{i32 126, i32 0, metadata !154, null}
!317 = metadata !{i32 127, i32 0, metadata !154, null}
!318 = metadata !{i32 129, i32 0, metadata !154, null}
!319 = metadata !{i32 130, i32 0, metadata !154, null}
!320 = metadata !{i32 134, i32 0, metadata !154, null}
!321 = metadata !{i32 136, i32 0, metadata !163, null}
!322 = metadata !{i32 137, i32 0, metadata !163, null}
!323 = metadata !{i32 139, i32 0, metadata !163, null}
!324 = metadata !{i32 142, i32 0, metadata !154, null}
!325 = metadata !{i32 143, i32 0, metadata !154, null}
!326 = metadata !{i32 146, i32 0, metadata !154, null}
!327 = metadata !{i32 148, i32 0, metadata !154, null}
!328 = metadata !{i32 153, i32 0, metadata !154, null}
!329 = metadata !{i32 157, i32 0, metadata !154, null}
!330 = metadata !{i32 159, i32 0, metadata !154, null}
!331 = metadata !{i32 160, i32 0, metadata !154, null}
!332 = metadata !{i32 161, i32 0, metadata !154, null}
!333 = metadata !{i32 162, i32 0, metadata !154, null}
!334 = metadata !{i32 163, i32 0, metadata !154, null}
!335 = metadata !{i32 164, i32 0, metadata !154, null}
!336 = metadata !{i32 165, i32 0, metadata !154, null}
!337 = metadata !{i32 166, i32 0, metadata !154, null}
!338 = metadata !{i32 167, i32 0, metadata !154, null}
!339 = metadata !{i32 168, i32 0, metadata !154, null}
!340 = metadata !{i32 169, i32 0, metadata !154, null}
!341 = metadata !{i32 170, i32 0, metadata !154, null}
!342 = metadata !{i32 171, i32 0, metadata !154, null}
!343 = metadata !{i32 172, i32 0, metadata !154, null}
!344 = metadata !{i32 175, i32 0, metadata !154, null}
!345 = metadata !{i32 176, i32 0, metadata !154, null}
!346 = metadata !{i32 178, i32 0, metadata !154, null}
!347 = metadata !{i32 180, i32 0, metadata !154, null}
!348 = metadata !{i32 181, i32 0, metadata !154, null}
!349 = metadata !{i32 183, i32 0, metadata !154, null}
!350 = metadata !{i32 184, i32 0, metadata !154, null}
!351 = metadata !{i32 187, i32 0, metadata !165, null}
!352 = metadata !{i32 189, i32 0, metadata !165, null}
!353 = metadata !{i32 191, i32 0, metadata !165, null}
!354 = metadata !{i32 190, i32 0, metadata !165, null}
!355 = metadata !{i32 193, i32 0, metadata !165, null}
!356 = metadata !{i32 194, i32 0, metadata !165, null}
!357 = metadata !{i32 195, i32 0, metadata !165, null}
!358 = metadata !{i32 200, i32 0, metadata !165, null}
!359 = metadata !{i32 201, i32 0, metadata !165, null}
!360 = metadata !{i32 203, i32 0, metadata !165, null}
!361 = metadata !{i32 346, i32 0, metadata !114, null}
!362 = metadata !{i32 349, i32 0, metadata !169, null}
!363 = metadata !{i32 350, i32 0, metadata !169, null}
!364 = metadata !{i32 352, i32 0, metadata !169, null}
!365 = metadata !{i32 353, i32 0, metadata !169, null}
!366 = metadata !{i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)}
!367 = metadata !{i32 502, i32 0, metadata !0, metadata !368}
!368 = metadata !{i32 355, i32 0, metadata !169, null}
!369 = metadata !{i32 504, i32 0, metadata !263, metadata !368}
!370 = metadata !{i32 356, i32 0, metadata !169, null}
!371 = metadata !{i32 357, i32 0, metadata !169, null}
!372 = metadata !{i32 358, i32 0, metadata !169, null}
!373 = metadata !{i32 360, i32 0, metadata !169, null}
!374 = metadata !{i32 361, i32 0, metadata !169, null}
!375 = metadata !{i32 362, i32 0, metadata !169, null}
!376 = metadata !{i32 354, i32 0, metadata !169, null}
!377 = metadata !{i32 220, i32 0, metadata !117, null}
!378 = metadata !{i32 221, i32 0, metadata !117, null}
!379 = metadata !{i32 222, i32 0, metadata !117, null}
!380 = metadata !{i32 223, i32 0, metadata !117, null}
!381 = metadata !{i32 224, i32 0, metadata !117, null}
!382 = metadata !{i32 225, i32 0, metadata !117, null}
!383 = metadata !{i32 226, i32 0, metadata !117, null}
!384 = metadata !{i32 227, i32 0, metadata !117, null}
!385 = metadata !{i32 229, i32 0, metadata !188, null}
!386 = metadata !{i32 230, i32 0, metadata !188, null}
!387 = metadata !{i32 231, i32 0, metadata !188, null}
!388 = metadata !{i32 233, i32 0, metadata !188, null}
!389 = metadata !{i32 502, i32 0, metadata !0, metadata !390}
!390 = metadata !{i32 235, i32 0, metadata !188, null}
!391 = metadata !{i32 504, i32 0, metadata !263, metadata !390}
!392 = metadata !{i32 238, i32 0, metadata !188, null}
!393 = metadata !{i32 239, i32 0, metadata !188, null}
!394 = metadata !{i32 240, i32 0, metadata !188, null}
!395 = metadata !{i32 241, i32 0, metadata !188, null}
!396 = metadata !{i32 244, i32 0, metadata !188, null}
!397 = metadata !{i32 245, i32 0, metadata !188, null}
!398 = metadata !{i32 246, i32 0, metadata !188, null}
!399 = metadata !{i32 248, i32 0, metadata !188, null}
!400 = metadata !{i32 249, i32 0, metadata !188, null}
!401 = metadata !{i32 250, i32 0, metadata !188, null}
!402 = metadata !{i32 252, i32 0, metadata !188, null}
!403 = metadata !{i32 253, i32 0, metadata !188, null}
!404 = metadata !{i32 254, i32 0, metadata !188, null}
!405 = metadata !{i32 257, i32 0, metadata !188, null}
!406 = metadata !{i32 258, i32 0, metadata !188, null}
!407 = metadata !{i32 259, i32 0, metadata !188, null}
!408 = metadata !{i32 260, i32 0, metadata !188, null}
!409 = metadata !{i32 262, i32 0, metadata !188, null}
!410 = metadata !{i32 264, i32 0, metadata !188, null}
!411 = metadata !{i32 265, i32 0, metadata !188, null}
!412 = metadata !{i32 266, i32 0, metadata !188, null}
!413 = metadata !{i32 267, i32 0, metadata !188, null}
!414 = metadata !{i32 268, i32 0, metadata !188, null}
!415 = metadata !{i32 269, i32 0, metadata !188, null}
!416 = metadata !{i32 270, i32 0, metadata !188, null}
!417 = metadata !{i32 272, i32 0, metadata !188, null}
!418 = metadata !{i32 273, i32 0, metadata !188, null}
!419 = metadata !{i32 274, i32 0, metadata !188, null}
!420 = metadata !{i32 275, i32 0, metadata !188, null}
!421 = metadata !{i32 276, i32 0, metadata !188, null}
!422 = metadata !{i32 280, i32 0, metadata !188, null}
!423 = metadata !{i32 281, i32 0, metadata !188, null}
!424 = metadata !{i32 282, i32 0, metadata !188, null}
!425 = metadata !{i32 283, i32 0, metadata !188, null}
!426 = metadata !{i32 284, i32 0, metadata !188, null}
!427 = metadata !{i32 286, i32 0, metadata !188, null}
!428 = metadata !{i32 288, i32 0, metadata !188, null}
!429 = metadata !{i8* getelementptr inbounds ([14 x i8]* @.str18, i64 0, i64 0)}
!430 = metadata !{i32 205, i32 0, metadata !53, metadata !431}
!431 = metadata !{i32 289, i32 0, metadata !188, null}
!432 = metadata !{i32 206, i32 0, metadata !124, metadata !431}
!433 = metadata !{i32 207, i32 0, metadata !124, metadata !431}
!434 = metadata !{i32 208, i32 0, metadata !124, metadata !431}
!435 = metadata !{i32 290, i32 0, metadata !188, null}
!436 = metadata !{i32 293, i32 0, metadata !188, null}
!437 = metadata !{i32 294, i32 0, metadata !188, null}
!438 = metadata !{i32 295, i32 0, metadata !188, null}
!439 = metadata !{i32 296, i32 0, metadata !188, null}
!440 = metadata !{i32 297, i32 0, metadata !188, null}
!441 = metadata !{i32 298, i32 0, metadata !188, null}
!442 = metadata !{i32 299, i32 0, metadata !188, null}
!443 = metadata !{i32 301, i32 0, metadata !188, null}
!444 = metadata !{i32 305, i32 0, metadata !188, null}
!445 = metadata !{i32 306, i32 0, metadata !188, null}
!446 = metadata !{i32 307, i32 0, metadata !188, null}
!447 = metadata !{i32 308, i32 0, metadata !188, null}
!448 = metadata !{i32 309, i32 0, metadata !188, null}
!449 = metadata !{i32 310, i32 0, metadata !188, null}
!450 = metadata !{i32 311, i32 0, metadata !188, null}
!451 = metadata !{i32 313, i32 0, metadata !188, null}
!452 = metadata !{i32 318, i32 0, metadata !188, null}
!453 = metadata !{i32 319, i32 0, metadata !188, null}
!454 = metadata !{i32 320, i32 0, metadata !188, null}
!455 = metadata !{i32 321, i32 0, metadata !188, null}
!456 = metadata !{i32 323, i32 0, metadata !188, null}
