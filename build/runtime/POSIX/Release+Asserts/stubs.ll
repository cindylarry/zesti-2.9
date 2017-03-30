; ModuleID = '/home/klee/zesti-2.9/runtime/POSIX/stubs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { [4 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.anon = type { i32, i32 }
%struct.exe_disk_file_t = type { i32, i8*, i8*, %struct.stat64*, %struct.exe_sockaddr_t* }
%struct.exe_file_system_t = type { i32, i32, i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, i32, %struct.exe_disk_file_t*, i32, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t*, %struct.exe_sockaddr_t, %struct.exe_sockaddr_t*, i32 }
%struct.exe_sockaddr_t = type { %struct.sockaddr_storage*, i32 }
%struct.in6_addr = type { %0 }
%struct.in_addr = type { i32 }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_storage = type { i16, i64, [112 x i8] }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.anon = type { void (i32)* }

@__exe_fs = external unnamed_addr global %struct.exe_file_system_t
@.str = private unnamed_addr constant [19 x i8] c"(f->foreign)->addr\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"/home/klee/zesti-2.9/runtime/POSIX/sockets.c.inc\00", align 8
@__PRETTY_FUNCTION__.7242 = internal unnamed_addr constant [18 x i8] c"__fd_attach_dgram\00", align 16
@.str2 = private unnamed_addr constant [26 x i8] c"0 && \22unsupported domain\22\00", align 1
@dummy_dfile = internal unnamed_addr global %struct.exe_disk_file_t zeroinitializer, align 32
@.str3 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@.str4 = private unnamed_addr constant [25 x i8] c"0 && \22not supported yet\22\00", align 1
@__PRETTY_FUNCTION__.7210 = internal unnamed_addr constant [13 x i8] c"__fd_recvmsg\00"
@.str5 = private unnamed_addr constant [28 x i8] c"flags is not zero, ignoring\00", align 1
@__PRETTY_FUNCTION__.7110 = internal unnamed_addr constant [13 x i8] c"__fd_sendmsg\00"
@.str6 = private unnamed_addr constant [17 x i8] c"f->foreign->addr\00", align 1
@__PRETTY_FUNCTION__.6950 = internal unnamed_addr constant [12 x i8] c"getpeername\00"
@.str7 = private unnamed_addr constant [14 x i8] c"f->local.addr\00", align 1
@__PRETTY_FUNCTION__.6912 = internal unnamed_addr constant [12 x i8] c"getsockname\00"
@__PRETTY_FUNCTION__.6676 = internal unnamed_addr constant [8 x i8] c"connect\00"
@.str8 = private unnamed_addr constant [575 x i8] c"((((f->foreign)->addr) ? (void) (0) : __assert_fail (\22(f->foreign)->addr\22, \22/home/klee/zesti-2.9/runtime/POSIX/sockets.c.inc\22, 337, __PRETTY_FUNCTION__)), ( ((struct sockaddr *)((f->foreign)->addr))->sa_family == 2 ? ((struct sockaddr_in *)((f->foreign)->addr))->sin_port : ((struct sockaddr *)((f->foreign)->addr))->sa_family == 10 ? ((struct sockaddr_in6 *)((f->foreign)->addr))->sin6_port : (((0 && \22unsupported domain\22) ? (void) (0) : __assert_fail (\220 && \5C\22unsupported domain\5C\22\22, \22/home/klee/zesti-2.9/runtime/POSIX/sockets.c.inc\22, 337, __PRETTY_FUNCTION__)), 0)) != 0)\00", align 8
@__PRETTY_FUNCTION__.6604 = internal unnamed_addr constant [5 x i8] c"bind\00"
@.str10 = private unnamed_addr constant [48 x i8] c"Calling rename with possibly symbolic arguments\00", align 8
@.str11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@__PRETTY_FUNCTION__.6452 = internal unnamed_addr constant [20 x i8] c"__allocate_sockaddr\00", align 16
@.str12 = private unnamed_addr constant [25 x i8] c"No more symbolic streams\00", align 1
@.str13 = private unnamed_addr constant [25 x i8] c"No more file descriptors\00", align 1
@.str14 = private unnamed_addr constant [24 x i8] c"unsupported socket type\00", align 1
@.str15 = private unnamed_addr constant [28 x i8] c"unsupported socket protocol\00", align 1
@.str16 = private unnamed_addr constant [20 x i8] c"ignoring setsockopt\00", align 1
@.str17 = private unnamed_addr constant [20 x i8] c"ignoring getsockopt\00", align 1
@.str18 = private unnamed_addr constant [46 x i8] c"__socketcall(type=%d: unknown): errno=ENOSYS\0A\00", align 8
@.str19 = private unnamed_addr constant [18 x i8] c"silently ignoring\00", align 1

define weak i32 @__syscall_rt_sigaction(i32 %signum, %struct.sigaction* %act, %struct.sigaction* %oldact, i64 %_something) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %signum}, i64 0, metadata !585), !dbg !589
  tail call void @llvm.dbg.value(metadata !{%struct.sigaction* %act}, i64 0, metadata !586), !dbg !589
  tail call void @llvm.dbg.value(metadata !{%struct.sigaction* %oldact}, i64 0, metadata !587), !dbg !590
  tail call void @llvm.dbg.value(metadata !{i64 %_something}, i64 0, metadata !588), !dbg !590
  tail call void @klee_warning_once(i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0)) nounwind, !dbg !591
  ret i32 0, !dbg !593
}

define weak i32 @_IO_getc(%struct._IO_FILE* %f) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %f}, i64 0, metadata !584), !dbg !594
  %0 = tail call i32 @__fgetc_unlocked(%struct._IO_FILE* %f) nounwind, !dbg !595
  ret i32 %0, !dbg !595
}

define weak i32 @_IO_putc(i32 %c, %struct._IO_FILE* %f) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !582), !dbg !597
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %f}, i64 0, metadata !583), !dbg !597
  %0 = tail call i32 @__fputc_unlocked(i32 %c, %struct._IO_FILE* %f) nounwind, !dbg !598
  ret i32 %0, !dbg !598
}

define weak i32 @rename(i8* %oldpath, i8* %newpath) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %oldpath}, i64 0, metadata !527), !dbg !600
  tail call void @llvm.dbg.value(metadata !{i8* %newpath}, i64 0, metadata !528), !dbg !600
  tail call void @klee_warning(i8* getelementptr inbounds ([48 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !601
  %0 = tail call i64 (i64, ...)* @syscall(i64 82, i8* %oldpath, i8* %newpath) nounwind, !dbg !602
  %1 = trunc i64 %0 to i32, !dbg !602
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !529), !dbg !602
  %2 = icmp eq i32 %1, -1, !dbg !603
  br i1 %2, label %bb, label %bb1, !dbg !603

bb:                                               ; preds = %entry
  %3 = tail call i32* @__errno_location() nounwind readnone, !dbg !604
  %4 = tail call i32 @klee_get_errno() nounwind, !dbg !604
  store i32 %4, i32* %3, align 4, !dbg !604
  br label %bb1, !dbg !604

bb1:                                              ; preds = %bb, %entry
  ret i32 %1, !dbg !605
}

define weak i32 @clock_gettime(i32 %clk_id, %struct.timespec* %res) nounwind {
entry:
  %tv = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata !{i32 %clk_id}, i64 0, metadata !572), !dbg !606
  call void @llvm.dbg.value(metadata !{%struct.timespec* %res}, i64 0, metadata !573), !dbg !606
  call void @llvm.dbg.declare(metadata !{%struct.timespec* %tv}, metadata !574), !dbg !607
  %0 = call i32 @gettimeofday(%struct.timespec* noalias %tv, %struct.anon* noalias null) nounwind, !dbg !608
  %1 = getelementptr inbounds %struct.timespec* %tv, i64 0, i32 0, !dbg !609
  %2 = load i64* %1, align 8, !dbg !609
  %3 = getelementptr inbounds %struct.timespec* %res, i64 0, i32 0, !dbg !609
  store i64 %2, i64* %3, align 8, !dbg !609
  %4 = getelementptr inbounds %struct.timespec* %tv, i64 0, i32 1, !dbg !610
  %5 = load i64* %4, align 8, !dbg !610
  %6 = mul nsw i64 %5, 1000, !dbg !610
  %7 = getelementptr inbounds %struct.timespec* %res, i64 0, i32 1, !dbg !610
  store i64 %6, i64* %7, align 8, !dbg !610
  ret i32 0, !dbg !611
}

define weak i32 @clock_settime(i32 %clk_id, %struct.timespec* %res) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %clk_id}, i64 0, metadata !397), !dbg !612
  tail call void @llvm.dbg.value(metadata !{%struct.timespec* %res}, i64 0, metadata !398), !dbg !612
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !613
  %0 = tail call i32* @__errno_location() nounwind readnone, !dbg !615
  store i32 1, i32* %0, align 4, !dbg !615
  ret i32 -1, !dbg !616
}

define i32 @strverscmp(i8* nocapture %__s1, i8* nocapture %__s2) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %__s1}, i64 0, metadata !566), !dbg !617
  tail call void @llvm.dbg.value(metadata !{i8* %__s2}, i64 0, metadata !567), !dbg !617
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !568), !dbg !618
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !571), !dbg !618
  %0 = tail call i32 @strcmp(i8* %__s1, i8* %__s2) nounwind readonly, !dbg !618
  ret i32 %0, !dbg !619
}

define weak i32 @gnu_dev_major(i64 %__dev) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %__dev}, i64 0, metadata !378), !dbg !620
  %0 = lshr i64 %__dev, 8, !dbg !621
  %1 = trunc i64 %0 to i32, !dbg !621
  %2 = and i32 %1, 4095, !dbg !621
  %3 = lshr i64 %__dev, 32, !dbg !621
  %4 = trunc i64 %3 to i32, !dbg !621
  %5 = and i32 %4, -4096, !dbg !621
  %6 = or i32 %2, %5, !dbg !621
  ret i32 %6, !dbg !621
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i32 @gnu_dev_minor(i64 %__dev) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %__dev}, i64 0, metadata !379), !dbg !623
  %0 = trunc i64 %__dev to i32, !dbg !624
  %1 = and i32 %0, 255, !dbg !624
  %2 = lshr i64 %__dev, 12, !dbg !624
  %3 = trunc i64 %2 to i32, !dbg !624
  %4 = and i32 %3, -256, !dbg !624
  %5 = or i32 %4, %1, !dbg !624
  ret i32 %5, !dbg !624
}

define weak i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %__major}, i64 0, metadata !380), !dbg !626
  tail call void @llvm.dbg.value(metadata !{i32 %__minor}, i64 0, metadata !381), !dbg !626
  %0 = and i32 %__minor, 255, !dbg !627
  %1 = shl i32 %__major, 8
  %2 = and i32 %1, 1048320, !dbg !627
  %3 = or i32 %0, %2, !dbg !627
  %4 = zext i32 %3 to i64, !dbg !627
  %5 = zext i32 %__minor to i64, !dbg !627
  %6 = shl nuw nsw i64 %5, 12
  %7 = and i64 %6, 17592184995840, !dbg !627
  %8 = zext i32 %__major to i64, !dbg !627
  %9 = shl nuw i64 %8, 32
  %10 = and i64 %9, -17592186044416, !dbg !627
  %11 = or i64 %7, %10, !dbg !627
  %12 = or i64 %11, %4, !dbg !627
  ret i64 %12, !dbg !627
}

define i32 @getsockopt(i32 %sockfd, i32 %level, i32 %optname, i8* nocapture %optval, i32* nocapture %optlen) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !382), !dbg !629
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !383), !dbg !629
  tail call void @llvm.dbg.value(metadata !{i32 %optname}, i64 0, metadata !384), !dbg !629
  tail call void @llvm.dbg.value(metadata !{i8* %optval}, i64 0, metadata !385), !dbg !630
  tail call void @llvm.dbg.value(metadata !{i32* %optlen}, i64 0, metadata !386), !dbg !630
  ret i32 0, !dbg !631
}

define i32 @setsockopt(i32 %sockfd, i32 %level, i32 %optname, i8* nocapture %optval, i32 %optlen) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !387), !dbg !633
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !388), !dbg !633
  tail call void @llvm.dbg.value(metadata !{i32 %optname}, i64 0, metadata !389), !dbg !633
  tail call void @llvm.dbg.value(metadata !{i8* %optval}, i64 0, metadata !390), !dbg !634
  tail call void @llvm.dbg.value(metadata !{i32 %optlen}, i64 0, metadata !391), !dbg !634
  ret i32 0, !dbg !635
}

define i64 @__fd_attach_dgram(%struct.exe_file_t* nocapture %f) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %f}, i64 0, metadata !392), !dbg !637
  %0 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 1, !dbg !638
  %1 = load i32* %0, align 4, !dbg !638
  %2 = and i32 %1, 32, !dbg !638
  %3 = icmp eq i32 %2, 0, !dbg !638
  br i1 %3, label %bb, label %bb9, !dbg !638

bb:                                               ; preds = %entry
  %4 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 5, !dbg !640
  %5 = load %struct.exe_sockaddr_t** %4, align 8, !dbg !640
  %6 = getelementptr inbounds %struct.exe_sockaddr_t* %5, i64 0, i32 0, !dbg !640
  %7 = load %struct.sockaddr_storage** %6, align 8, !dbg !640
  %8 = icmp eq %struct.sockaddr_storage* %7, null, !dbg !640
  br i1 %8, label %bb1, label %bb2, !dbg !640

bb1:                                              ; preds = %bb
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 840, i8* getelementptr inbounds ([18 x i8]* @__PRETTY_FUNCTION__.7242, i64 0, i64 0)) noreturn nounwind, !dbg !640
  unreachable, !dbg !640

bb2:                                              ; preds = %bb
  %9 = getelementptr inbounds %struct.sockaddr_storage* %7, i64 0, i32 0, !dbg !640
  %10 = load i16* %9, align 2, !dbg !640
  switch i16 %10, label %bb6 [
    i16 2, label %bb3
    i16 10, label %bb5
  ]

bb3:                                              ; preds = %bb2
  %11 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in*, !dbg !640
  %12 = getelementptr inbounds %struct.sockaddr_in* %11, i64 0, i32 1, !dbg !640
  %13 = load i16* %12, align 2, !dbg !640
  %14 = icmp eq i16 %13, 0, !dbg !640
  %15 = zext i1 %14 to i8, !dbg !640
  br label %bb7, !dbg !640

bb5:                                              ; preds = %bb2
  %16 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in6*, !dbg !640
  %17 = getelementptr inbounds %struct.sockaddr_in6* %16, i64 0, i32 1, !dbg !640
  %18 = load i16* %17, align 2, !dbg !640
  %19 = icmp eq i16 %18, 0, !dbg !640
  %20 = zext i1 %19 to i8, !dbg !640
  br label %bb7, !dbg !640

bb6:                                              ; preds = %bb2
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 840, i8* getelementptr inbounds ([18 x i8]* @__PRETTY_FUNCTION__.7242, i64 0, i64 0)) noreturn nounwind, !dbg !640
  unreachable, !dbg !640

bb7:                                              ; preds = %bb5, %bb3
  %iftmp.121.0 = phi i8 [ %15, %bb3 ], [ %20, %bb5 ]
  %toBool = icmp eq i8 %iftmp.121.0, 0, !dbg !640
  br i1 %toBool, label %bb12, label %bb8, !dbg !640

bb8:                                              ; preds = %bb7
  %21 = tail call i32* @__errno_location() nounwind readnone, !dbg !641
  store i32 107, i32* %21, align 4, !dbg !641
  br label %bb12, !dbg !642

bb9:                                              ; preds = %entry
  %22 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 2, !dbg !643
  store i64 0, i64* %22, align 8, !dbg !643
  %23 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 4, !dbg !644
  %24 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 11), align 8, !dbg !644
  %25 = icmp ult i32 %23, %24, !dbg !644
  br i1 %25, label %__get_sym_dgram.exit, label %__get_sym_dgram.exit.thread, !dbg !644

__get_sym_dgram.exit.thread:                      ; preds = %bb9
  %26 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 3, !dbg !646
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** %26, align 8, !dbg !646
  br label %bb10

__get_sym_dgram.exit:                             ; preds = %bb9
  %27 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 13), align 8, !dbg !647
  %28 = zext i32 %23 to i64, !dbg !647
  %29 = getelementptr inbounds %struct.exe_disk_file_t* %27, i64 %28, !dbg !647
  %30 = add i32 %23, 1, !dbg !647
  store i32 %30, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 4, !dbg !647
  %31 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 3, !dbg !646
  store %struct.exe_disk_file_t* %29, %struct.exe_disk_file_t** %31, align 8, !dbg !646
  %32 = icmp eq %struct.exe_disk_file_t* %29, null, !dbg !648
  br i1 %32, label %bb10, label %bb12, !dbg !648

bb10:                                             ; preds = %__get_sym_dgram.exit.thread, %__get_sym_dgram.exit
  %33 = phi %struct.exe_disk_file_t** [ %26, %__get_sym_dgram.exit.thread ], [ %31, %__get_sym_dgram.exit ]
  store %struct.exe_disk_file_t* @dummy_dfile, %struct.exe_disk_file_t** %33, align 8, !dbg !649
  %34 = tail call i32* @__errno_location() nounwind readnone, !dbg !650
  store i32 111, i32* %34, align 4, !dbg !650
  br label %bb12, !dbg !651

bb12:                                             ; preds = %__get_sym_dgram.exit, %bb7, %bb10, %bb8
  %.0 = phi i64 [ -1, %bb8 ], [ -1, %bb10 ], [ 0, %bb7 ], [ 0, %__get_sym_dgram.exit ]
  ret i64 %.0, !dbg !642
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i32* @__errno_location() nounwind readnone

define weak i8* @getenv(i8* %b) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !394), !dbg !652
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !653
  ret i8* null, !dbg !655
}

declare void @klee_warning(i8*)

define weak i8* @setlocale(i32 %a, i8* %b) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !395), !dbg !656
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !396), !dbg !656
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !657
  ret i8* null, !dbg !659
}

define i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !399), !dbg !660
  tail call void @llvm.dbg.value(metadata !{%struct.msghdr* %msg}, i64 0, metadata !400), !dbg !660
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !401), !dbg !660
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %fd) nounwind, !dbg !661
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !402), !dbg !661
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !662
  br i1 %1, label %bb, label %bb1, !dbg !662

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !663
  store i32 9, i32* %2, align 4, !dbg !663
  br label %bb14, !dbg !664

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !665
  %4 = load i32* %3, align 4, !dbg !665
  %5 = and i32 %4, 16, !dbg !665
  %6 = icmp eq i32 %5, 0, !dbg !665
  br i1 %6, label %bb2, label %bb3, !dbg !665

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !666
  store i32 88, i32* %7, align 4, !dbg !666
  br label %bb14, !dbg !667

bb3:                                              ; preds = %bb1
  %8 = icmp eq %struct.msghdr* %msg, null, !dbg !668
  br i1 %8, label %bb4, label %bb5, !dbg !668

bb4:                                              ; preds = %bb3
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !669
  store i32 14, i32* %9, align 4, !dbg !669
  br label %bb14, !dbg !670

bb5:                                              ; preds = %bb3
  %10 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !671
  %11 = load %struct.exe_disk_file_t** %10, align 8, !dbg !671
  %12 = icmp eq %struct.exe_disk_file_t* %11, null, !dbg !671
  br i1 %12, label %bb6, label %bb7, !dbg !671

bb6:                                              ; preds = %bb5
  tail call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 818, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7210, i64 0, i64 0)) noreturn nounwind, !dbg !672
  unreachable, !dbg !672

bb7:                                              ; preds = %bb5
  %13 = tail call i64 @__fd_attach_dgram(%struct.exe_file_t* %0) nounwind, !dbg !673
  %14 = icmp slt i64 %13, 0, !dbg !673
  br i1 %14, label %bb14, label %bb9, !dbg !673

bb9:                                              ; preds = %bb7
  %15 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !674
  %16 = load i8** %15, align 8, !dbg !674
  %17 = icmp eq i8* %16, null, !dbg !674
  %.pre = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 1, !dbg !675
  br i1 %17, label %bb11, label %bb10, !dbg !674

bb10:                                             ; preds = %bb9
  %18 = load i32* %.pre, align 8, !dbg !676
  %19 = zext i32 %18 to i64, !dbg !676
  tail call void @klee_check_memory_access(i8* %16, i64 %19) nounwind, !dbg !676
  %20 = load %struct.exe_disk_file_t** %10, align 8, !dbg !677
  %21 = getelementptr inbounds %struct.exe_disk_file_t* %20, i64 0, i32 4, !dbg !677
  %22 = load %struct.exe_sockaddr_t** %21, align 8, !dbg !677
  %23 = getelementptr inbounds %struct.exe_sockaddr_t* %22, i64 0, i32 1, !dbg !677
  %24 = load i32* %23, align 8, !dbg !677
  %25 = zext i32 %24 to i64, !dbg !677
  %26 = getelementptr inbounds %struct.exe_sockaddr_t* %22, i64 0, i32 0, !dbg !677
  %27 = load %struct.sockaddr_storage** %26, align 8, !dbg !677
  %28 = load i8** %15, align 8, !dbg !677
  %29 = bitcast %struct.sockaddr_storage* %27 to i8*, !dbg !677
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 %25, i32 1, i1 false), !dbg !677
  br label %bb11, !dbg !677

bb11:                                             ; preds = %bb9, %bb10
  %30 = load %struct.exe_disk_file_t** %10, align 8, !dbg !675
  %31 = getelementptr inbounds %struct.exe_disk_file_t* %30, i64 0, i32 4, !dbg !675
  %32 = load %struct.exe_sockaddr_t** %31, align 8, !dbg !675
  %33 = getelementptr inbounds %struct.exe_sockaddr_t* %32, i64 0, i32 1, !dbg !675
  %34 = load i32* %33, align 8, !dbg !675
  store i32 %34, i32* %.pre, align 8, !dbg !675
  %35 = icmp eq i32 %flags, 0, !dbg !678
  br i1 %35, label %bb13, label %bb12, !dbg !678

bb12:                                             ; preds = %bb11
  tail call void @klee_warning(i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !679
  br label %bb13, !dbg !679

bb13:                                             ; preds = %bb11, %bb12
  %36 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 3, !dbg !680
  %37 = load i64* %36, align 8, !dbg !680
  %38 = trunc i64 %37 to i32, !dbg !680
  %39 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 2, !dbg !680
  %40 = load %struct.iovec** %39, align 8, !dbg !680
  %41 = tail call i64 @__fd_scatter_read(%struct.exe_file_t* %0, %struct.iovec* %40, i32 %38) nounwind, !dbg !680
  br label %bb14, !dbg !680

bb14:                                             ; preds = %bb7, %bb13, %bb4, %bb2, %bb
  %.0 = phi i64 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %41, %bb13 ], [ -1, %bb7 ]
  ret i64 %.0, !dbg !664
}

declare %struct.exe_file_t* @__get_file(i32)

declare void @klee_check_memory_access(i8*, i64)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i64 @__fd_scatter_read(%struct.exe_file_t*, %struct.iovec*, i32)

define i64 @recvmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !406), !dbg !681
  tail call void @llvm.dbg.value(metadata !{%struct.msghdr* %msg}, i64 0, metadata !407), !dbg !681
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !408), !dbg !681
  %0 = tail call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind, !dbg !682
  ret i64 %0, !dbg !682
}

define i64 @__fd_recvfrom(i32 %fd, i8* %buf, i64 %len, i32 %flags, %struct.sockaddr* %from, i32* %fromlen) nounwind {
entry:
  %iov = alloca %struct.iovec, align 8
  %msg = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !409), !dbg !684
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !410), !dbg !684
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !411), !dbg !684
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !412), !dbg !684
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %from}, i64 0, metadata !413), !dbg !684
  call void @llvm.dbg.value(metadata !{i32* %fromlen}, i64 0, metadata !414), !dbg !684
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov}, metadata !415), !dbg !685
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg}, metadata !417), !dbg !686
  %0 = icmp ne %struct.sockaddr* %from, null, !dbg !687
  %1 = icmp eq i32* %fromlen, null, !dbg !687
  %2 = and i1 %0, %1, !dbg !687
  br i1 %2, label %bb, label %bb3, !dbg !687

bb:                                               ; preds = %entry
  %3 = call i32* @__errno_location() nounwind readnone, !dbg !688
  store i32 14, i32* %3, align 4, !dbg !688
  br label %bb9, !dbg !689

bb3:                                              ; preds = %entry
  %4 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 0, !dbg !690
  store i8* %buf, i8** %4, align 8, !dbg !690
  %5 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 1, !dbg !691
  store i64 %len, i64* %5, align 8, !dbg !691
  %6 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !692
  %7 = bitcast %struct.sockaddr* %from to i8*, !dbg !692
  store i8* %7, i8** %6, align 8, !dbg !692
  br i1 %1, label %bb6, label %bb4, !dbg !693

bb4:                                              ; preds = %bb3
  %8 = load i32* %fromlen, align 4, !dbg !693
  br label %bb6, !dbg !693

bb6:                                              ; preds = %bb3, %bb4
  %iftmp.113.0 = phi i32 [ %8, %bb4 ], [ 0, %bb3 ]
  %9 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 1, !dbg !693
  store i32 %iftmp.113.0, i32* %9, align 8, !dbg !693
  %10 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 2, !dbg !694
  store %struct.iovec* %iov, %struct.iovec** %10, align 8, !dbg !694
  %11 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 3, !dbg !695
  store i64 1, i64* %11, align 8, !dbg !695
  %12 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 4, !dbg !696
  store i8* null, i8** %12, align 8, !dbg !696
  %13 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 5, !dbg !697
  store i64 0, i64* %13, align 8, !dbg !697
  %14 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 6, !dbg !698
  store i32 %flags, i32* %14, align 8, !dbg !698
  %15 = call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind, !dbg !699
  call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !418), !dbg !699
  br i1 %1, label %bb9, label %bb7, !dbg !700

bb7:                                              ; preds = %bb6
  %16 = load i32* %9, align 8, !dbg !700
  store i32 %16, i32* %fromlen, align 4, !dbg !700
  br label %bb9, !dbg !700

bb9:                                              ; preds = %bb7, %bb6, %bb
  %.0 = phi i64 [ -1, %bb ], [ %15, %bb6 ], [ %15, %bb7 ]
  ret i64 %.0, !dbg !689
}

define i64 @recvfrom(i32 %fd, i8* %buf, i64 %len, i32 %flags, %struct.sockaddr* %from, i32* %fromlen) nounwind {
entry:
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !419), !dbg !701
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !420), !dbg !701
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !421), !dbg !701
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !422), !dbg !701
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %from}, i64 0, metadata !423), !dbg !701
  call void @llvm.dbg.value(metadata !{i32* %fromlen}, i64 0, metadata !424), !dbg !701
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !409) nounwind, !dbg !702
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !410) nounwind, !dbg !702
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !411) nounwind, !dbg !702
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !412) nounwind, !dbg !702
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %from}, i64 0, metadata !413) nounwind, !dbg !702
  call void @llvm.dbg.value(metadata !{i32* %fromlen}, i64 0, metadata !414) nounwind, !dbg !702
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !415) nounwind, !dbg !705
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !417) nounwind, !dbg !706
  %0 = icmp ne %struct.sockaddr* %from, null, !dbg !707
  %1 = icmp eq i32* %fromlen, null, !dbg !707
  %2 = and i1 %0, %1, !dbg !707
  br i1 %2, label %bb.i, label %bb3.i, !dbg !707

bb.i:                                             ; preds = %entry
  %3 = call i32* @__errno_location() nounwind readnone, !dbg !708
  store i32 14, i32* %3, align 4, !dbg !708
  br label %__fd_recvfrom.exit, !dbg !709

bb3.i:                                            ; preds = %entry
  %4 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !710
  store i8* %buf, i8** %4, align 8, !dbg !710
  %5 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !711
  store i64 %len, i64* %5, align 8, !dbg !711
  %6 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !712
  %7 = bitcast %struct.sockaddr* %from to i8*, !dbg !712
  store i8* %7, i8** %6, align 8, !dbg !712
  br i1 %1, label %bb6.i, label %bb4.i, !dbg !713

bb4.i:                                            ; preds = %bb3.i
  %8 = load i32* %fromlen, align 4, !dbg !713
  br label %bb6.i, !dbg !713

bb6.i:                                            ; preds = %bb4.i, %bb3.i
  %iftmp.113.0.i = phi i32 [ %8, %bb4.i ], [ 0, %bb3.i ]
  %9 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !713
  store i32 %iftmp.113.0.i, i32* %9, align 8, !dbg !713
  %10 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !714
  store %struct.iovec* %iov.i, %struct.iovec** %10, align 8, !dbg !714
  %11 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !715
  store i64 1, i64* %11, align 8, !dbg !715
  %12 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !716
  store i8* null, i8** %12, align 8, !dbg !716
  %13 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !717
  store i64 0, i64* %13, align 8, !dbg !717
  %14 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !718
  store i32 %flags, i32* %14, align 8, !dbg !718
  %15 = call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg.i, i32 %flags) nounwind, !dbg !719
  call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !418) nounwind, !dbg !719
  br i1 %1, label %__fd_recvfrom.exit, label %bb7.i, !dbg !720

bb7.i:                                            ; preds = %bb6.i
  %16 = load i32* %9, align 8, !dbg !720
  store i32 %16, i32* %fromlen, align 4, !dbg !720
  br label %__fd_recvfrom.exit, !dbg !720

__fd_recvfrom.exit:                               ; preds = %bb.i, %bb6.i, %bb7.i
  %.0.i = phi i64 [ -1, %bb.i ], [ %15, %bb6.i ], [ %15, %bb7.i ]
  ret i64 %.0.i, !dbg !703
}

define i64 @__fd_recv(i32 %fd, i8* %buf, i64 %len, i32 %flags) nounwind {
__fd_recvfrom.exit:
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !425), !dbg !721
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !426), !dbg !721
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !427), !dbg !721
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !428), !dbg !721
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !409) nounwind, !dbg !722
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !410) nounwind, !dbg !722
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !411) nounwind, !dbg !722
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !412) nounwind, !dbg !722
  call void @llvm.dbg.value(metadata !725, i64 0, metadata !413) nounwind, !dbg !722
  call void @llvm.dbg.value(metadata !726, i64 0, metadata !414) nounwind, !dbg !722
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !415) nounwind, !dbg !727
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !417) nounwind, !dbg !728
  %0 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !729
  store i8* %buf, i8** %0, align 8, !dbg !729
  %1 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !730
  store i64 %len, i64* %1, align 8, !dbg !730
  %2 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !731
  store i8* null, i8** %2, align 8, !dbg !731
  %3 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !732
  store i32 0, i32* %3, align 8, !dbg !732
  %4 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !733
  store %struct.iovec* %iov.i, %struct.iovec** %4, align 8, !dbg !733
  %5 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !734
  store i64 1, i64* %5, align 8, !dbg !734
  %6 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !735
  store i8* null, i8** %6, align 8, !dbg !735
  %7 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !736
  store i64 0, i64* %7, align 8, !dbg !736
  %8 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !737
  store i32 %flags, i32* %8, align 8, !dbg !737
  %9 = call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg.i, i32 %flags) nounwind, !dbg !738
  call void @llvm.dbg.value(metadata !{i64 %9}, i64 0, metadata !418) nounwind, !dbg !738
  ret i64 %9, !dbg !723
}

define i64 @recv(i32 %fd, i8* %buf, i64 %len, i32 %flags) nounwind {
entry:
  %iov.i.i = alloca %struct.iovec, align 8
  %msg.i.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !429), !dbg !739
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !430), !dbg !739
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !431), !dbg !739
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !432), !dbg !739
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !425) nounwind, !dbg !740
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !426) nounwind, !dbg !740
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !427) nounwind, !dbg !740
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !428) nounwind, !dbg !740
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !409) nounwind, !dbg !743
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !410) nounwind, !dbg !743
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !411) nounwind, !dbg !743
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !412) nounwind, !dbg !743
  call void @llvm.dbg.value(metadata !725, i64 0, metadata !413) nounwind, !dbg !743
  call void @llvm.dbg.value(metadata !726, i64 0, metadata !414) nounwind, !dbg !743
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i.i}, metadata !415) nounwind, !dbg !745
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i.i}, metadata !417) nounwind, !dbg !746
  %0 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 0, !dbg !747
  store i8* %buf, i8** %0, align 8, !dbg !747
  %1 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 1, !dbg !748
  store i64 %len, i64* %1, align 8, !dbg !748
  %2 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 0, !dbg !749
  store i8* null, i8** %2, align 8, !dbg !749
  %3 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 1, !dbg !750
  store i32 0, i32* %3, align 8, !dbg !750
  %4 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 2, !dbg !751
  store %struct.iovec* %iov.i.i, %struct.iovec** %4, align 8, !dbg !751
  %5 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 3, !dbg !752
  store i64 1, i64* %5, align 8, !dbg !752
  %6 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 4, !dbg !753
  store i8* null, i8** %6, align 8, !dbg !753
  %7 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 5, !dbg !754
  store i64 0, i64* %7, align 8, !dbg !754
  %8 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 6, !dbg !755
  store i32 %flags, i32* %8, align 8, !dbg !755
  %9 = call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg.i.i, i32 %flags) nounwind, !dbg !756
  call void @llvm.dbg.value(metadata !{i64 %9}, i64 0, metadata !418) nounwind, !dbg !756
  ret i64 %9, !dbg !741
}

define i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !433), !dbg !757
  tail call void @llvm.dbg.value(metadata !{%struct.msghdr* %msg}, i64 0, metadata !434), !dbg !757
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !435), !dbg !757
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %fd) nounwind, !dbg !758
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !436), !dbg !758
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !759
  br i1 %1, label %bb, label %bb1, !dbg !759

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !760
  store i32 9, i32* %2, align 4, !dbg !760
  br label %bb46, !dbg !761

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !762
  %4 = load i32* %3, align 4, !dbg !762
  %5 = and i32 %4, 16, !dbg !762
  %6 = icmp eq i32 %5, 0, !dbg !762
  br i1 %6, label %bb2, label %bb3, !dbg !762

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !763
  store i32 88, i32* %7, align 4, !dbg !763
  br label %bb46, !dbg !764

bb3:                                              ; preds = %bb1
  %8 = icmp eq %struct.msghdr* %msg, null, !dbg !765
  br i1 %8, label %bb4, label %bb5, !dbg !765

bb4:                                              ; preds = %bb3
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !766
  store i32 14, i32* %9, align 4, !dbg !766
  br label %bb46, !dbg !767

bb5:                                              ; preds = %bb3
  %10 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !768
  %11 = load %struct.exe_disk_file_t** %10, align 8, !dbg !768
  %12 = icmp eq %struct.exe_disk_file_t* %11, null, !dbg !768
  br i1 %12, label %bb6, label %bb7, !dbg !768

bb6:                                              ; preds = %bb5
  tail call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 759, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7110, i64 0, i64 0)) noreturn nounwind, !dbg !769
  unreachable, !dbg !769

bb7:                                              ; preds = %bb5
  %13 = and i32 %4, 32, !dbg !770
  %14 = icmp eq i32 %13, 0, !dbg !770
  %15 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 5, !dbg !771
  %16 = load %struct.exe_sockaddr_t** %15, align 8, !dbg !771
  %17 = getelementptr inbounds %struct.exe_sockaddr_t* %16, i64 0, i32 0, !dbg !771
  %18 = load %struct.sockaddr_storage** %17, align 8, !dbg !771
  %19 = icmp eq %struct.sockaddr_storage* %18, null, !dbg !771
  br i1 %14, label %bb8, label %bb19, !dbg !770

bb8:                                              ; preds = %bb7
  br i1 %19, label %bb9, label %bb12, !dbg !771

bb9:                                              ; preds = %bb8
  tail call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 763, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7110, i64 0, i64 0)) noreturn nounwind, !dbg !771
  unreachable, !dbg !771

bb12:                                             ; preds = %bb8
  %20 = getelementptr inbounds %struct.sockaddr_storage* %18, i64 0, i32 0, !dbg !772
  %21 = load i16* %20, align 2, !dbg !772
  switch i16 %21, label %bb16 [
    i16 2, label %bb13
    i16 10, label %bb15
  ]

bb13:                                             ; preds = %bb12
  %22 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in*, !dbg !772
  %23 = getelementptr inbounds %struct.sockaddr_in* %22, i64 0, i32 1, !dbg !772
  %24 = load i16* %23, align 2, !dbg !772
  %25 = icmp eq i16 %24, 0, !dbg !772
  %26 = zext i1 %25 to i8, !dbg !772
  br label %bb17, !dbg !772

bb15:                                             ; preds = %bb12
  %27 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in6*, !dbg !772
  %28 = getelementptr inbounds %struct.sockaddr_in6* %27, i64 0, i32 1, !dbg !772
  %29 = load i16* %28, align 2, !dbg !772
  %30 = icmp eq i16 %29, 0, !dbg !772
  %31 = zext i1 %30 to i8, !dbg !772
  br label %bb17, !dbg !772

bb16:                                             ; preds = %bb12
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 764, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7110, i64 0, i64 0)) noreturn nounwind, !dbg !772
  unreachable, !dbg !772

bb17:                                             ; preds = %bb15, %bb13
  %iftmp.115.0 = phi i8 [ %26, %bb13 ], [ %31, %bb15 ]
  %toBool = icmp eq i8 %iftmp.115.0, 0, !dbg !772
  br i1 %toBool, label %bb41, label %bb18, !dbg !772

bb18:                                             ; preds = %bb17
  %32 = tail call i32* @__errno_location() nounwind readnone, !dbg !773
  store i32 107, i32* %32, align 4, !dbg !773
  br label %bb46, !dbg !774

bb19:                                             ; preds = %bb7
  br i1 %19, label %bb20, label %bb21, !dbg !775

bb20:                                             ; preds = %bb19
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 770, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7110, i64 0, i64 0)) noreturn nounwind, !dbg !775
  unreachable, !dbg !775

bb21:                                             ; preds = %bb19
  %33 = getelementptr inbounds %struct.sockaddr_storage* %18, i64 0, i32 0, !dbg !775
  %34 = load i16* %33, align 2, !dbg !775
  switch i16 %34, label %bb25 [
    i16 2, label %bb22
    i16 10, label %bb24
  ]

bb22:                                             ; preds = %bb21
  %35 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in*, !dbg !775
  %36 = getelementptr inbounds %struct.sockaddr_in* %35, i64 0, i32 1, !dbg !775
  %37 = load i16* %36, align 2, !dbg !775
  %38 = icmp eq i16 %37, 0, !dbg !775
  %39 = zext i1 %38 to i8, !dbg !775
  br label %bb26, !dbg !775

bb24:                                             ; preds = %bb21
  %40 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in6*, !dbg !775
  %41 = getelementptr inbounds %struct.sockaddr_in6* %40, i64 0, i32 1, !dbg !775
  %42 = load i16* %41, align 2, !dbg !775
  %43 = icmp eq i16 %42, 0, !dbg !775
  %44 = zext i1 %43 to i8, !dbg !775
  br label %bb26, !dbg !775

bb25:                                             ; preds = %bb21
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 770, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7110, i64 0, i64 0)) noreturn nounwind, !dbg !775
  unreachable, !dbg !775

bb26:                                             ; preds = %bb24, %bb22
  %45 = phi i16 [ %37, %bb22 ], [ %42, %bb24 ]
  %iftmp.117.0 = phi i8 [ %39, %bb22 ], [ %44, %bb24 ]
  %toBool27 = icmp eq i8 %iftmp.117.0, 0, !dbg !775
  br i1 %toBool27, label %bb32, label %bb28, !dbg !775

bb28:                                             ; preds = %bb26
  %46 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !775
  %47 = load i8** %46, align 8, !dbg !775
  %48 = icmp eq i8* %47, null, !dbg !775
  br i1 %48, label %bb29, label %bb32, !dbg !775

bb29:                                             ; preds = %bb28
  %49 = tail call i32* @__errno_location() nounwind readnone, !dbg !776
  store i32 107, i32* %49, align 4, !dbg !776
  br label %bb46, !dbg !777

bb32:                                             ; preds = %bb28, %bb26
  switch i16 %34, label %bb36 [
    i16 2, label %bb33
    i16 10, label %bb35
  ]

bb33:                                             ; preds = %bb32
  %50 = icmp ne i16 %45, 0, !dbg !778
  %51 = zext i1 %50 to i8, !dbg !778
  br label %bb37, !dbg !778

bb35:                                             ; preds = %bb32
  %52 = icmp ne i16 %45, 0, !dbg !778
  %53 = zext i1 %52 to i8, !dbg !778
  br label %bb37, !dbg !778

bb36:                                             ; preds = %bb32
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 775, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7110, i64 0, i64 0)) noreturn nounwind, !dbg !778
  unreachable, !dbg !778

bb37:                                             ; preds = %bb35, %bb33
  %iftmp.119.0 = phi i8 [ %51, %bb33 ], [ %53, %bb35 ]
  %toBool38 = icmp eq i8 %iftmp.119.0, 0, !dbg !778
  br i1 %toBool38, label %bb41, label %bb39, !dbg !778

bb39:                                             ; preds = %bb37
  %54 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !778
  %55 = load i8** %54, align 8, !dbg !778
  %56 = icmp eq i8* %55, null, !dbg !778
  br i1 %56, label %bb41, label %bb40, !dbg !778

bb40:                                             ; preds = %bb39
  %57 = tail call i32* @__errno_location() nounwind readnone, !dbg !779
  store i32 106, i32* %57, align 4, !dbg !779
  br label %bb46, !dbg !780

bb41:                                             ; preds = %bb37, %bb17, %bb39
  %58 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !781
  %59 = load i8** %58, align 8, !dbg !781
  %60 = icmp eq i8* %59, null, !dbg !781
  br i1 %60, label %bb43, label %bb42, !dbg !781

bb42:                                             ; preds = %bb41
  %61 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 1, !dbg !782
  %62 = load i32* %61, align 8, !dbg !782
  %63 = zext i32 %62 to i64, !dbg !782
  tail call void @klee_check_memory_access(i8* %59, i64 %63) nounwind, !dbg !782
  br label %bb43, !dbg !782

bb43:                                             ; preds = %bb41, %bb42
  %64 = icmp eq i32 %flags, 0, !dbg !783
  br i1 %64, label %bb45, label %bb44, !dbg !783

bb44:                                             ; preds = %bb43
  tail call void @klee_warning(i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !784
  br label %bb45, !dbg !784

bb45:                                             ; preds = %bb43, %bb44
  %65 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 3, !dbg !785
  %66 = load i64* %65, align 8, !dbg !785
  %67 = trunc i64 %66 to i32, !dbg !785
  %68 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 2, !dbg !785
  %69 = load %struct.iovec** %68, align 8, !dbg !785
  %70 = tail call i64 @__fd_gather_write(%struct.exe_file_t* %0, %struct.iovec* %69, i32 %67) nounwind, !dbg !785
  br label %bb46, !dbg !785

bb46:                                             ; preds = %bb45, %bb40, %bb29, %bb18, %bb4, %bb2, %bb
  %.0 = phi i64 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ -1, %bb18 ], [ %70, %bb45 ], [ -1, %bb29 ], [ -1, %bb40 ]
  ret i64 %.0, !dbg !761
}

declare i64 @__fd_gather_write(%struct.exe_file_t*, %struct.iovec*, i32)

define i64 @sendmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !438), !dbg !786
  tail call void @llvm.dbg.value(metadata !{%struct.msghdr* %msg}, i64 0, metadata !439), !dbg !786
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !440), !dbg !786
  %0 = tail call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind, !dbg !787
  ret i64 %0, !dbg !787
}

define i64 @__fd_sendto(i32 %fd, i8* %buf, i64 %len, i32 %flags, %struct.sockaddr* %to, i32 %tolen) nounwind {
entry:
  %iov = alloca %struct.iovec, align 8
  %msg = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !441), !dbg !789
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !442), !dbg !789
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !443), !dbg !789
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !444), !dbg !789
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %to}, i64 0, metadata !445), !dbg !789
  call void @llvm.dbg.value(metadata !{i32 %tolen}, i64 0, metadata !446), !dbg !789
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov}, metadata !447), !dbg !790
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg}, metadata !449), !dbg !791
  %0 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 0, !dbg !792
  store i8* %buf, i8** %0, align 8, !dbg !792
  %1 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 1, !dbg !793
  store i64 %len, i64* %1, align 8, !dbg !793
  %2 = bitcast %struct.sockaddr* %to to i8*, !dbg !794
  %3 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !794
  store i8* %2, i8** %3, align 8, !dbg !794
  %4 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 1, !dbg !795
  store i32 %tolen, i32* %4, align 8, !dbg !795
  %5 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 2, !dbg !796
  store %struct.iovec* %iov, %struct.iovec** %5, align 8, !dbg !796
  %6 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 3, !dbg !797
  store i64 1, i64* %6, align 8, !dbg !797
  %7 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 4, !dbg !798
  store i8* null, i8** %7, align 8, !dbg !798
  %8 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 5, !dbg !799
  store i64 0, i64* %8, align 8, !dbg !799
  %9 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 6, !dbg !800
  store i32 %flags, i32* %9, align 8, !dbg !800
  %10 = call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind, !dbg !801
  ret i64 %10, !dbg !801
}

define i64 @sendto(i32 %fd, i8* %buf, i64 %len, i32 %flags, %struct.sockaddr* %to, i32 %tolen) nounwind {
entry:
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !450), !dbg !802
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !451), !dbg !802
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !452), !dbg !802
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !453), !dbg !802
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %to}, i64 0, metadata !454), !dbg !802
  call void @llvm.dbg.value(metadata !{i32 %tolen}, i64 0, metadata !455), !dbg !802
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !441) nounwind, !dbg !803
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !442) nounwind, !dbg !803
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !443) nounwind, !dbg !803
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !444) nounwind, !dbg !803
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %to}, i64 0, metadata !445) nounwind, !dbg !803
  call void @llvm.dbg.value(metadata !{i32 %tolen}, i64 0, metadata !446) nounwind, !dbg !803
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !447) nounwind, !dbg !806
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !449) nounwind, !dbg !807
  %0 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !808
  store i8* %buf, i8** %0, align 8, !dbg !808
  %1 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !809
  store i64 %len, i64* %1, align 8, !dbg !809
  %2 = bitcast %struct.sockaddr* %to to i8*, !dbg !810
  %3 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !810
  store i8* %2, i8** %3, align 8, !dbg !810
  %4 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !811
  store i32 %tolen, i32* %4, align 8, !dbg !811
  %5 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !812
  store %struct.iovec* %iov.i, %struct.iovec** %5, align 8, !dbg !812
  %6 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !813
  store i64 1, i64* %6, align 8, !dbg !813
  %7 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !814
  store i8* null, i8** %7, align 8, !dbg !814
  %8 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !815
  store i64 0, i64* %8, align 8, !dbg !815
  %9 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !816
  store i32 %flags, i32* %9, align 8, !dbg !816
  %10 = call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg.i, i32 %flags) nounwind, !dbg !817
  ret i64 %10, !dbg !804
}

define i64 @__fd_send(i32 %fd, i8* %buf, i64 %len, i32 %flags) nounwind {
entry:
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !456), !dbg !818
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !457), !dbg !818
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !458), !dbg !818
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !459), !dbg !818
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !441) nounwind, !dbg !819
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !442) nounwind, !dbg !819
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !443) nounwind, !dbg !819
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !444) nounwind, !dbg !819
  call void @llvm.dbg.value(metadata !725, i64 0, metadata !445) nounwind, !dbg !819
  call void @llvm.dbg.value(metadata !822, i64 0, metadata !446) nounwind, !dbg !819
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !447) nounwind, !dbg !823
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !449) nounwind, !dbg !824
  %0 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !825
  store i8* %buf, i8** %0, align 8, !dbg !825
  %1 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !826
  store i64 %len, i64* %1, align 8, !dbg !826
  %2 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !827
  store i8* null, i8** %2, align 8, !dbg !827
  %3 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !828
  store i32 0, i32* %3, align 8, !dbg !828
  %4 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !829
  store %struct.iovec* %iov.i, %struct.iovec** %4, align 8, !dbg !829
  %5 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !830
  store i64 1, i64* %5, align 8, !dbg !830
  %6 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !831
  store i8* null, i8** %6, align 8, !dbg !831
  %7 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !832
  store i64 0, i64* %7, align 8, !dbg !832
  %8 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !833
  store i32 %flags, i32* %8, align 8, !dbg !833
  %9 = call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg.i, i32 %flags) nounwind, !dbg !834
  ret i64 %9, !dbg !820
}

define i64 @send(i32 %fd, i8* %buf, i64 %len, i32 %flags) nounwind {
entry:
  %iov.i.i = alloca %struct.iovec, align 8
  %msg.i.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !460), !dbg !835
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !461), !dbg !835
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !462), !dbg !835
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !463), !dbg !835
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !456) nounwind, !dbg !836
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !457) nounwind, !dbg !836
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !458) nounwind, !dbg !836
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !459) nounwind, !dbg !836
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !441) nounwind, !dbg !839
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !442) nounwind, !dbg !839
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !443) nounwind, !dbg !839
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !444) nounwind, !dbg !839
  call void @llvm.dbg.value(metadata !725, i64 0, metadata !445) nounwind, !dbg !839
  call void @llvm.dbg.value(metadata !822, i64 0, metadata !446) nounwind, !dbg !839
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i.i}, metadata !447) nounwind, !dbg !841
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i.i}, metadata !449) nounwind, !dbg !842
  %0 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 0, !dbg !843
  store i8* %buf, i8** %0, align 8, !dbg !843
  %1 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 1, !dbg !844
  store i64 %len, i64* %1, align 8, !dbg !844
  %2 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 0, !dbg !845
  store i8* null, i8** %2, align 8, !dbg !845
  %3 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 1, !dbg !846
  store i32 0, i32* %3, align 8, !dbg !846
  %4 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 2, !dbg !847
  store %struct.iovec* %iov.i.i, %struct.iovec** %4, align 8, !dbg !847
  %5 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 3, !dbg !848
  store i64 1, i64* %5, align 8, !dbg !848
  %6 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 4, !dbg !849
  store i8* null, i8** %6, align 8, !dbg !849
  %7 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 5, !dbg !850
  store i64 0, i64* %7, align 8, !dbg !850
  %8 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 6, !dbg !851
  store i32 %flags, i32* %8, align 8, !dbg !851
  %9 = call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg.i.i, i32 %flags) nounwind, !dbg !852
  ret i64 %9, !dbg !837
}

define i32 @shutdown(i32 %sockfd, i32 %how) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !464), !dbg !853
  tail call void @llvm.dbg.value(metadata !{i32 %how}, i64 0, metadata !465), !dbg !853
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !854
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !466), !dbg !854
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !855
  br i1 %1, label %bb, label %bb1, !dbg !855

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !856
  store i32 9, i32* %2, align 4, !dbg !856
  br label %bb12, !dbg !857

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !858
  %4 = load i32* %3, align 4, !dbg !858
  %5 = and i32 %4, 16, !dbg !858
  %6 = icmp eq i32 %5, 0, !dbg !858
  br i1 %6, label %bb2, label %bb3, !dbg !858

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !859
  store i32 88, i32* %7, align 4, !dbg !859
  br label %bb12, !dbg !860

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !861
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !861
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !861
  br i1 %10, label %bb9, label %bb4, !dbg !861

bb4:                                              ; preds = %bb3
  switch i32 %how, label %bb8 [
    i32 0, label %bb5
    i32 1, label %bb6
    i32 2, label %bb7
  ], !dbg !862

bb5:                                              ; preds = %bb4
  %11 = and i32 %4, -5, !dbg !863
  store i32 %11, i32* %3, align 4, !dbg !863
  br label %bb12, !dbg !863

bb6:                                              ; preds = %bb4
  %12 = and i32 %4, -9, !dbg !864
  store i32 %12, i32* %3, align 4, !dbg !864
  br label %bb12, !dbg !864

bb7:                                              ; preds = %bb4
  %13 = and i32 %4, -13, !dbg !865
  store i32 %13, i32* %3, align 4, !dbg !865
  br label %bb12, !dbg !865

bb8:                                              ; preds = %bb4
  %14 = tail call i32* @__errno_location() nounwind readnone, !dbg !866
  store i32 22, i32* %14, align 4, !dbg !866
  br label %bb12, !dbg !867

bb9:                                              ; preds = %bb3
  %15 = tail call i64 (i64, ...)* @syscall(i64 48, i32 %sockfd, i32 %how) nounwind, !dbg !868
  %16 = trunc i64 %15 to i32, !dbg !868
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !468), !dbg !868
  %17 = icmp eq i32 %16, -1, !dbg !869
  br i1 %17, label %bb10, label %bb12, !dbg !869

bb10:                                             ; preds = %bb9
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !870
  %19 = tail call i32 @klee_get_errno() nounwind, !dbg !870
  store i32 %19, i32* %18, align 4, !dbg !870
  br label %bb12, !dbg !871

bb12:                                             ; preds = %bb5, %bb6, %bb7, %bb9, %bb10, %bb8, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb8 ], [ -1, %bb10 ], [ 0, %bb9 ], [ 0, %bb7 ], [ 0, %bb6 ], [ 0, %bb5 ]
  ret i32 %.0, !dbg !857
}

declare i64 @syscall(i64, ...) nounwind

declare i32 @klee_get_errno()

define i32 @__fd_shutdown(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !470), !dbg !872
  %0 = load i64* %args, align 8, !dbg !873
  %1 = trunc i64 %0 to i32, !dbg !873
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !471), !dbg !873
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !874
  %3 = load i64* %2, align 8, !dbg !874
  %4 = trunc i64 %3 to i32, !dbg !874
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !473), !dbg !874
  %5 = tail call i32 @shutdown(i32 %1, i32 %4) nounwind, !dbg !875
  ret i32 %5, !dbg !875
}

define i32 @getpeername(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !474), !dbg !876
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !475), !dbg !876
  tail call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !476), !dbg !876
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !877
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !479), !dbg !877
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !878
  br i1 %1, label %bb, label %bb1, !dbg !878

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !879
  store i32 9, i32* %2, align 4, !dbg !879
  br label %bb12, !dbg !880

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !881
  %4 = load i32* %3, align 4, !dbg !881
  %5 = and i32 %4, 16, !dbg !881
  %6 = icmp eq i32 %5, 0, !dbg !881
  br i1 %6, label %bb2, label %bb3, !dbg !881

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !882
  store i32 88, i32* %7, align 4, !dbg !882
  br label %bb12, !dbg !883

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !884
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !884
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !884
  br i1 %10, label %bb9, label %bb4, !dbg !884

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 5, !dbg !885
  %12 = load %struct.exe_sockaddr_t** %11, align 8, !dbg !885
  %13 = getelementptr inbounds %struct.exe_sockaddr_t* %12, i64 0, i32 0, !dbg !885
  %14 = load %struct.sockaddr_storage** %13, align 8, !dbg !885
  %15 = icmp eq %struct.sockaddr_storage* %14, null, !dbg !885
  br i1 %15, label %bb5, label %bb6, !dbg !885

bb5:                                              ; preds = %bb4
  tail call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 587, i8* getelementptr inbounds ([12 x i8]* @__PRETTY_FUNCTION__.6950, i64 0, i64 0)) noreturn nounwind, !dbg !885
  unreachable, !dbg !885

bb6:                                              ; preds = %bb4
  %16 = load i32* %addrlen, align 4, !dbg !886
  %17 = getelementptr inbounds %struct.exe_sockaddr_t* %12, i64 0, i32 1, !dbg !886
  %18 = load i32* %17, align 8, !dbg !886
  %19 = icmp ult i32 %16, %18, !dbg !886
  br i1 %19, label %bb7, label %bb8, !dbg !886

bb7:                                              ; preds = %bb6
  %20 = tail call i32* @__errno_location() nounwind readnone, !dbg !887
  store i32 22, i32* %20, align 4, !dbg !887
  br label %bb12, !dbg !888

bb8:                                              ; preds = %bb6
  %21 = zext i32 %18 to i64, !dbg !889
  %22 = bitcast %struct.sockaddr* %addr to i8*, !dbg !889
  %23 = bitcast %struct.sockaddr_storage* %14 to i8*, !dbg !889
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %21, i32 2, i1 false), !dbg !889
  %24 = load %struct.exe_sockaddr_t** %11, align 8, !dbg !890
  %25 = getelementptr inbounds %struct.exe_sockaddr_t* %24, i64 0, i32 1, !dbg !890
  %26 = load i32* %25, align 8, !dbg !890
  store i32 %26, i32* %addrlen, align 4, !dbg !890
  br label %bb12, !dbg !890

bb9:                                              ; preds = %bb3
  %27 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !891
  %28 = load i32* %27, align 8, !dbg !891
  %29 = tail call i64 (i64, ...)* @syscall(i64 52, i32 %28, %struct.sockaddr* %addr, i32* %addrlen) nounwind, !dbg !891
  %30 = trunc i64 %29 to i32, !dbg !891
  tail call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !477), !dbg !891
  %31 = icmp slt i32 %30, 0, !dbg !892
  br i1 %31, label %bb10, label %bb12, !dbg !892

bb10:                                             ; preds = %bb9
  %32 = tail call i32* @__errno_location() nounwind readnone, !dbg !893
  %33 = tail call i32 @klee_get_errno() nounwind, !dbg !893
  store i32 %33, i32* %32, align 4, !dbg !893
  br label %bb12, !dbg !894

bb12:                                             ; preds = %bb8, %bb9, %bb10, %bb7, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb7 ], [ -1, %bb10 ], [ 0, %bb9 ], [ 0, %bb8 ]
  ret i32 %.0, !dbg !880
}

define i32 @__fd_getpeername(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !480), !dbg !895
  %0 = load i64* %args, align 8, !dbg !896
  %1 = trunc i64 %0 to i32, !dbg !896
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !481), !dbg !896
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !897
  %3 = load i64* %2, align 8, !dbg !897
  %4 = inttoptr i64 %3 to %struct.sockaddr*, !dbg !897
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %4}, i64 0, metadata !483), !dbg !897
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !898
  %6 = load i64* %5, align 8, !dbg !898
  %7 = inttoptr i64 %6 to i32*, !dbg !898
  tail call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !484), !dbg !898
  %8 = tail call i32 @getpeername(i32 %1, %struct.sockaddr* %4, i32* %7) nounwind, !dbg !899
  ret i32 %8, !dbg !899
}

define i32 @getsockname(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !485), !dbg !900
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !486), !dbg !900
  tail call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !487), !dbg !900
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !901
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !488), !dbg !901
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !902
  br i1 %1, label %bb, label %bb1, !dbg !902

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !903
  store i32 9, i32* %2, align 4, !dbg !903
  br label %bb12, !dbg !904

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !905
  %4 = load i32* %3, align 4, !dbg !905
  %5 = and i32 %4, 16, !dbg !905
  %6 = icmp eq i32 %5, 0, !dbg !905
  br i1 %6, label %bb2, label %bb3, !dbg !905

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !906
  store i32 88, i32* %7, align 4, !dbg !906
  br label %bb12, !dbg !907

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !908
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !908
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !908
  br i1 %10, label %bb9, label %bb4, !dbg !908

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 0, !dbg !909
  %12 = load %struct.sockaddr_storage** %11, align 8, !dbg !909
  %13 = icmp eq %struct.sockaddr_storage* %12, null, !dbg !909
  br i1 %13, label %bb5, label %bb6, !dbg !909

bb5:                                              ; preds = %bb4
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 543, i8* getelementptr inbounds ([12 x i8]* @__PRETTY_FUNCTION__.6912, i64 0, i64 0)) noreturn nounwind, !dbg !909
  unreachable, !dbg !909

bb6:                                              ; preds = %bb4
  %14 = load i32* %addrlen, align 4, !dbg !910
  %15 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 1, !dbg !910
  %16 = load i32* %15, align 8, !dbg !910
  %17 = icmp ult i32 %14, %16, !dbg !910
  br i1 %17, label %bb7, label %bb8, !dbg !910

bb7:                                              ; preds = %bb6
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !911
  store i32 22, i32* %18, align 4, !dbg !911
  br label %bb12, !dbg !912

bb8:                                              ; preds = %bb6
  %19 = zext i32 %16 to i64, !dbg !913
  %20 = bitcast %struct.sockaddr* %addr to i8*, !dbg !913
  %21 = bitcast %struct.sockaddr_storage* %12 to i8*, !dbg !913
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 %19, i32 2, i1 false), !dbg !913
  %22 = load i32* %15, align 8, !dbg !914
  store i32 %22, i32* %addrlen, align 4, !dbg !914
  br label %bb12, !dbg !914

bb9:                                              ; preds = %bb3
  %23 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !915
  %24 = load i32* %23, align 8, !dbg !915
  %25 = tail call i64 (i64, ...)* @syscall(i64 51, i32 %24, %struct.sockaddr* %addr, i32* %addrlen) nounwind, !dbg !915
  %26 = trunc i64 %25 to i32, !dbg !915
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !490), !dbg !915
  %27 = icmp slt i32 %26, 0, !dbg !916
  br i1 %27, label %bb10, label %bb12, !dbg !916

bb10:                                             ; preds = %bb9
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !917
  %29 = tail call i32 @klee_get_errno() nounwind, !dbg !917
  store i32 %29, i32* %28, align 4, !dbg !917
  br label %bb12, !dbg !918

bb12:                                             ; preds = %bb8, %bb9, %bb10, %bb7, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb7 ], [ -1, %bb10 ], [ 0, %bb9 ], [ 0, %bb8 ]
  ret i32 %.0, !dbg !904
}

define i32 @__fd_getsockname(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !491), !dbg !919
  %0 = load i64* %args, align 8, !dbg !920
  %1 = trunc i64 %0 to i32, !dbg !920
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !492), !dbg !920
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !921
  %3 = load i64* %2, align 8, !dbg !921
  %4 = inttoptr i64 %3 to %struct.sockaddr*, !dbg !921
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %4}, i64 0, metadata !494), !dbg !921
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !922
  %6 = load i64* %5, align 8, !dbg !922
  %7 = inttoptr i64 %6 to i32*, !dbg !922
  tail call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !495), !dbg !922
  %8 = tail call i32 @getsockname(i32 %1, %struct.sockaddr* %4, i32* %7) nounwind, !dbg !923
  ret i32 %8, !dbg !923
}

define i32 @listen(i32 %sockfd, i32 %backlog) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !496), !dbg !924
  tail call void @llvm.dbg.value(metadata !{i32 %backlog}, i64 0, metadata !497), !dbg !924
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !925
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !500), !dbg !925
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !926
  br i1 %1, label %bb, label %bb1, !dbg !926

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !927
  store i32 9, i32* %2, align 4, !dbg !927
  br label %bb10, !dbg !928

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !929
  %4 = load i32* %3, align 4, !dbg !929
  %5 = and i32 %4, 16, !dbg !929
  %6 = icmp eq i32 %5, 0, !dbg !929
  br i1 %6, label %bb2, label %bb3, !dbg !929

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !930
  store i32 88, i32* %7, align 4, !dbg !930
  br label %bb10, !dbg !931

bb3:                                              ; preds = %bb1
  %8 = and i32 %4, 32, !dbg !932
  %9 = icmp eq i32 %8, 0, !dbg !932
  br i1 %9, label %bb5, label %bb4, !dbg !932

bb4:                                              ; preds = %bb3
  %10 = tail call i32* @__errno_location() nounwind readnone, !dbg !933
  store i32 95, i32* %10, align 4, !dbg !933
  br label %bb10, !dbg !934

bb5:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !935
  %12 = load %struct.exe_disk_file_t** %11, align 8, !dbg !935
  %13 = icmp eq %struct.exe_disk_file_t* %12, null, !dbg !935
  br i1 %13, label %bb7, label %bb9, !dbg !935

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !936
  %15 = load i32* %14, align 8, !dbg !936
  %16 = tail call i64 (i64, ...)* @syscall(i64 50, i32 %15, i32 %backlog) nounwind, !dbg !936
  %17 = trunc i64 %16 to i32, !dbg !936
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !498), !dbg !936
  %18 = icmp slt i32 %17, 0, !dbg !937
  br i1 %18, label %bb8, label %bb9, !dbg !937

bb8:                                              ; preds = %bb7
  %19 = tail call i32* @__errno_location() nounwind readnone, !dbg !938
  %20 = tail call i32 @klee_get_errno() nounwind, !dbg !938
  store i32 %20, i32* %19, align 4, !dbg !938
  br label %bb9, !dbg !938

bb9:                                              ; preds = %bb7, %bb5, %bb8
  %os_r.0 = phi i32 [ %17, %bb8 ], [ 0, %bb5 ], [ %17, %bb7 ]
  %21 = load i32* %3, align 4, !dbg !939
  %22 = or i32 %21, 64, !dbg !939
  store i32 %22, i32* %3, align 4, !dbg !939
  br label %bb10, !dbg !940

bb10:                                             ; preds = %bb9, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %os_r.0, %bb9 ]
  ret i32 %.0, !dbg !928
}

define i32 @__fd_listen(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !501), !dbg !941
  %0 = load i64* %args, align 8, !dbg !942
  %1 = trunc i64 %0 to i32, !dbg !942
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !502), !dbg !942
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !943
  %3 = load i64* %2, align 8, !dbg !943
  %4 = trunc i64 %3 to i32, !dbg !943
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !504), !dbg !943
  %5 = tail call i32 @listen(i32 %1, i32 %4) nounwind, !dbg !944
  ret i32 %5, !dbg !944
}

define i32 @connect(i32 %sockfd, %struct.sockaddr* %addr, i32 %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !505), !dbg !945
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !506), !dbg !945
  tail call void @llvm.dbg.value(metadata !{i32 %addrlen}, i64 0, metadata !507), !dbg !945
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !946
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !510), !dbg !946
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !947
  br i1 %1, label %bb, label %bb1, !dbg !947

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !948
  store i32 9, i32* %2, align 4, !dbg !948
  br label %bb40, !dbg !949

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !950
  %4 = load i32* %3, align 4, !dbg !950
  %5 = and i32 %4, 16, !dbg !950
  %6 = icmp eq i32 %5, 0, !dbg !950
  br i1 %6, label %bb2, label %bb3, !dbg !950

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !951
  store i32 88, i32* %7, align 4, !dbg !951
  br label %bb40, !dbg !952

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !953
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !953
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !953
  br i1 %10, label %bb37, label %bb4, !dbg !953

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 5, !dbg !954
  %12 = load %struct.exe_sockaddr_t** %11, align 8, !dbg !954
  %13 = getelementptr inbounds %struct.exe_sockaddr_t* %12, i64 0, i32 0, !dbg !954
  %14 = load %struct.sockaddr_storage** %13, align 8, !dbg !954
  %15 = icmp eq %struct.sockaddr_storage* %14, null, !dbg !954
  br i1 %15, label %bb5, label %bb6, !dbg !954

bb5:                                              ; preds = %bb4
  tail call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6676, i64 0, i64 0)) noreturn nounwind, !dbg !954
  unreachable, !dbg !954

bb6:                                              ; preds = %bb4
  %16 = and i32 %4, 32, !dbg !955
  %17 = icmp eq i32 %16, 0, !dbg !955
  br i1 %17, label %bb9, label %bb20, !dbg !955

bb9:                                              ; preds = %bb6
  %18 = getelementptr inbounds %struct.sockaddr_storage* %14, i64 0, i32 0, !dbg !956
  %19 = load i16* %18, align 2, !dbg !956
  switch i16 %19, label %bb13 [
    i16 2, label %bb10
    i16 10, label %bb12
  ]

bb10:                                             ; preds = %bb9
  %20 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in*, !dbg !956
  %21 = getelementptr inbounds %struct.sockaddr_in* %20, i64 0, i32 1, !dbg !956
  %22 = load i16* %21, align 2, !dbg !956
  %23 = icmp ne i16 %22, 0, !dbg !956
  %24 = zext i1 %23 to i8, !dbg !956
  br label %bb14, !dbg !956

bb12:                                             ; preds = %bb9
  %25 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in6*, !dbg !956
  %26 = getelementptr inbounds %struct.sockaddr_in6* %25, i64 0, i32 1, !dbg !956
  %27 = load i16* %26, align 2, !dbg !956
  %28 = icmp ne i16 %27, 0, !dbg !956
  %29 = zext i1 %28 to i8, !dbg !956
  br label %bb14, !dbg !956

bb13:                                             ; preds = %bb9
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 337, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6676, i64 0, i64 0)) noreturn nounwind, !dbg !956
  unreachable, !dbg !956

bb14:                                             ; preds = %bb12, %bb10
  %iftmp.73.0 = phi i8 [ %24, %bb10 ], [ %29, %bb12 ]
  %toBool17 = icmp eq i8 %iftmp.73.0, 1, !dbg !956
  br i1 %toBool17, label %bb19, label %bb18, !dbg !956

bb18:                                             ; preds = %bb14
  tail call void @__assert_fail(i8* getelementptr inbounds ([575 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 337, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6676, i64 0, i64 0)) noreturn nounwind, !dbg !956
  unreachable, !dbg !956

bb19:                                             ; preds = %bb14
  %30 = tail call i32* @__errno_location() nounwind readnone, !dbg !957
  store i32 106, i32* %30, align 4, !dbg !957
  br label %bb40, !dbg !958

bb20:                                             ; preds = %bb6
  %31 = getelementptr inbounds %struct.exe_sockaddr_t* %12, i64 0, i32 1, !dbg !959
  %32 = load i32* %31, align 8, !dbg !959
  %33 = icmp eq i32 %32, %addrlen, !dbg !959
  br i1 %33, label %bb21, label %bb22, !dbg !959

bb21:                                             ; preds = %bb20
  %34 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 0, !dbg !959
  %35 = load i16* %34, align 2, !dbg !959
  %36 = getelementptr inbounds %struct.sockaddr_storage* %14, i64 0, i32 0, !dbg !959
  %37 = load i16* %36, align 8, !dbg !959
  %38 = icmp eq i16 %35, %37, !dbg !959
  br i1 %38, label %bb23, label %bb22, !dbg !959

bb22:                                             ; preds = %bb21, %bb20
  %39 = tail call i32* @__errno_location() nounwind readnone, !dbg !960
  store i32 22, i32* %39, align 4, !dbg !960
  br label %bb40, !dbg !961

bb23:                                             ; preds = %bb21
  switch i16 %35, label %bb27 [
    i16 2, label %bb24
    i16 10, label %bb26
  ]

bb24:                                             ; preds = %bb23
  %40 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 1
  %41 = bitcast [14 x i8]* %40 to i16*, !dbg !962
  %42 = load i16* %41, align 2, !dbg !962
  %43 = icmp eq i16 %42, 0, !dbg !962
  %44 = zext i1 %43 to i8, !dbg !962
  br label %bb28, !dbg !962

bb26:                                             ; preds = %bb23
  %45 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 1
  %46 = bitcast [14 x i8]* %45 to i16*, !dbg !962
  %47 = load i16* %46, align 2, !dbg !962
  %48 = icmp eq i16 %47, 0, !dbg !962
  %49 = zext i1 %48 to i8, !dbg !962
  br label %bb28, !dbg !962

bb27:                                             ; preds = %bb23
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 345, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6676, i64 0, i64 0)) noreturn nounwind, !dbg !962
  unreachable, !dbg !962

bb28:                                             ; preds = %bb26, %bb24
  %iftmp.75.0 = phi i8 [ %44, %bb24 ], [ %49, %bb26 ]
  %toBool29 = icmp eq i8 %iftmp.75.0, 0, !dbg !962
  br i1 %toBool29, label %bb31, label %bb30, !dbg !962

bb30:                                             ; preds = %bb28
  %50 = tail call i32* @__errno_location() nounwind readnone, !dbg !963
  store i32 99, i32* %50, align 4, !dbg !963
  br label %bb31, !dbg !963

bb31:                                             ; preds = %bb28, %bb30
  %51 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 0, !dbg !964
  %52 = load %struct.sockaddr_storage** %51, align 8, !dbg !964
  %53 = getelementptr inbounds %struct.sockaddr_storage* %52, i64 0, i32 0, !dbg !964
  %54 = load i16* %53, align 2, !dbg !964
  switch i16 %54, label %bb35 [
    i16 2, label %bb36
    i16 10, label %bb36
  ]

bb35:                                             ; preds = %bb31
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 348, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6676, i64 0, i64 0)) noreturn nounwind, !dbg !964
  unreachable, !dbg !964

bb36:                                             ; preds = %bb31, %bb31
  %55 = zext i32 %addrlen to i64, !dbg !965
  %56 = load %struct.exe_sockaddr_t** %11, align 8, !dbg !965
  %57 = getelementptr inbounds %struct.exe_sockaddr_t* %56, i64 0, i32 0, !dbg !965
  %58 = load %struct.sockaddr_storage** %57, align 8, !dbg !965
  %59 = bitcast %struct.sockaddr_storage* %58 to i8*, !dbg !965
  %60 = bitcast %struct.sockaddr* %addr to i8*, !dbg !965
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 %55, i32 2, i1 false), !dbg !965
  br label %bb40, !dbg !966

bb37:                                             ; preds = %bb3
  %61 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !967
  %62 = load i32* %61, align 8, !dbg !967
  %63 = tail call i64 (i64, ...)* @syscall(i64 42, i32 %62, %struct.sockaddr* %addr, i32 %addrlen) nounwind, !dbg !967
  %64 = trunc i64 %63 to i32, !dbg !967
  tail call void @llvm.dbg.value(metadata !{i32 %64}, i64 0, metadata !508), !dbg !967
  %65 = icmp slt i32 %64, 0, !dbg !968
  br i1 %65, label %bb38, label %bb40, !dbg !968

bb38:                                             ; preds = %bb37
  %66 = tail call i32* @__errno_location() nounwind readnone, !dbg !969
  %67 = tail call i32 @klee_get_errno() nounwind, !dbg !969
  store i32 %67, i32* %66, align 4, !dbg !969
  br label %bb40, !dbg !969

bb40:                                             ; preds = %bb37, %bb38, %bb36, %bb22, %bb19, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb19 ], [ -1, %bb22 ], [ 0, %bb36 ], [ %64, %bb38 ], [ %64, %bb37 ]
  ret i32 %.0, !dbg !949
}

define i32 @__fd_connect(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !511), !dbg !970
  %0 = load i64* %args, align 8, !dbg !971
  %1 = trunc i64 %0 to i32, !dbg !971
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !512), !dbg !971
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !972
  %3 = load i64* %2, align 8, !dbg !972
  %4 = inttoptr i64 %3 to %struct.sockaddr*, !dbg !972
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %4}, i64 0, metadata !514), !dbg !972
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !973
  %6 = load i64* %5, align 8, !dbg !973
  %7 = trunc i64 %6 to i32, !dbg !973
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !515), !dbg !973
  %8 = tail call i32 @connect(i32 %1, %struct.sockaddr* %4, i32 %7) nounwind, !dbg !974
  ret i32 %8, !dbg !974
}

define i32 @bind(i32 %sockfd, %struct.sockaddr* %addr, i32 %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !516), !dbg !975
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !517), !dbg !975
  tail call void @llvm.dbg.value(metadata !{i32 %addrlen}, i64 0, metadata !518), !dbg !975
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !976
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !521), !dbg !976
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !977
  br i1 %1, label %bb, label %bb1, !dbg !977

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !978
  store i32 9, i32* %2, align 4, !dbg !978
  br label %bb28, !dbg !979

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !980
  %4 = load i32* %3, align 4, !dbg !980
  %5 = and i32 %4, 16, !dbg !980
  %6 = icmp eq i32 %5, 0, !dbg !980
  br i1 %6, label %bb2, label %bb3, !dbg !980

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !981
  store i32 88, i32* %7, align 4, !dbg !981
  br label %bb28, !dbg !982

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !983
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !983
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !983
  br i1 %10, label %bb24, label %bb4, !dbg !983

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 0, !dbg !984
  %12 = load %struct.sockaddr_storage** %11, align 8, !dbg !984
  %13 = icmp eq %struct.sockaddr_storage* %12, null, !dbg !984
  br i1 %13, label %bb5, label %bb6, !dbg !984

bb5:                                              ; preds = %bb4
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.6604, i64 0, i64 0)) noreturn nounwind, !dbg !984
  unreachable, !dbg !984

bb6:                                              ; preds = %bb4
  %14 = and i32 %4, 32, !dbg !985
  %15 = icmp eq i32 %14, 0, !dbg !985
  br i1 %15, label %bb9, label %bb16, !dbg !985

bb9:                                              ; preds = %bb6
  %16 = getelementptr inbounds %struct.sockaddr_storage* %12, i64 0, i32 0, !dbg !985
  %17 = load i16* %16, align 2, !dbg !985
  switch i16 %17, label %bb13 [
    i16 2, label %bb10
    i16 10, label %bb12
  ]

bb10:                                             ; preds = %bb9
  %18 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in*, !dbg !985
  %19 = getelementptr inbounds %struct.sockaddr_in* %18, i64 0, i32 1, !dbg !985
  %20 = load i16* %19, align 2, !dbg !985
  %21 = icmp ne i16 %20, 0, !dbg !985
  %22 = zext i1 %21 to i8, !dbg !985
  br label %bb14, !dbg !985

bb12:                                             ; preds = %bb9
  %23 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in6*, !dbg !985
  %24 = getelementptr inbounds %struct.sockaddr_in6* %23, i64 0, i32 1, !dbg !985
  %25 = load i16* %24, align 2, !dbg !985
  %26 = icmp ne i16 %25, 0, !dbg !985
  %27 = zext i1 %26 to i8, !dbg !985
  br label %bb14, !dbg !985

bb13:                                             ; preds = %bb9
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 284, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.6604, i64 0, i64 0)) noreturn nounwind, !dbg !985
  unreachable, !dbg !985

bb14:                                             ; preds = %bb12, %bb10
  %iftmp.69.0 = phi i8 [ %22, %bb10 ], [ %27, %bb12 ]
  %toBool = icmp eq i8 %iftmp.69.0, 0, !dbg !985
  br i1 %toBool, label %bb16, label %bb15, !dbg !985

bb15:                                             ; preds = %bb14
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !986
  store i32 22, i32* %28, align 4, !dbg !986
  br label %bb28, !dbg !987

bb16:                                             ; preds = %bb14, %bb6
  %29 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 1, !dbg !988
  %30 = load i32* %29, align 8, !dbg !988
  %31 = icmp eq i32 %30, %addrlen, !dbg !988
  br i1 %31, label %bb17, label %bb18, !dbg !988

bb17:                                             ; preds = %bb16
  %32 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 0, !dbg !988
  %33 = load i16* %32, align 2, !dbg !988
  %34 = getelementptr inbounds %struct.sockaddr_storage* %12, i64 0, i32 0, !dbg !988
  %35 = load i16* %34, align 8, !dbg !988
  %36 = icmp eq i16 %33, %35, !dbg !988
  br i1 %36, label %bb19, label %bb18, !dbg !988

bb18:                                             ; preds = %bb17, %bb16
  %37 = tail call i32* @__errno_location() nounwind readnone, !dbg !989
  store i32 22, i32* %37, align 4, !dbg !989
  br label %bb28, !dbg !990

bb19:                                             ; preds = %bb17
  %38 = zext i32 %addrlen to i64, !dbg !991
  %39 = bitcast %struct.sockaddr_storage* %12 to i8*, !dbg !991
  %40 = bitcast %struct.sockaddr* %addr to i8*, !dbg !991
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 %38, i32 2, i1 false), !dbg !991
  %41 = load %struct.sockaddr_storage** %11, align 8, !dbg !992
  %42 = getelementptr inbounds %struct.sockaddr_storage* %41, i64 0, i32 0, !dbg !992
  %43 = load i16* %42, align 2, !dbg !992
  switch i16 %43, label %bb23 [
    i16 2, label %bb28
    i16 10, label %bb28
  ]

bb23:                                             ; preds = %bb19
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 294, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.6604, i64 0, i64 0)) noreturn nounwind, !dbg !992
  unreachable, !dbg !992

bb24:                                             ; preds = %bb3
  %44 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !993
  %45 = load i32* %44, align 8, !dbg !993
  %46 = tail call i64 (i64, ...)* @syscall(i64 49, i32 %45, %struct.sockaddr* %addr, i32 %addrlen) nounwind, !dbg !993
  %47 = trunc i64 %46 to i32, !dbg !993
  tail call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !519), !dbg !993
  %48 = icmp slt i32 %47, 0, !dbg !994
  br i1 %48, label %bb25, label %bb28, !dbg !994

bb25:                                             ; preds = %bb24
  %49 = tail call i32* @__errno_location() nounwind readnone, !dbg !995
  %50 = tail call i32 @klee_get_errno() nounwind, !dbg !995
  store i32 %50, i32* %49, align 4, !dbg !995
  br label %bb28, !dbg !995

bb28:                                             ; preds = %bb19, %bb19, %bb24, %bb25, %bb18, %bb15, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb15 ], [ -1, %bb18 ], [ %47, %bb25 ], [ %47, %bb24 ], [ 0, %bb19 ], [ 0, %bb19 ]
  ret i32 %.0, !dbg !979
}

define i32 @__fd_bind(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !522), !dbg !996
  %0 = load i64* %args, align 8, !dbg !997
  %1 = trunc i64 %0 to i32, !dbg !997
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !523), !dbg !997
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !998
  %3 = load i64* %2, align 8, !dbg !998
  %4 = inttoptr i64 %3 to %struct.sockaddr*, !dbg !998
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %4}, i64 0, metadata !525), !dbg !998
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !999
  %6 = load i64* %5, align 8, !dbg !999
  %7 = trunc i64 %6 to i32, !dbg !999
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !526), !dbg !999
  %8 = tail call i32 @bind(i32 %1, %struct.sockaddr* %4, i32 %7) nounwind, !dbg !1000
  ret i32 %8, !dbg !1000
}

define internal fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %a) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %domain}, i64 0, metadata !531), !dbg !1001
  tail call void @llvm.dbg.value(metadata !{%struct.exe_sockaddr_t* %a}, i64 0, metadata !532), !dbg !1001
  %0 = icmp eq %struct.exe_sockaddr_t* %a, null, !dbg !1002
  br i1 %0, label %bb, label %bb1, !dbg !1002

bb:                                               ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 107, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.6452, i64 0, i64 0)) noreturn nounwind, !dbg !1002
  unreachable, !dbg !1002

bb1:                                              ; preds = %entry
  switch i32 %domain, label %bb11 [
    i32 2, label %bb2
    i32 10, label %bb5
    i32 17, label %bb8
  ], !dbg !1004

bb2:                                              ; preds = %bb1
  %1 = tail call noalias i8* @calloc(i64 1, i64 16) nounwind, !dbg !1005
  %2 = bitcast i8* %1 to %struct.sockaddr_storage*, !dbg !1005
  %3 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 0, !dbg !1005
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %3, align 8, !dbg !1005
  %4 = icmp eq i8* %1, null, !dbg !1005
  br i1 %4, label %bb12, label %bb4, !dbg !1005

bb4:                                              ; preds = %bb2
  %5 = bitcast i8* %1 to i16*, !dbg !1005
  store i16 2, i16* %5, align 8, !dbg !1005
  %6 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 1, !dbg !1005
  store i32 16, i32* %6, align 8, !dbg !1005
  br label %bb12, !dbg !1005

bb5:                                              ; preds = %bb1
  %7 = tail call noalias i8* @calloc(i64 1, i64 28) nounwind, !dbg !1006
  %8 = bitcast i8* %7 to %struct.sockaddr_storage*, !dbg !1006
  %9 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 0, !dbg !1006
  store %struct.sockaddr_storage* %8, %struct.sockaddr_storage** %9, align 8, !dbg !1006
  %10 = icmp eq i8* %7, null, !dbg !1006
  br i1 %10, label %bb12, label %bb7, !dbg !1006

bb7:                                              ; preds = %bb5
  %11 = bitcast i8* %7 to i16*, !dbg !1006
  store i16 2, i16* %11, align 8, !dbg !1006
  %12 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 1, !dbg !1006
  store i32 28, i32* %12, align 8, !dbg !1006
  br label %bb12, !dbg !1006

bb8:                                              ; preds = %bb1
  %13 = tail call noalias i8* @calloc(i64 1, i64 20) nounwind, !dbg !1007
  %14 = bitcast i8* %13 to %struct.sockaddr_storage*, !dbg !1007
  %15 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 0, !dbg !1007
  store %struct.sockaddr_storage* %14, %struct.sockaddr_storage** %15, align 8, !dbg !1007
  %16 = icmp eq i8* %13, null, !dbg !1007
  br i1 %16, label %bb12, label %bb10, !dbg !1007

bb10:                                             ; preds = %bb8
  %17 = bitcast i8* %13 to i16*, !dbg !1007
  store i16 2, i16* %17, align 8, !dbg !1007
  %18 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 1, !dbg !1007
  store i32 20, i32* %18, align 8, !dbg !1007
  br label %bb12, !dbg !1007

bb11:                                             ; preds = %bb1
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.6452, i64 0, i64 0)) noreturn nounwind, !dbg !1008
  unreachable, !dbg !1008

bb12:                                             ; preds = %bb8, %bb5, %bb2, %bb10, %bb7, %bb4
  %.0 = phi %struct.exe_sockaddr_t* [ %a, %bb10 ], [ %a, %bb7 ], [ %a, %bb4 ], [ null, %bb2 ], [ null, %bb5 ], [ null, %bb8 ]
  ret %struct.exe_sockaddr_t* %.0, !dbg !1005
}

declare noalias i8* @calloc(i64, i64) nounwind

define i32 @__fd_accept(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  %connf = alloca %struct.exe_file_t*, align 8
  %fchild = alloca %struct.exe_file_t*, align 8
  call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !533), !dbg !1009
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !534), !dbg !1009
  call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !535), !dbg !1009
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %connf}, metadata !538), !dbg !1010
  %0 = call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !1011
  call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !539), !dbg !1011
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !1012
  br i1 %1, label %bb, label %bb1, !dbg !1012

bb:                                               ; preds = %entry
  %2 = call i32* @__errno_location() nounwind readnone, !dbg !1013
  store i32 9, i32* %2, align 4, !dbg !1013
  br label %bb24, !dbg !1014

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !1015
  %4 = load i32* %3, align 4, !dbg !1015
  %5 = and i32 %4, 16, !dbg !1015
  %6 = icmp eq i32 %5, 0, !dbg !1015
  br i1 %6, label %bb2, label %bb3, !dbg !1015

bb2:                                              ; preds = %bb1
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !1016
  store i32 88, i32* %7, align 4, !dbg !1016
  br label %bb24, !dbg !1017

bb3:                                              ; preds = %bb1
  %8 = and i32 %4, 32, !dbg !1018
  %9 = icmp eq i32 %8, 0, !dbg !1018
  br i1 %9, label %bb5, label %bb4, !dbg !1018

bb4:                                              ; preds = %bb3
  %10 = call i32* @__errno_location() nounwind readnone, !dbg !1019
  store i32 95, i32* %10, align 4, !dbg !1019
  br label %bb24, !dbg !1020

bb5:                                              ; preds = %bb3
  %11 = and i32 %4, 64, !dbg !1021
  %12 = icmp eq i32 %11, 0, !dbg !1021
  br i1 %12, label %bb6, label %bb7, !dbg !1021

bb6:                                              ; preds = %bb5
  %13 = call i32* @__errno_location() nounwind readnone, !dbg !1022
  store i32 22, i32* %13, align 4, !dbg !1022
  br label %bb24, !dbg !1023

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !1024
  %15 = load %struct.exe_disk_file_t** %14, align 8, !dbg !1024
  %16 = icmp eq %struct.exe_disk_file_t* %15, null, !dbg !1024
  br i1 %16, label %bb19, label %bb8, !dbg !1024

bb8:                                              ; preds = %bb7
  %17 = call i32 @__get_new_fd(%struct.exe_file_t** %connf) nounwind, !dbg !1025
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !536), !dbg !1025
  %18 = icmp slt i32 %17, 0, !dbg !1026
  br i1 %18, label %bb24, label %bb10, !dbg !1026

bb10:                                             ; preds = %bb8
  %19 = load %struct.exe_file_t** %connf, align 8, !dbg !1027
  %20 = getelementptr inbounds %struct.exe_file_t* %19, i64 0, i32 1, !dbg !1027
  %21 = load i32* %20, align 4, !dbg !1027
  %22 = or i32 %21, 16, !dbg !1027
  store i32 %22, i32* %20, align 4, !dbg !1027
  %23 = load %struct.exe_file_t** %connf, align 8, !dbg !1028
  %24 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1029
  %25 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !1029
  %26 = icmp ult i32 %24, %25, !dbg !1029
  br i1 %26, label %bb1.i, label %__get_sym_stream.exit, !dbg !1029

bb1.i:                                            ; preds = %bb10
  %27 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !1031
  %28 = zext i32 %24 to i64, !dbg !1031
  %29 = getelementptr inbounds %struct.exe_disk_file_t* %27, i64 %28, !dbg !1031
  %30 = add i32 %24, 1, !dbg !1031
  store i32 %30, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1031
  br label %__get_sym_stream.exit, !dbg !1031

__get_sym_stream.exit:                            ; preds = %bb10, %bb1.i
  %.0.i = phi %struct.exe_disk_file_t* [ %29, %bb1.i ], [ null, %bb10 ]
  %31 = getelementptr inbounds %struct.exe_file_t* %23, i64 0, i32 3, !dbg !1028
  store %struct.exe_disk_file_t* %.0.i, %struct.exe_disk_file_t** %31, align 8, !dbg !1028
  %32 = load %struct.exe_file_t** %connf, align 8, !dbg !1032
  %33 = getelementptr inbounds %struct.exe_file_t* %32, i64 0, i32 3, !dbg !1032
  %34 = load %struct.exe_disk_file_t** %33, align 8, !dbg !1032
  %35 = icmp eq %struct.exe_disk_file_t* %34, null, !dbg !1032
  br i1 %35, label %bb11, label %bb12, !dbg !1032

bb11:                                             ; preds = %__get_sym_stream.exit
  call void @klee_warning(i8* getelementptr inbounds ([25 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !1033
  %36 = load %struct.exe_file_t** %connf, align 8, !dbg !1034
  call void @__undo_get_new_fd(%struct.exe_file_t* %36) nounwind, !dbg !1034
  %37 = call i32* @__errno_location() nounwind readnone, !dbg !1035
  store i32 23, i32* %37, align 4, !dbg !1035
  br label %bb24, !dbg !1036

bb12:                                             ; preds = %__get_sym_stream.exit
  %38 = getelementptr inbounds %struct.exe_file_t* %32, i64 0, i32 4, !dbg !1037
  %39 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 6, !dbg !1037
  %40 = load i32* %39, align 8, !dbg !1037
  %41 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %40, %struct.exe_sockaddr_t* %38) nounwind, !dbg !1037
  %42 = icmp eq %struct.exe_sockaddr_t* %41, null, !dbg !1037
  br i1 %42, label %bb13, label %bb14, !dbg !1037

bb13:                                             ; preds = %bb12
  %43 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1038
  %44 = add i32 %43, -1, !dbg !1038
  store i32 %44, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1038
  %45 = load %struct.exe_file_t** %connf, align 8, !dbg !1039
  call void @__undo_get_new_fd(%struct.exe_file_t* %45) nounwind, !dbg !1039
  %46 = call i32* @__errno_location() nounwind readnone, !dbg !1040
  store i32 12, i32* %46, align 4, !dbg !1040
  br label %bb24, !dbg !1041

bb14:                                             ; preds = %bb12
  %47 = load %struct.exe_file_t** %connf, align 8, !dbg !1042
  %48 = getelementptr inbounds %struct.exe_file_t* %47, i64 0, i32 3, !dbg !1042
  %49 = load %struct.exe_disk_file_t** %48, align 8, !dbg !1042
  %50 = getelementptr inbounds %struct.exe_disk_file_t* %49, i64 0, i32 4, !dbg !1042
  %51 = load %struct.exe_sockaddr_t** %50, align 8, !dbg !1042
  %52 = getelementptr inbounds %struct.exe_file_t* %47, i64 0, i32 4, i32 1, !dbg !1042
  %53 = load i32* %52, align 8, !dbg !1042
  %54 = getelementptr inbounds %struct.exe_sockaddr_t* %51, i64 0, i32 1, !dbg !1042
  store i32 %53, i32* %54, align 8, !dbg !1042
  %55 = load %struct.exe_file_t** %connf, align 8, !dbg !1043
  %56 = getelementptr inbounds %struct.exe_file_t* %55, i64 0, i32 3, !dbg !1043
  %57 = load %struct.exe_disk_file_t** %56, align 8, !dbg !1043
  %58 = getelementptr inbounds %struct.exe_disk_file_t* %57, i64 0, i32 4, !dbg !1043
  %59 = load %struct.exe_sockaddr_t** %58, align 8, !dbg !1043
  %60 = getelementptr inbounds %struct.exe_sockaddr_t* %59, i64 0, i32 0, !dbg !1043
  %61 = load %struct.sockaddr_storage** %60, align 8, !dbg !1043
  %62 = getelementptr inbounds %struct.exe_file_t* %55, i64 0, i32 4, i32 0, !dbg !1043
  %63 = load %struct.sockaddr_storage** %62, align 8, !dbg !1043
  %64 = getelementptr inbounds %struct.sockaddr_storage* %63, i64 0, i32 0, !dbg !1043
  %65 = load i16* %64, align 8, !dbg !1043
  %66 = getelementptr inbounds %struct.sockaddr_storage* %61, i64 0, i32 0, !dbg !1043
  store i16 %65, i16* %66, align 8, !dbg !1043
  %67 = load %struct.exe_file_t** %connf, align 8, !dbg !1044
  %68 = getelementptr inbounds %struct.exe_file_t* %67, i64 0, i32 3, !dbg !1044
  %69 = load %struct.exe_disk_file_t** %68, align 8, !dbg !1044
  %70 = getelementptr inbounds %struct.exe_disk_file_t* %69, i64 0, i32 4, !dbg !1044
  %71 = load %struct.exe_sockaddr_t** %70, align 8, !dbg !1044
  %72 = getelementptr inbounds %struct.exe_file_t* %67, i64 0, i32 5, !dbg !1044
  store %struct.exe_sockaddr_t* %71, %struct.exe_sockaddr_t** %72, align 8, !dbg !1044
  %73 = icmp eq %struct.sockaddr* %addr, null, !dbg !1045
  br i1 %73, label %bb14.bb18_crit_edge, label %bb15, !dbg !1045

bb14.bb18_crit_edge:                              ; preds = %bb14
  %.pre = load %struct.exe_file_t** %connf, align 8
  br label %bb18

bb15:                                             ; preds = %bb14
  %74 = load i32* %addrlen, align 4, !dbg !1046
  %75 = zext i32 %74 to i64, !dbg !1046
  %76 = bitcast %struct.sockaddr* %addr to i8*, !dbg !1046
  call void @klee_check_memory_access(i8* %76, i64 %75) nounwind, !dbg !1046
  %77 = load i32* %addrlen, align 4, !dbg !1047
  %78 = load %struct.exe_file_t** %connf, align 8, !dbg !1047
  %79 = getelementptr inbounds %struct.exe_file_t* %78, i64 0, i32 5, !dbg !1047
  %80 = load %struct.exe_sockaddr_t** %79, align 8, !dbg !1047
  %81 = getelementptr inbounds %struct.exe_sockaddr_t* %80, i64 0, i32 1, !dbg !1047
  %82 = load i32* %81, align 8, !dbg !1047
  %83 = icmp ult i32 %77, %82, !dbg !1047
  br i1 %83, label %bb16, label %bb17, !dbg !1047

bb16:                                             ; preds = %bb15
  %84 = getelementptr inbounds %struct.exe_sockaddr_t* %80, i64 0, i32 0, !dbg !1048
  %85 = load %struct.sockaddr_storage** %84, align 8, !dbg !1048
  %86 = bitcast %struct.sockaddr_storage* %85 to i8*, !dbg !1048
  call void @free(i8* %86) nounwind, !dbg !1048
  %87 = load %struct.exe_file_t** %connf, align 8, !dbg !1049
  %88 = getelementptr inbounds %struct.exe_file_t* %87, i64 0, i32 4, i32 0, !dbg !1049
  %89 = load %struct.sockaddr_storage** %88, align 8, !dbg !1049
  %90 = bitcast %struct.sockaddr_storage* %89 to i8*, !dbg !1049
  call void @free(i8* %90) nounwind, !dbg !1049
  %91 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1050
  %92 = add i32 %91, -1, !dbg !1050
  store i32 %92, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1050
  %93 = load %struct.exe_file_t** %connf, align 8, !dbg !1051
  call void @__undo_get_new_fd(%struct.exe_file_t* %93) nounwind, !dbg !1051
  %94 = call i32* @__errno_location() nounwind readnone, !dbg !1052
  store i32 22, i32* %94, align 4, !dbg !1052
  br label %bb24, !dbg !1053

bb17:                                             ; preds = %bb15
  %95 = zext i32 %82 to i64, !dbg !1054
  %96 = getelementptr inbounds %struct.exe_sockaddr_t* %80, i64 0, i32 0, !dbg !1054
  %97 = load %struct.sockaddr_storage** %96, align 8, !dbg !1054
  %98 = bitcast %struct.sockaddr_storage* %97 to i8*, !dbg !1054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %98, i64 %95, i32 2, i1 false), !dbg !1054
  %99 = load %struct.exe_sockaddr_t** %79, align 8, !dbg !1055
  %100 = getelementptr inbounds %struct.exe_sockaddr_t* %99, i64 0, i32 1, !dbg !1055
  %101 = load i32* %100, align 8, !dbg !1055
  store i32 %101, i32* %addrlen, align 4, !dbg !1055
  br label %bb18, !dbg !1055

bb18:                                             ; preds = %bb14.bb18_crit_edge, %bb17
  %102 = phi %struct.exe_file_t* [ %.pre, %bb14.bb18_crit_edge ], [ %78, %bb17 ]
  %103 = getelementptr inbounds %struct.exe_file_t* %102, i64 0, i32 1, !dbg !1056
  %104 = load i32* %103, align 4, !dbg !1056
  %105 = or i32 %104, 12, !dbg !1056
  store i32 %105, i32* %103, align 4, !dbg !1056
  br label %bb24, !dbg !1057

bb19:                                             ; preds = %bb7
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %fchild}, metadata !540), !dbg !1058
  %106 = call i32 @__get_new_fd(%struct.exe_file_t** %fchild) nounwind, !dbg !1059
  call void @llvm.dbg.value(metadata !{i32 %106}, i64 0, metadata !542), !dbg !1059
  %107 = icmp slt i32 %106, 0, !dbg !1060
  br i1 %107, label %bb20, label %bb21, !dbg !1060

bb20:                                             ; preds = %bb19
  %108 = call i32* @__errno_location() nounwind readnone, !dbg !1061
  store i32 12, i32* %108, align 4, !dbg !1061
  br label %bb24, !dbg !1062

bb21:                                             ; preds = %bb19
  %109 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !1063
  %110 = load i32* %109, align 8, !dbg !1063
  %111 = call i64 (i64, ...)* @syscall(i64 43, i32 %110, %struct.sockaddr* %addr, i32* %addrlen) nounwind, !dbg !1063
  %112 = trunc i64 %111 to i32, !dbg !1063
  call void @llvm.dbg.value(metadata !{i32 %112}, i64 0, metadata !543), !dbg !1063
  %113 = icmp slt i32 %112, 0, !dbg !1064
  br i1 %113, label %bb22, label %bb23, !dbg !1064

bb22:                                             ; preds = %bb21
  %114 = call i32* @__errno_location() nounwind readnone, !dbg !1065
  %115 = call i32 @klee_get_errno() nounwind, !dbg !1065
  store i32 %115, i32* %114, align 4, !dbg !1065
  %116 = load %struct.exe_file_t** %fchild, align 8, !dbg !1066
  call void @__undo_get_new_fd(%struct.exe_file_t* %116) nounwind, !dbg !1066
  br label %bb24, !dbg !1067

bb23:                                             ; preds = %bb21
  %117 = load %struct.exe_file_t** %fchild, align 8, !dbg !1068
  %118 = getelementptr inbounds %struct.exe_file_t* %117, i64 0, i32 1, !dbg !1068
  %119 = load i32* %118, align 4, !dbg !1068
  %120 = or i32 %119, 16, !dbg !1068
  store i32 %120, i32* %118, align 4, !dbg !1068
  %121 = load %struct.exe_file_t** %fchild, align 8, !dbg !1069
  %122 = getelementptr inbounds %struct.exe_file_t* %121, i64 0, i32 1, !dbg !1069
  %123 = load i32* %122, align 4, !dbg !1069
  %124 = or i32 %123, 12, !dbg !1069
  store i32 %124, i32* %122, align 4, !dbg !1069
  %125 = load %struct.exe_file_t** %fchild, align 8, !dbg !1070
  %126 = getelementptr inbounds %struct.exe_file_t* %125, i64 0, i32 0, !dbg !1070
  store i32 %112, i32* %126, align 8, !dbg !1070
  br label %bb24, !dbg !1071

bb24:                                             ; preds = %bb8, %bb23, %bb22, %bb20, %bb18, %bb16, %bb13, %bb11, %bb6, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ -1, %bb6 ], [ -1, %bb11 ], [ -1, %bb13 ], [ -1, %bb16 ], [ %17, %bb18 ], [ -1, %bb20 ], [ %112, %bb22 ], [ %106, %bb23 ], [ %17, %bb8 ]
  ret i32 %.0, !dbg !1014
}

declare i32 @__get_new_fd(%struct.exe_file_t**)

declare void @__undo_get_new_fd(%struct.exe_file_t*)

declare void @free(i8* nocapture) nounwind

define i32 @accept(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !544), !dbg !1072
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !545), !dbg !1072
  tail call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !546), !dbg !1072
  %0 = tail call i32 @__fd_accept(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind, !dbg !1073
  ret i32 %0, !dbg !1073
}

define weak i32 @socket(i32 %domain, i32 %type, i32 %protocol) nounwind {
entry:
  %f = alloca %struct.exe_file_t*, align 8
  call void @llvm.dbg.value(metadata !{i32 %domain}, i64 0, metadata !547), !dbg !1075
  call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !548), !dbg !1075
  call void @llvm.dbg.value(metadata !{i32 %protocol}, i64 0, metadata !549), !dbg !1075
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !552), !dbg !1076
  %0 = call i32 @klee_zest_enabled() nounwind, !dbg !1077
  %1 = icmp eq i32 %0, 0, !dbg !1077
  br i1 %1, label %bb5, label %bb, !dbg !1077

bb:                                               ; preds = %entry
  %2 = call i32 @__get_new_fd(%struct.exe_file_t** %f) nounwind, !dbg !1078
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !550), !dbg !1078
  %3 = icmp slt i32 %2, 0, !dbg !1079
  br i1 %3, label %bb1, label %bb2, !dbg !1079

bb1:                                              ; preds = %bb
  call void @klee_warning(i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !1080
  %4 = call i32* @__errno_location() nounwind readnone, !dbg !1081
  store i32 24, i32* %4, align 4, !dbg !1081
  br label %bb28, !dbg !1082

bb2:                                              ; preds = %bb
  %5 = call i64 (i64, ...)* @syscall(i64 41, i32 %domain, i32 %type, i32 %protocol) nounwind, !dbg !1083
  %6 = trunc i64 %5 to i32, !dbg !1083
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !553), !dbg !1083
  %7 = icmp slt i32 %6, 0, !dbg !1084
  %8 = load %struct.exe_file_t** %f, align 8, !dbg !1085
  br i1 %7, label %bb3, label %bb4, !dbg !1084

bb3:                                              ; preds = %bb2
  call void @__undo_get_new_fd(%struct.exe_file_t* %8) nounwind, !dbg !1085
  %9 = call i32* @__errno_location() nounwind readnone, !dbg !1086
  %10 = call i32 @klee_get_errno() nounwind, !dbg !1086
  store i32 %10, i32* %9, align 4, !dbg !1086
  br label %bb28, !dbg !1087

bb4:                                              ; preds = %bb2
  %11 = getelementptr inbounds %struct.exe_file_t* %8, i64 0, i32 1, !dbg !1088
  %12 = load i32* %11, align 4, !dbg !1088
  %13 = or i32 %12, 16, !dbg !1088
  store i32 %13, i32* %11, align 4, !dbg !1088
  %14 = load %struct.exe_file_t** %f, align 8, !dbg !1089
  %15 = getelementptr inbounds %struct.exe_file_t* %14, i64 0, i32 1, !dbg !1089
  %16 = load i32* %15, align 4, !dbg !1089
  %17 = or i32 %16, 12, !dbg !1089
  store i32 %17, i32* %15, align 4, !dbg !1089
  %18 = load %struct.exe_file_t** %f, align 8, !dbg !1090
  %19 = getelementptr inbounds %struct.exe_file_t* %18, i64 0, i32 0, !dbg !1090
  store i32 %6, i32* %19, align 8, !dbg !1090
  br label %bb28, !dbg !1091

bb5:                                              ; preds = %entry
  switch i32 %domain, label %bb26 [
    i32 2, label %bb6
    i32 10, label %bb6
    i32 17, label %bb6
  ], !dbg !1092

bb6:                                              ; preds = %bb5, %bb5, %bb5
  switch i32 %type, label %bb25 [
    i32 1, label %bb7
    i32 2, label %bb16
    i32 3, label %bb16
    i32 10, label %bb16
  ], !dbg !1093

bb7:                                              ; preds = %bb6
  %20 = call i32 @__get_new_fd(%struct.exe_file_t** %f) nounwind, !dbg !1094
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !550), !dbg !1094
  %21 = icmp slt i32 %20, 0, !dbg !1095
  br i1 %21, label %bb28, label %bb9, !dbg !1095

bb9:                                              ; preds = %bb7
  %22 = load %struct.exe_file_t** %f, align 8, !dbg !1096
  %23 = getelementptr inbounds %struct.exe_file_t* %22, i64 0, i32 1, !dbg !1096
  %24 = load i32* %23, align 4, !dbg !1096
  %25 = or i32 %24, 16, !dbg !1096
  store i32 %25, i32* %23, align 4, !dbg !1096
  %26 = load %struct.exe_file_t** %f, align 8, !dbg !1097
  %27 = getelementptr inbounds %struct.exe_file_t* %26, i64 0, i32 4, !dbg !1097
  %28 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %27) nounwind, !dbg !1097
  %29 = icmp eq %struct.exe_sockaddr_t* %28, null, !dbg !1097
  %30 = load %struct.exe_file_t** %f, align 8, !dbg !1098
  br i1 %29, label %bb10, label %bb11, !dbg !1097

bb10:                                             ; preds = %bb9
  call void @__undo_get_new_fd(%struct.exe_file_t* %30) nounwind, !dbg !1098
  %31 = call i32* @__errno_location() nounwind readnone, !dbg !1099
  store i32 12, i32* %31, align 4, !dbg !1099
  br label %bb28, !dbg !1100

bb11:                                             ; preds = %bb9
  %32 = call noalias i8* @malloc(i64 16) nounwind, !dbg !1101
  %33 = bitcast i8* %32 to %struct.exe_sockaddr_t*, !dbg !1101
  %34 = getelementptr inbounds %struct.exe_file_t* %30, i64 0, i32 5, !dbg !1101
  store %struct.exe_sockaddr_t* %33, %struct.exe_sockaddr_t** %34, align 8, !dbg !1101
  %35 = load %struct.exe_file_t** %f, align 8, !dbg !1102
  %36 = getelementptr inbounds %struct.exe_file_t* %35, i64 0, i32 5, !dbg !1102
  %37 = load %struct.exe_sockaddr_t** %36, align 8, !dbg !1102
  %38 = icmp eq %struct.exe_sockaddr_t* %37, null, !dbg !1102
  br i1 %38, label %bb12, label %bb13, !dbg !1102

bb12:                                             ; preds = %bb11
  %39 = getelementptr inbounds %struct.exe_file_t* %35, i64 0, i32 4, i32 0, !dbg !1103
  %40 = load %struct.sockaddr_storage** %39, align 8, !dbg !1103
  %41 = bitcast %struct.sockaddr_storage* %40 to i8*, !dbg !1103
  call void @free(i8* %41) nounwind, !dbg !1103
  %42 = load %struct.exe_file_t** %f, align 8, !dbg !1104
  call void @__undo_get_new_fd(%struct.exe_file_t* %42) nounwind, !dbg !1104
  %43 = call i32* @__errno_location() nounwind readnone, !dbg !1105
  store i32 12, i32* %43, align 4, !dbg !1105
  br label %bb28, !dbg !1106

bb13:                                             ; preds = %bb11
  %44 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %37) nounwind, !dbg !1107
  %45 = icmp eq %struct.exe_sockaddr_t* %44, null, !dbg !1107
  %46 = load %struct.exe_file_t** %f, align 8, !dbg !1108
  br i1 %45, label %bb14, label %bb15, !dbg !1107

bb14:                                             ; preds = %bb13
  %47 = getelementptr inbounds %struct.exe_file_t* %46, i64 0, i32 5, !dbg !1108
  %48 = load %struct.exe_sockaddr_t** %47, align 8, !dbg !1108
  %49 = bitcast %struct.exe_sockaddr_t* %48 to i8*, !dbg !1108
  call void @free(i8* %49) nounwind, !dbg !1108
  %50 = load %struct.exe_file_t** %f, align 8, !dbg !1109
  %51 = getelementptr inbounds %struct.exe_file_t* %50, i64 0, i32 4, i32 0, !dbg !1109
  %52 = load %struct.sockaddr_storage** %51, align 8, !dbg !1109
  %53 = bitcast %struct.sockaddr_storage* %52 to i8*, !dbg !1109
  call void @free(i8* %53) nounwind, !dbg !1109
  %54 = load %struct.exe_file_t** %f, align 8, !dbg !1110
  call void @__undo_get_new_fd(%struct.exe_file_t* %54) nounwind, !dbg !1110
  %55 = call i32* @__errno_location() nounwind readnone, !dbg !1111
  store i32 12, i32* %55, align 4, !dbg !1111
  br label %bb28, !dbg !1112

bb15:                                             ; preds = %bb13
  %56 = getelementptr inbounds %struct.exe_file_t* %46, i64 0, i32 3, !dbg !1113
  store %struct.exe_disk_file_t* @dummy_dfile, %struct.exe_disk_file_t** %56, align 8, !dbg !1113
  %57 = load %struct.exe_file_t** %f, align 8, !dbg !1114
  %58 = getelementptr inbounds %struct.exe_file_t* %57, i64 0, i32 1, !dbg !1114
  %59 = load i32* %58, align 4, !dbg !1114
  %60 = or i32 %59, 12, !dbg !1114
  store i32 %60, i32* %58, align 4, !dbg !1114
  %61 = load %struct.exe_file_t** %f, align 8, !dbg !1115
  %62 = getelementptr inbounds %struct.exe_file_t* %61, i64 0, i32 6, !dbg !1115
  store i32 %domain, i32* %62, align 8, !dbg !1115
  br label %bb28, !dbg !1115

bb16:                                             ; preds = %bb6, %bb6, %bb6
  %63 = call i32 @__get_new_fd(%struct.exe_file_t** %f) nounwind, !dbg !1116
  call void @llvm.dbg.value(metadata !{i32 %63}, i64 0, metadata !550), !dbg !1116
  %64 = icmp slt i32 %63, 0, !dbg !1117
  br i1 %64, label %bb28, label %bb18, !dbg !1117

bb18:                                             ; preds = %bb16
  %65 = load %struct.exe_file_t** %f, align 8, !dbg !1118
  %66 = getelementptr inbounds %struct.exe_file_t* %65, i64 0, i32 1, !dbg !1118
  %67 = load i32* %66, align 4, !dbg !1118
  %68 = or i32 %67, 48, !dbg !1118
  store i32 %68, i32* %66, align 4, !dbg !1118
  %69 = load %struct.exe_file_t** %f, align 8, !dbg !1119
  %70 = getelementptr inbounds %struct.exe_file_t* %69, i64 0, i32 4, !dbg !1119
  %71 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %70) nounwind, !dbg !1119
  %72 = icmp eq %struct.exe_sockaddr_t* %71, null, !dbg !1119
  %73 = load %struct.exe_file_t** %f, align 8, !dbg !1120
  br i1 %72, label %bb19, label %bb20, !dbg !1119

bb19:                                             ; preds = %bb18
  call void @__undo_get_new_fd(%struct.exe_file_t* %73) nounwind, !dbg !1120
  %74 = call i32* @__errno_location() nounwind readnone, !dbg !1121
  store i32 12, i32* %74, align 4, !dbg !1121
  br label %bb28, !dbg !1122

bb20:                                             ; preds = %bb18
  %75 = call noalias i8* @malloc(i64 16) nounwind, !dbg !1123
  %76 = bitcast i8* %75 to %struct.exe_sockaddr_t*, !dbg !1123
  %77 = getelementptr inbounds %struct.exe_file_t* %73, i64 0, i32 5, !dbg !1123
  store %struct.exe_sockaddr_t* %76, %struct.exe_sockaddr_t** %77, align 8, !dbg !1123
  %78 = load %struct.exe_file_t** %f, align 8, !dbg !1124
  %79 = getelementptr inbounds %struct.exe_file_t* %78, i64 0, i32 5, !dbg !1124
  %80 = load %struct.exe_sockaddr_t** %79, align 8, !dbg !1124
  %81 = icmp eq %struct.exe_sockaddr_t* %80, null, !dbg !1124
  br i1 %81, label %bb21, label %bb22, !dbg !1124

bb21:                                             ; preds = %bb20
  %82 = getelementptr inbounds %struct.exe_file_t* %78, i64 0, i32 4, i32 0, !dbg !1125
  %83 = load %struct.sockaddr_storage** %82, align 8, !dbg !1125
  %84 = bitcast %struct.sockaddr_storage* %83 to i8*, !dbg !1125
  call void @free(i8* %84) nounwind, !dbg !1125
  %85 = load %struct.exe_file_t** %f, align 8, !dbg !1126
  call void @__undo_get_new_fd(%struct.exe_file_t* %85) nounwind, !dbg !1126
  %86 = call i32* @__errno_location() nounwind readnone, !dbg !1127
  store i32 12, i32* %86, align 4, !dbg !1127
  br label %bb28, !dbg !1128

bb22:                                             ; preds = %bb20
  %87 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %80) nounwind, !dbg !1129
  %88 = icmp eq %struct.exe_sockaddr_t* %87, null, !dbg !1129
  %89 = load %struct.exe_file_t** %f, align 8, !dbg !1130
  br i1 %88, label %bb23, label %bb24, !dbg !1129

bb23:                                             ; preds = %bb22
  %90 = getelementptr inbounds %struct.exe_file_t* %89, i64 0, i32 5, !dbg !1130
  %91 = load %struct.exe_sockaddr_t** %90, align 8, !dbg !1130
  %92 = bitcast %struct.exe_sockaddr_t* %91 to i8*, !dbg !1130
  call void @free(i8* %92) nounwind, !dbg !1130
  %93 = load %struct.exe_file_t** %f, align 8, !dbg !1131
  %94 = getelementptr inbounds %struct.exe_file_t* %93, i64 0, i32 4, i32 0, !dbg !1131
  %95 = load %struct.sockaddr_storage** %94, align 8, !dbg !1131
  %96 = bitcast %struct.sockaddr_storage* %95 to i8*, !dbg !1131
  call void @free(i8* %96) nounwind, !dbg !1131
  %97 = load %struct.exe_file_t** %f, align 8, !dbg !1132
  call void @__undo_get_new_fd(%struct.exe_file_t* %97) nounwind, !dbg !1132
  %98 = call i32* @__errno_location() nounwind readnone, !dbg !1133
  store i32 12, i32* %98, align 4, !dbg !1133
  br label %bb28, !dbg !1134

bb24:                                             ; preds = %bb22
  %99 = getelementptr inbounds %struct.exe_file_t* %89, i64 0, i32 3, !dbg !1135
  store %struct.exe_disk_file_t* @dummy_dfile, %struct.exe_disk_file_t** %99, align 8, !dbg !1135
  %100 = load %struct.exe_file_t** %f, align 8, !dbg !1136
  %101 = getelementptr inbounds %struct.exe_file_t* %100, i64 0, i32 1, !dbg !1136
  %102 = load i32* %101, align 4, !dbg !1136
  %103 = or i32 %102, 12, !dbg !1136
  store i32 %103, i32* %101, align 4, !dbg !1136
  br label %bb28, !dbg !1136

bb25:                                             ; preds = %bb6
  call void @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !1137
  %104 = call i32* @__errno_location() nounwind readnone, !dbg !1138
  store i32 94, i32* %104, align 4, !dbg !1138
  br label %bb28, !dbg !1139

bb26:                                             ; preds = %bb5
  call void @klee_warning(i8* getelementptr inbounds ([28 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !1140
  %105 = call i32* @__errno_location() nounwind readnone, !dbg !1141
  store i32 93, i32* %105, align 4, !dbg !1141
  br label %bb28, !dbg !1142

bb28:                                             ; preds = %bb15, %bb24, %bb16, %bb7, %bb26, %bb25, %bb23, %bb21, %bb19, %bb14, %bb12, %bb10, %bb4, %bb3, %bb1
  %.0 = phi i32 [ %2, %bb1 ], [ %6, %bb3 ], [ %2, %bb4 ], [ -1, %bb26 ], [ -1, %bb25 ], [ -1, %bb19 ], [ -1, %bb21 ], [ -1, %bb23 ], [ -1, %bb10 ], [ -1, %bb12 ], [ -1, %bb14 ], [ %20, %bb7 ], [ %63, %bb16 ], [ %63, %bb24 ], [ %20, %bb15 ]
  ret i32 %.0, !dbg !1082
}

declare i32 @klee_zest_enabled()

declare noalias i8* @malloc(i64) nounwind

define i32 @__fd_socket(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !555), !dbg !1143
  %0 = load i64* %args, align 8, !dbg !1144
  %1 = trunc i64 %0 to i32, !dbg !1144
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !556), !dbg !1144
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !1145
  %3 = load i64* %2, align 8, !dbg !1145
  %4 = trunc i64 %3 to i32, !dbg !1145
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !558), !dbg !1145
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !1146
  %6 = load i64* %5, align 8, !dbg !1146
  %7 = trunc i64 %6 to i32, !dbg !1146
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !559), !dbg !1146
  %8 = tail call i32 @socket(i32 %1, i32 %4, i32 %7) nounwind, !dbg !1147
  ret i32 %8, !dbg !1147
}

define weak i32 @__socketcall(i32 %type, i64* %args) nounwind {
entry:
  %iov.i21 = alloca %struct.iovec, align 8
  %msg.i22 = alloca %struct.msghdr, align 8
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  %iov.i.i19 = alloca %struct.iovec, align 8
  %msg.i.i20 = alloca %struct.msghdr, align 8
  %iov.i.i = alloca %struct.iovec, align 8
  %msg.i.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !560), !dbg !1148
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !561), !dbg !1148
  switch i32 %type, label %bb16 [
    i32 1, label %bb
    i32 2, label %bb1
    i32 3, label %bb2
    i32 4, label %bb3
    i32 5, label %bb4
    i32 6, label %bb5
    i32 7, label %bb6
    i32 17, label %bb15
    i32 9, label %bb7
    i32 10, label %bb8
    i32 11, label %bb9
    i32 12, label %bb10
    i32 13, label %bb11
    i32 14, label %bb12
    i32 15, label %bb13
    i32 16, label %bb14
  ], !dbg !1149

bb:                                               ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !555) nounwind, !dbg !1151
  %0 = load i64* %args, align 8, !dbg !1153
  %1 = trunc i64 %0 to i32, !dbg !1153
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !556) nounwind, !dbg !1153
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !1154
  %3 = load i64* %2, align 8, !dbg !1154
  %4 = trunc i64 %3 to i32, !dbg !1154
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !558) nounwind, !dbg !1154
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !1155
  %6 = load i64* %5, align 8, !dbg !1155
  %7 = trunc i64 %6 to i32, !dbg !1155
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !559) nounwind, !dbg !1155
  %8 = call i32 @socket(i32 %1, i32 %4, i32 %7) nounwind, !dbg !1156
  br label %bb17, !dbg !1152

bb1:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !522) nounwind, !dbg !1157
  %9 = load i64* %args, align 8, !dbg !1159
  %10 = trunc i64 %9 to i32, !dbg !1159
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !523) nounwind, !dbg !1159
  %11 = getelementptr inbounds i64* %args, i64 1, !dbg !1160
  %12 = load i64* %11, align 8, !dbg !1160
  %13 = inttoptr i64 %12 to %struct.sockaddr*, !dbg !1160
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %13}, i64 0, metadata !525) nounwind, !dbg !1160
  %14 = getelementptr inbounds i64* %args, i64 2, !dbg !1161
  %15 = load i64* %14, align 8, !dbg !1161
  %16 = trunc i64 %15 to i32, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !526) nounwind, !dbg !1161
  %17 = call i32 @bind(i32 %10, %struct.sockaddr* %13, i32 %16) nounwind, !dbg !1162
  br label %bb17, !dbg !1158

bb2:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !511) nounwind, !dbg !1163
  %18 = load i64* %args, align 8, !dbg !1165
  %19 = trunc i64 %18 to i32, !dbg !1165
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !512) nounwind, !dbg !1165
  %20 = getelementptr inbounds i64* %args, i64 1, !dbg !1166
  %21 = load i64* %20, align 8, !dbg !1166
  %22 = inttoptr i64 %21 to %struct.sockaddr*, !dbg !1166
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %22}, i64 0, metadata !514) nounwind, !dbg !1166
  %23 = getelementptr inbounds i64* %args, i64 2, !dbg !1167
  %24 = load i64* %23, align 8, !dbg !1167
  %25 = trunc i64 %24 to i32, !dbg !1167
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !515) nounwind, !dbg !1167
  %26 = call i32 @connect(i32 %19, %struct.sockaddr* %22, i32 %25) nounwind, !dbg !1168
  br label %bb17, !dbg !1164

bb3:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !501) nounwind, !dbg !1169
  %27 = load i64* %args, align 8, !dbg !1171
  %28 = trunc i64 %27 to i32, !dbg !1171
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !502) nounwind, !dbg !1171
  %29 = getelementptr inbounds i64* %args, i64 1, !dbg !1172
  %30 = load i64* %29, align 8, !dbg !1172
  %31 = trunc i64 %30 to i32, !dbg !1172
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !504) nounwind, !dbg !1172
  %32 = call i32 @listen(i32 %28, i32 %31) nounwind, !dbg !1173
  br label %bb17, !dbg !1170

bb4:                                              ; preds = %entry
  %33 = getelementptr inbounds i64* %args, i64 2, !dbg !1174
  %34 = load i64* %33, align 8, !dbg !1174
  %35 = inttoptr i64 %34 to i32*, !dbg !1174
  %36 = getelementptr inbounds i64* %args, i64 1, !dbg !1174
  %37 = load i64* %36, align 8, !dbg !1174
  %38 = inttoptr i64 %37 to %struct.sockaddr*, !dbg !1174
  %39 = load i64* %args, align 8, !dbg !1174
  %40 = trunc i64 %39 to i32, !dbg !1174
  %41 = call i32 @__fd_accept(i32 %40, %struct.sockaddr* %38, i32* %35) nounwind, !dbg !1174
  br label %bb17, !dbg !1174

bb5:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !491) nounwind, !dbg !1175
  %42 = load i64* %args, align 8, !dbg !1177
  %43 = trunc i64 %42 to i32, !dbg !1177
  call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !492) nounwind, !dbg !1177
  %44 = getelementptr inbounds i64* %args, i64 1, !dbg !1178
  %45 = load i64* %44, align 8, !dbg !1178
  %46 = inttoptr i64 %45 to %struct.sockaddr*, !dbg !1178
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %46}, i64 0, metadata !494) nounwind, !dbg !1178
  %47 = getelementptr inbounds i64* %args, i64 2, !dbg !1179
  %48 = load i64* %47, align 8, !dbg !1179
  %49 = inttoptr i64 %48 to i32*, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32* %49}, i64 0, metadata !495) nounwind, !dbg !1179
  %50 = call i32 @getsockname(i32 %43, %struct.sockaddr* %46, i32* %49) nounwind, !dbg !1180
  br label %bb17, !dbg !1176

bb6:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !480) nounwind, !dbg !1181
  %51 = load i64* %args, align 8, !dbg !1183
  %52 = trunc i64 %51 to i32, !dbg !1183
  call void @llvm.dbg.value(metadata !{i32 %52}, i64 0, metadata !481) nounwind, !dbg !1183
  %53 = getelementptr inbounds i64* %args, i64 1, !dbg !1184
  %54 = load i64* %53, align 8, !dbg !1184
  %55 = inttoptr i64 %54 to %struct.sockaddr*, !dbg !1184
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %55}, i64 0, metadata !483) nounwind, !dbg !1184
  %56 = getelementptr inbounds i64* %args, i64 2, !dbg !1185
  %57 = load i64* %56, align 8, !dbg !1185
  %58 = inttoptr i64 %57 to i32*, !dbg !1185
  call void @llvm.dbg.value(metadata !{i32* %58}, i64 0, metadata !484) nounwind, !dbg !1185
  %59 = call i32 @getpeername(i32 %52, %struct.sockaddr* %55, i32* %58) nounwind, !dbg !1186
  br label %bb17, !dbg !1182

bb7:                                              ; preds = %entry
  %60 = getelementptr inbounds i64* %args, i64 3, !dbg !1187
  %61 = load i64* %60, align 8, !dbg !1187
  %62 = trunc i64 %61 to i32, !dbg !1187
  %63 = getelementptr inbounds i64* %args, i64 2, !dbg !1187
  %64 = load i64* %63, align 8, !dbg !1187
  %65 = getelementptr inbounds i64* %args, i64 1, !dbg !1187
  %66 = load i64* %65, align 8, !dbg !1187
  %67 = inttoptr i64 %66 to i8*, !dbg !1187
  %68 = load i64* %args, align 8, !dbg !1187
  %69 = trunc i64 %68 to i32, !dbg !1187
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !456) nounwind, !dbg !1188
  call void @llvm.dbg.value(metadata !{i8* %67}, i64 0, metadata !457) nounwind, !dbg !1188
  call void @llvm.dbg.value(metadata !{i64 %64}, i64 0, metadata !458) nounwind, !dbg !1188
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !459) nounwind, !dbg !1188
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !441) nounwind, !dbg !1189
  call void @llvm.dbg.value(metadata !{i8* %67}, i64 0, metadata !442) nounwind, !dbg !1189
  call void @llvm.dbg.value(metadata !{i64 %64}, i64 0, metadata !443) nounwind, !dbg !1189
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !444) nounwind, !dbg !1189
  call void @llvm.dbg.value(metadata !725, i64 0, metadata !445) nounwind, !dbg !1189
  call void @llvm.dbg.value(metadata !822, i64 0, metadata !446) nounwind, !dbg !1189
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i.i}, metadata !447) nounwind, !dbg !1191
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i.i}, metadata !449) nounwind, !dbg !1192
  %70 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 0, !dbg !1193
  store i8* %67, i8** %70, align 8, !dbg !1193
  %71 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 1, !dbg !1194
  store i64 %64, i64* %71, align 8, !dbg !1194
  %72 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 0, !dbg !1195
  store i8* null, i8** %72, align 8, !dbg !1195
  %73 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 1, !dbg !1196
  store i32 0, i32* %73, align 8, !dbg !1196
  %74 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 2, !dbg !1197
  store %struct.iovec* %iov.i.i, %struct.iovec** %74, align 8, !dbg !1197
  %75 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 3, !dbg !1198
  store i64 1, i64* %75, align 8, !dbg !1198
  %76 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 4, !dbg !1199
  store i8* null, i8** %76, align 8, !dbg !1199
  %77 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 5, !dbg !1200
  store i64 0, i64* %77, align 8, !dbg !1200
  %78 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 6, !dbg !1201
  store i32 %62, i32* %78, align 8, !dbg !1201
  %79 = call i64 @__fd_sendmsg(i32 %69, %struct.msghdr* %msg.i.i, i32 %62) nounwind, !dbg !1202
  %80 = trunc i64 %79 to i32, !dbg !1187
  br label %bb17, !dbg !1187

bb8:                                              ; preds = %entry
  %81 = getelementptr inbounds i64* %args, i64 3, !dbg !1203
  %82 = load i64* %81, align 8, !dbg !1203
  %83 = trunc i64 %82 to i32, !dbg !1203
  %84 = getelementptr inbounds i64* %args, i64 2, !dbg !1203
  %85 = load i64* %84, align 8, !dbg !1203
  %86 = getelementptr inbounds i64* %args, i64 1, !dbg !1203
  %87 = load i64* %86, align 8, !dbg !1203
  %88 = inttoptr i64 %87 to i8*, !dbg !1203
  %89 = load i64* %args, align 8, !dbg !1203
  %90 = trunc i64 %89 to i32, !dbg !1203
  call void @llvm.dbg.value(metadata !{i32 %90}, i64 0, metadata !425) nounwind, !dbg !1204
  call void @llvm.dbg.value(metadata !{i8* %88}, i64 0, metadata !426) nounwind, !dbg !1204
  call void @llvm.dbg.value(metadata !{i64 %85}, i64 0, metadata !427) nounwind, !dbg !1204
  call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !428) nounwind, !dbg !1204
  call void @llvm.dbg.value(metadata !{i32 %90}, i64 0, metadata !409) nounwind, !dbg !1205
  call void @llvm.dbg.value(metadata !{i8* %88}, i64 0, metadata !410) nounwind, !dbg !1205
  call void @llvm.dbg.value(metadata !{i64 %85}, i64 0, metadata !411) nounwind, !dbg !1205
  call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !412) nounwind, !dbg !1205
  call void @llvm.dbg.value(metadata !725, i64 0, metadata !413) nounwind, !dbg !1205
  call void @llvm.dbg.value(metadata !726, i64 0, metadata !414) nounwind, !dbg !1205
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i.i19}, metadata !415) nounwind, !dbg !1207
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i.i20}, metadata !417) nounwind, !dbg !1208
  %91 = getelementptr inbounds %struct.iovec* %iov.i.i19, i64 0, i32 0, !dbg !1209
  store i8* %88, i8** %91, align 8, !dbg !1209
  %92 = getelementptr inbounds %struct.iovec* %iov.i.i19, i64 0, i32 1, !dbg !1210
  store i64 %85, i64* %92, align 8, !dbg !1210
  %93 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 0, !dbg !1211
  store i8* null, i8** %93, align 8, !dbg !1211
  %94 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 1, !dbg !1212
  store i32 0, i32* %94, align 8, !dbg !1212
  %95 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 2, !dbg !1213
  store %struct.iovec* %iov.i.i19, %struct.iovec** %95, align 8, !dbg !1213
  %96 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 3, !dbg !1214
  store i64 1, i64* %96, align 8, !dbg !1214
  %97 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 4, !dbg !1215
  store i8* null, i8** %97, align 8, !dbg !1215
  %98 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 5, !dbg !1216
  store i64 0, i64* %98, align 8, !dbg !1216
  %99 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 6, !dbg !1217
  store i32 %83, i32* %99, align 8, !dbg !1217
  %100 = call i64 @__fd_recvmsg(i32 %90, %struct.msghdr* %msg.i.i20, i32 %83) nounwind, !dbg !1218
  call void @llvm.dbg.value(metadata !{i64 %100}, i64 0, metadata !418) nounwind, !dbg !1218
  %101 = trunc i64 %100 to i32, !dbg !1203
  br label %bb17, !dbg !1203

bb9:                                              ; preds = %entry
  %102 = getelementptr inbounds i64* %args, i64 5, !dbg !1219
  %103 = load i64* %102, align 8, !dbg !1219
  %104 = trunc i64 %103 to i32, !dbg !1219
  %105 = getelementptr inbounds i64* %args, i64 4, !dbg !1219
  %106 = load i64* %105, align 8, !dbg !1219
  %107 = getelementptr inbounds i64* %args, i64 3, !dbg !1219
  %108 = load i64* %107, align 8, !dbg !1219
  %109 = trunc i64 %108 to i32, !dbg !1219
  %110 = getelementptr inbounds i64* %args, i64 2, !dbg !1219
  %111 = load i64* %110, align 8, !dbg !1219
  %112 = getelementptr inbounds i64* %args, i64 1, !dbg !1219
  %113 = load i64* %112, align 8, !dbg !1219
  %114 = inttoptr i64 %113 to i8*, !dbg !1219
  %115 = load i64* %args, align 8, !dbg !1219
  %116 = trunc i64 %115 to i32, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !441) nounwind, !dbg !1220
  call void @llvm.dbg.value(metadata !{i8* %114}, i64 0, metadata !442) nounwind, !dbg !1220
  call void @llvm.dbg.value(metadata !{i64 %111}, i64 0, metadata !443) nounwind, !dbg !1220
  call void @llvm.dbg.value(metadata !{i32 %109}, i64 0, metadata !444) nounwind, !dbg !1220
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !445) nounwind, !dbg !1220
  call void @llvm.dbg.value(metadata !{i32 %104}, i64 0, metadata !446) nounwind, !dbg !1220
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !447) nounwind, !dbg !1221
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !449) nounwind, !dbg !1222
  %117 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !1223
  store i8* %114, i8** %117, align 8, !dbg !1223
  %118 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !1224
  store i64 %111, i64* %118, align 8, !dbg !1224
  %119 = inttoptr i64 %106 to i8*, !dbg !1225
  %120 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !1225
  store i8* %119, i8** %120, align 8, !dbg !1225
  %121 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !1226
  store i32 %104, i32* %121, align 8, !dbg !1226
  %122 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !1227
  store %struct.iovec* %iov.i, %struct.iovec** %122, align 8, !dbg !1227
  %123 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !1228
  store i64 1, i64* %123, align 8, !dbg !1228
  %124 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !1229
  store i8* null, i8** %124, align 8, !dbg !1229
  %125 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !1230
  store i64 0, i64* %125, align 8, !dbg !1230
  %126 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !1231
  store i32 %109, i32* %126, align 8, !dbg !1231
  %127 = call i64 @__fd_sendmsg(i32 %116, %struct.msghdr* %msg.i, i32 %109) nounwind, !dbg !1232
  %128 = trunc i64 %127 to i32, !dbg !1219
  br label %bb17, !dbg !1219

bb10:                                             ; preds = %entry
  %129 = getelementptr inbounds i64* %args, i64 5, !dbg !1233
  %130 = load i64* %129, align 8, !dbg !1233
  %131 = inttoptr i64 %130 to i32*, !dbg !1233
  %132 = getelementptr inbounds i64* %args, i64 4, !dbg !1233
  %133 = load i64* %132, align 8, !dbg !1233
  %134 = getelementptr inbounds i64* %args, i64 3, !dbg !1233
  %135 = load i64* %134, align 8, !dbg !1233
  %136 = trunc i64 %135 to i32, !dbg !1233
  %137 = load i64* %args, align 8, !dbg !1233
  %138 = trunc i64 %137 to i32, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32 %138}, i64 0, metadata !409) nounwind, !dbg !1234
  call void @llvm.dbg.value(metadata !{i8* %146}, i64 0, metadata !410) nounwind, !dbg !1234
  call void @llvm.dbg.value(metadata !{i64 %147}, i64 0, metadata !411) nounwind, !dbg !1234
  call void @llvm.dbg.value(metadata !{i32 %136}, i64 0, metadata !412) nounwind, !dbg !1234
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !413) nounwind, !dbg !1234
  call void @llvm.dbg.value(metadata !{i32* %131}, i64 0, metadata !414) nounwind, !dbg !1234
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i21}, metadata !415) nounwind, !dbg !1235
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i22}, metadata !417) nounwind, !dbg !1236
  %139 = icmp ne i64 %133, 0, !dbg !1237
  %140 = icmp eq i64 %130, 0, !dbg !1237
  %141 = and i1 %139, %140, !dbg !1237
  br i1 %141, label %bb.i, label %bb3.i, !dbg !1237

bb.i:                                             ; preds = %bb10
  %142 = call i32* @__errno_location() nounwind readnone, !dbg !1238
  store i32 14, i32* %142, align 4, !dbg !1238
  br label %__fd_recvfrom.exit, !dbg !1239

bb3.i:                                            ; preds = %bb10
  %143 = getelementptr inbounds i64* %args, i64 1, !dbg !1233
  %144 = load i64* %143, align 8, !dbg !1233
  %145 = getelementptr inbounds i64* %args, i64 2, !dbg !1233
  %146 = inttoptr i64 %144 to i8*, !dbg !1233
  %147 = load i64* %145, align 8, !dbg !1233
  %148 = getelementptr inbounds %struct.iovec* %iov.i21, i64 0, i32 0, !dbg !1240
  store i8* %146, i8** %148, align 8, !dbg !1240
  %149 = getelementptr inbounds %struct.iovec* %iov.i21, i64 0, i32 1, !dbg !1241
  store i64 %147, i64* %149, align 8, !dbg !1241
  %150 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 0, !dbg !1242
  %151 = inttoptr i64 %133 to i8*, !dbg !1242
  store i8* %151, i8** %150, align 8, !dbg !1242
  br i1 %140, label %bb6.i, label %bb4.i, !dbg !1243

bb4.i:                                            ; preds = %bb3.i
  %152 = load i32* %131, align 4, !dbg !1243
  br label %bb6.i, !dbg !1243

bb6.i:                                            ; preds = %bb4.i, %bb3.i
  %iftmp.113.0.i = phi i32 [ %152, %bb4.i ], [ 0, %bb3.i ]
  %153 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 1, !dbg !1243
  store i32 %iftmp.113.0.i, i32* %153, align 8, !dbg !1243
  %154 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 2, !dbg !1244
  store %struct.iovec* %iov.i21, %struct.iovec** %154, align 8, !dbg !1244
  %155 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 3, !dbg !1245
  store i64 1, i64* %155, align 8, !dbg !1245
  %156 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 4, !dbg !1246
  store i8* null, i8** %156, align 8, !dbg !1246
  %157 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 5, !dbg !1247
  store i64 0, i64* %157, align 8, !dbg !1247
  %158 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 6, !dbg !1248
  store i32 %136, i32* %158, align 8, !dbg !1248
  %159 = call i64 @__fd_recvmsg(i32 %138, %struct.msghdr* %msg.i22, i32 %136) nounwind, !dbg !1249
  call void @llvm.dbg.value(metadata !{i64 %159}, i64 0, metadata !418) nounwind, !dbg !1249
  br i1 %140, label %__fd_recvfrom.exit, label %bb7.i, !dbg !1250

bb7.i:                                            ; preds = %bb6.i
  %160 = load i32* %153, align 8, !dbg !1250
  store i32 %160, i32* %131, align 4, !dbg !1250
  br label %__fd_recvfrom.exit, !dbg !1250

__fd_recvfrom.exit:                               ; preds = %bb.i, %bb6.i, %bb7.i
  %.0.i = phi i64 [ -1, %bb.i ], [ %159, %bb6.i ], [ %159, %bb7.i ]
  %161 = trunc i64 %.0.i to i32, !dbg !1233
  br label %bb17, !dbg !1233

bb11:                                             ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !470) nounwind, !dbg !1251
  %162 = load i64* %args, align 8, !dbg !1253
  %163 = trunc i64 %162 to i32, !dbg !1253
  call void @llvm.dbg.value(metadata !{i32 %163}, i64 0, metadata !471) nounwind, !dbg !1253
  %164 = getelementptr inbounds i64* %args, i64 1, !dbg !1254
  %165 = load i64* %164, align 8, !dbg !1254
  %166 = trunc i64 %165 to i32, !dbg !1254
  call void @llvm.dbg.value(metadata !{i32 %166}, i64 0, metadata !473) nounwind, !dbg !1254
  %167 = call i32 @shutdown(i32 %163, i32 %166) nounwind, !dbg !1255
  br label %bb17, !dbg !1252

bb12:                                             ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([20 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !1256
  br label %bb17, !dbg !1257

bb13:                                             ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0)) nounwind, !dbg !1258
  br label %bb17, !dbg !1259

bb14:                                             ; preds = %entry
  %168 = getelementptr inbounds i64* %args, i64 2, !dbg !1260
  %169 = load i64* %168, align 8, !dbg !1260
  %170 = trunc i64 %169 to i32, !dbg !1260
  %171 = getelementptr inbounds i64* %args, i64 1, !dbg !1260
  %172 = load i64* %171, align 8, !dbg !1260
  %173 = inttoptr i64 %172 to %struct.msghdr*, !dbg !1260
  %174 = load i64* %args, align 8, !dbg !1260
  %175 = trunc i64 %174 to i32, !dbg !1260
  %176 = call i64 @__fd_sendmsg(i32 %175, %struct.msghdr* %173, i32 %170) nounwind, !dbg !1260
  %177 = trunc i64 %176 to i32, !dbg !1260
  br label %bb17, !dbg !1260

bb15:                                             ; preds = %entry
  %178 = getelementptr inbounds i64* %args, i64 2, !dbg !1261
  %179 = load i64* %178, align 8, !dbg !1261
  %180 = trunc i64 %179 to i32, !dbg !1261
  %181 = getelementptr inbounds i64* %args, i64 1, !dbg !1261
  %182 = load i64* %181, align 8, !dbg !1261
  %183 = inttoptr i64 %182 to %struct.msghdr*, !dbg !1261
  %184 = load i64* %args, align 8, !dbg !1261
  %185 = trunc i64 %184 to i32, !dbg !1261
  %186 = call i64 @__fd_recvmsg(i32 %185, %struct.msghdr* %183, i32 %180) nounwind, !dbg !1261
  %187 = trunc i64 %186 to i32, !dbg !1261
  br label %bb17, !dbg !1261

bb16:                                             ; preds = %entry
  %188 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([46 x i8]* @.str18, i64 0, i64 0), i32 %type) nounwind, !dbg !1262
  %189 = call i32* @__errno_location() nounwind readnone, !dbg !1263
  store i32 38, i32* %189, align 4, !dbg !1263
  br label %bb17, !dbg !1264

bb17:                                             ; preds = %bb16, %bb15, %bb14, %bb13, %bb12, %bb11, %__fd_recvfrom.exit, %bb9, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3, %bb2, %bb1, %bb
  %.0 = phi i32 [ -1, %bb16 ], [ %177, %bb14 ], [ 0, %bb13 ], [ 0, %bb12 ], [ %167, %bb11 ], [ %161, %__fd_recvfrom.exit ], [ %128, %bb9 ], [ %101, %bb8 ], [ %80, %bb7 ], [ %187, %bb15 ], [ %59, %bb6 ], [ %50, %bb5 ], [ %41, %bb4 ], [ %32, %bb3 ], [ %26, %bb2 ], [ %17, %bb1 ], [ %8, %bb ]
  ret i32 %.0, !dbg !1152
}

declare i32 @printf(i8* nocapture, ...) nounwind

define weak i8* @canonicalize_file_name(i8* %name) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !562), !dbg !1265
  %0 = tail call noalias i8* @malloc(i64 4096) nounwind, !dbg !1266
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !563), !dbg !1266
  %1 = tail call i8* @realpath(i8* noalias %name, i8* noalias %0) nounwind, !dbg !1267
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !565), !dbg !1267
  %2 = icmp eq i8* %1, null, !dbg !1268
  br i1 %2, label %bb, label %bb1, !dbg !1268

bb:                                               ; preds = %entry
  tail call void @free(i8* %0) nounwind, !dbg !1269
  br label %bb1, !dbg !1269

bb1:                                              ; preds = %bb, %entry
  ret i8* %1, !dbg !1270
}

declare i8* @realpath(i8* noalias nocapture, i8* noalias) nounwind

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i32 @gettimeofday(%struct.timespec* noalias, %struct.anon* noalias) nounwind

declare i32 @__fputc_unlocked(i32, %struct._IO_FILE*)

declare i32 @__fgetc_unlocked(%struct._IO_FILE*)

declare void @klee_warning_once(i8*)

!llvm.dbg.sp = !{!0, !7, !8, !11, !89, !90, !95, !98, !115, !120, !123, !129, !150, !151, !162, !163, !166, !167, !172, !173, !178, !179, !180, !181, !184, !188, !191, !192, !193, !194, !195, !196, !199, !200, !201, !202, !205, !208, !209, !210, !213, !214, !217, !218, !219, !223, !275, !278}
!llvm.dbg.lv.gnu_dev_major = !{!378}
!llvm.dbg.lv.gnu_dev_minor = !{!379}
!llvm.dbg.lv.gnu_dev_makedev = !{!380, !381}
!llvm.dbg.lv.getsockopt = !{!382, !383, !384, !385, !386}
!llvm.dbg.lv.setsockopt = !{!387, !388, !389, !390, !391}
!llvm.dbg.lv.__fd_attach_dgram = !{!392}
!llvm.dbg.gv = !{!393}
!llvm.dbg.lv.getenv = !{!394}
!llvm.dbg.lv.setlocale = !{!395, !396}
!llvm.dbg.lv.clock_settime = !{!397, !398}
!llvm.dbg.lv.__fd_recvmsg = !{!399, !400, !401, !402}
!llvm.dbg.lv.recvmsg = !{!406, !407, !408}
!llvm.dbg.lv.__fd_recvfrom = !{!409, !410, !411, !412, !413, !414, !415, !417, !418}
!llvm.dbg.lv.recvfrom = !{!419, !420, !421, !422, !423, !424}
!llvm.dbg.lv.__fd_recv = !{!425, !426, !427, !428}
!llvm.dbg.lv.recv = !{!429, !430, !431, !432}
!llvm.dbg.lv.__fd_sendmsg = !{!433, !434, !435, !436}
!llvm.dbg.lv.sendmsg = !{!438, !439, !440}
!llvm.dbg.lv.__fd_sendto = !{!441, !442, !443, !444, !445, !446, !447, !449}
!llvm.dbg.lv.sendto = !{!450, !451, !452, !453, !454, !455}
!llvm.dbg.lv.__fd_send = !{!456, !457, !458, !459}
!llvm.dbg.lv.send = !{!460, !461, !462, !463}
!llvm.dbg.lv.shutdown = !{!464, !465, !466, !468}
!llvm.dbg.lv.__fd_shutdown = !{!470, !471, !473}
!llvm.dbg.lv.getpeername = !{!474, !475, !476, !477, !479}
!llvm.dbg.lv.__fd_getpeername = !{!480, !481, !483, !484}
!llvm.dbg.lv.getsockname = !{!485, !486, !487, !488, !490}
!llvm.dbg.lv.__fd_getsockname = !{!491, !492, !494, !495}
!llvm.dbg.lv.listen = !{!496, !497, !498, !500}
!llvm.dbg.lv.__fd_listen = !{!501, !502, !504}
!llvm.dbg.lv.connect = !{!505, !506, !507, !508, !510}
!llvm.dbg.lv.__fd_connect = !{!511, !512, !514, !515}
!llvm.dbg.lv.bind = !{!516, !517, !518, !519, !521}
!llvm.dbg.lv.__fd_bind = !{!522, !523, !525, !526}
!llvm.dbg.lv.rename = !{!527, !528, !529}
!llvm.dbg.lv.__allocate_sockaddr = !{!531, !532}
!llvm.dbg.lv.__fd_accept = !{!533, !534, !535, !536, !538, !539, !540, !542, !543}
!llvm.dbg.lv.accept = !{!544, !545, !546}
!llvm.dbg.lv.socket = !{!547, !548, !549, !550, !552, !553}
!llvm.dbg.lv.__fd_socket = !{!555, !556, !558, !559}
!llvm.dbg.lv.__socketcall = !{!560, !561}
!llvm.dbg.lv.canonicalize_file_name = !{!562, !563, !565}
!llvm.dbg.lv.strverscmp = !{!566, !567, !568, !571}
!llvm.dbg.lv.clock_gettime = !{!572, !573, !574}
!llvm.dbg.lv._IO_putc = !{!582, !583}
!llvm.dbg.lv._IO_getc = !{!584}
!llvm.dbg.lv.__syscall_rt_sigaction = !{!585, !586, !587, !588}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"gnu_dev_major", metadata !"gnu_dev_major", metadata !"gnu_dev_major", metadata !1, i32 253, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64)* @gnu_dev_major} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"stubs.c", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"stubs.c", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589860, metadata !1, metadata !"long long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589870, i32 0, metadata !1, metadata !"gnu_dev_minor", metadata !"gnu_dev_minor", metadata !"gnu_dev_minor", metadata !1, i32 258, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64)* @gnu_dev_minor} ; [ DW_TAG_subprogram ]
!8 = metadata !{i32 589870, i32 0, metadata !1, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !1, i32 263, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i32)* @gnu_dev_makedev} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{metadata !6, metadata !5, metadata !5}
!11 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_sym_stream", metadata !"__get_sym_stream", metadata !"", metadata !12, i32 88, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!12 = metadata !{i32 589865, metadata !"sockets.c.inc", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !2} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 589846, metadata !17, metadata !"exe_disk_file_t", metadata !17, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !2} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 589843, metadata !1, metadata !"", metadata !17, i32 26, i64 320, i64 64, i64 0, i32 0, null, metadata !19, i32 0, null} ; [ DW_TAG_structure_type ]
!19 = metadata !{metadata !20, metadata !21, metadata !24, metadata !25, metadata !68}
!20 = metadata !{i32 589837, metadata !18, metadata !"size", metadata !17, i32 27, i64 32, i64 32, i64 0, i32 0, metadata !5} ; [ DW_TAG_member ]
!21 = metadata !{i32 589837, metadata !18, metadata !"contents", metadata !17, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 589837, metadata !18, metadata !"path", metadata !17, i32 29, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ]
!25 = metadata !{i32 589837, metadata !18, metadata !"stat", metadata !17, i32 30, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !28, i32 120, i64 1152, i64 64, i64 0, i32 0, null, metadata !29, i32 0, null} ; [ DW_TAG_structure_type ]
!28 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!29 = metadata !{metadata !30, metadata !34, metadata !36, metadata !38, metadata !40, metadata !42, metadata !44, metadata !46, metadata !47, metadata !50, metadata !52, metadata !54, metadata !62, metadata !63, metadata !64}
!30 = metadata !{i32 589837, metadata !27, metadata !"st_dev", metadata !28, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ]
!31 = metadata !{i32 589846, metadata !32, metadata !"__dev_t", metadata !32, i32 125, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!32 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 589837, metadata !27, metadata !"st_ino", metadata !28, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 589846, metadata !32, metadata !"__ino64_t", metadata !32, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!36 = metadata !{i32 589837, metadata !27, metadata !"st_nlink", metadata !28, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ]
!37 = metadata !{i32 589846, metadata !32, metadata !"__nlink_t", metadata !32, i32 131, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!38 = metadata !{i32 589837, metadata !27, metadata !"st_mode", metadata !28, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ]
!39 = metadata !{i32 589846, metadata !32, metadata !"__mode_t", metadata !32, i32 130, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 589837, metadata !27, metadata !"st_uid", metadata !28, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589846, metadata !32, metadata !"__uid_t", metadata !32, i32 126, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 589837, metadata !27, metadata !"st_gid", metadata !28, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !43} ; [ DW_TAG_member ]
!43 = metadata !{i32 589846, metadata !32, metadata !"__gid_t", metadata !32, i32 127, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 589837, metadata !27, metadata !"__pad0", metadata !28, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!46 = metadata !{i32 589837, metadata !27, metadata !"st_rdev", metadata !28, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ]
!47 = metadata !{i32 589837, metadata !27, metadata !"st_size", metadata !28, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !48} ; [ DW_TAG_member ]
!48 = metadata !{i32 589846, metadata !32, metadata !"__off_t", metadata !32, i32 132, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!49 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 589837, metadata !27, metadata !"st_blksize", metadata !28, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !51} ; [ DW_TAG_member ]
!51 = metadata !{i32 589846, metadata !32, metadata !"__blksize_t", metadata !32, i32 158, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 589837, metadata !27, metadata !"st_blocks", metadata !28, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !53} ; [ DW_TAG_member ]
!53 = metadata !{i32 589846, metadata !32, metadata !"__blkcnt64_t", metadata !32, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!54 = metadata !{i32 589837, metadata !27, metadata !"st_atim", metadata !28, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !55} ; [ DW_TAG_member ]
!55 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !56, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !57, i32 0, null} ; [ DW_TAG_structure_type ]
!56 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!57 = metadata !{metadata !58, metadata !60}
!58 = metadata !{i32 589837, metadata !55, metadata !"tv_sec", metadata !56, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ]
!59 = metadata !{i32 589846, metadata !32, metadata !"__time_t", metadata !32, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!60 = metadata !{i32 589837, metadata !55, metadata !"tv_nsec", metadata !56, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ]
!61 = metadata !{i32 589846, metadata !32, metadata !"__syscall_slong_t", metadata !32, i32 177, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!62 = metadata !{i32 589837, metadata !27, metadata !"st_mtim", metadata !28, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !55} ; [ DW_TAG_member ]
!63 = metadata !{i32 589837, metadata !27, metadata !"st_ctim", metadata !28, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !55} ; [ DW_TAG_member ]
!64 = metadata !{i32 589837, metadata !27, metadata !"__glibc_reserved", metadata !28, i32 164, i64 192, i64 64, i64 960, i32 0, metadata !65} ; [ DW_TAG_member ]
!65 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !61, metadata !66, i32 0, null} ; [ DW_TAG_array_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!68 = metadata !{i32 589837, metadata !18, metadata !"src", metadata !17, i32 31, i64 64, i64 64, i64 256, i32 0, metadata !69} ; [ DW_TAG_member ]
!69 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 589846, metadata !17, metadata !"exe_sockaddr_t", metadata !17, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ]
!71 = metadata !{i32 589843, metadata !1, metadata !"", metadata !17, i32 21, i64 128, i64 64, i64 0, i32 0, null, metadata !72, i32 0, null} ; [ DW_TAG_structure_type ]
!72 = metadata !{metadata !73, metadata !86}
!73 = metadata !{i32 589837, metadata !71, metadata !"addr", metadata !17, i32 22, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ]
!74 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ]
!75 = metadata !{i32 589843, metadata !1, metadata !"sockaddr_storage", metadata !76, i32 163, i64 1024, i64 64, i64 0, i32 0, null, metadata !77, i32 0, null} ; [ DW_TAG_structure_type ]
!76 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!77 = metadata !{metadata !78, metadata !81, metadata !82}
!78 = metadata !{i32 589837, metadata !75, metadata !"ss_family", metadata !76, i32 164, i64 16, i64 16, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ]
!79 = metadata !{i32 589846, metadata !76, metadata !"sa_family_t", metadata !76, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ]
!80 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!81 = metadata !{i32 589837, metadata !75, metadata !"__ss_align", metadata !76, i32 165, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ]
!82 = metadata !{i32 589837, metadata !75, metadata !"__ss_padding", metadata !76, i32 166, i64 896, i64 8, i64 128, i32 0, metadata !83} ; [ DW_TAG_member ]
!83 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 896, i64 8, i64 0, i32 0, metadata !23, metadata !84, i32 0, null} ; [ DW_TAG_array_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 589857, i64 0, i64 111}      ; [ DW_TAG_subrange_type ]
!86 = metadata !{i32 589837, metadata !71, metadata !"addrlen", metadata !17, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ]
!87 = metadata !{i32 589846, metadata !88, metadata !"socklen_t", metadata !88, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!88 = metadata !{i32 589865, metadata !"confname.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!89 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_sym_dgram", metadata !"__get_sym_dgram", metadata !"", metadata !12, i32 99, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getsockopt", metadata !"getsockopt", metadata !"getsockopt", metadata !12, i32 861, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, i8*, i32*)* @getsockopt} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{metadata !45, metadata !45, metadata !45, metadata !45, metadata !93, metadata !94}
!93 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!94 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ]
!95 = metadata !{i32 589870, i32 0, metadata !1, metadata !"setsockopt", metadata !"setsockopt", metadata !"setsockopt", metadata !12, i32 867, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, i8*, i32)* @setsockopt} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, null} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{metadata !45, metadata !45, metadata !45, metadata !45, metadata !93, metadata !87}
!98 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_attach_dgram", metadata !"__fd_attach_dgram", metadata !"__fd_attach_dgram", metadata !12, i32 838, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.exe_file_t*)* @__fd_attach_dgram} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, null} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !101, metadata !103}
!101 = metadata !{i32 589846, metadata !102, metadata !"ssize_t", metadata !102, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!102 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!103 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 589843, metadata !1, metadata !"exe_file_t", metadata !105, i32 8, i64 448, i64 64, i64 0, i32 0, null, metadata !106, i32 0, null} ; [ DW_TAG_structure_type ]
!105 = metadata !{i32 589865, metadata !"sockets.h", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !2} ; [ DW_TAG_file_type ]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !111, metadata !112, metadata !113, metadata !114}
!107 = metadata !{i32 589837, metadata !104, metadata !"fd", metadata !17, i32 45, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!108 = metadata !{i32 589837, metadata !104, metadata !"flags", metadata !17, i32 46, i64 32, i64 32, i64 32, i32 0, metadata !5} ; [ DW_TAG_member ]
!109 = metadata !{i32 589837, metadata !104, metadata !"off", metadata !17, i32 49, i64 64, i64 64, i64 64, i32 0, metadata !110} ; [ DW_TAG_member ]
!110 = metadata !{i32 589846, metadata !102, metadata !"off64_t", metadata !102, i32 102, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!111 = metadata !{i32 589837, metadata !104, metadata !"dfile", metadata !17, i32 50, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ]
!112 = metadata !{i32 589837, metadata !104, metadata !"local", metadata !17, i32 51, i64 128, i64 64, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ]
!113 = metadata !{i32 589837, metadata !104, metadata !"foreign", metadata !17, i32 52, i64 64, i64 64, i64 320, i32 0, metadata !69} ; [ DW_TAG_member ]
!114 = metadata !{i32 589837, metadata !104, metadata !"domain", metadata !17, i32 56, i64 32, i64 32, i64 384, i32 0, metadata !45} ; [ DW_TAG_member ]
!115 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getenv", metadata !"getenv", metadata !"getenv", metadata !1, i32 579, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @getenv} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, null} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{metadata !22, metadata !118}
!118 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ]
!119 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !23} ; [ DW_TAG_const_type ]
!120 = metadata !{i32 589870, i32 0, metadata !1, metadata !"setlocale", metadata !"setlocale", metadata !"setlocale", metadata !1, i32 573, metadata !121, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i8*)* @setlocale} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, null} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{metadata !22, metadata !45, metadata !22}
!123 = metadata !{i32 589870, i32 0, metadata !1, metadata !"clock_settime", metadata !"clock_settime", metadata !"clock_settime", metadata !1, i32 169, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.timespec*)* @clock_settime} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, null} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{metadata !45, metadata !126, metadata !127}
!126 = metadata !{i32 589846, metadata !56, metadata !"clockid_t", metadata !56, i32 103, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!127 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ]
!128 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ]
!129 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_recvmsg", metadata !"__fd_recvmsg", metadata !"__fd_recvmsg", metadata !12, i32 799, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.msghdr*, i32)* @__fd_recvmsg} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, null} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{metadata !101, metadata !45, metadata !132, metadata !45}
!132 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ]
!133 = metadata !{i32 589843, metadata !1, metadata !"msghdr", metadata !76, i32 225, i64 448, i64 64, i64 0, i32 0, null, metadata !134, i32 0, null} ; [ DW_TAG_structure_type ]
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !146, metadata !147, metadata !148, metadata !149}
!135 = metadata !{i32 589837, metadata !133, metadata !"msg_name", metadata !76, i32 226, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ]
!136 = metadata !{i32 589837, metadata !133, metadata !"msg_namelen", metadata !76, i32 227, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ]
!137 = metadata !{i32 589837, metadata !133, metadata !"msg_iov", metadata !76, i32 229, i64 64, i64 64, i64 128, i32 0, metadata !138} ; [ DW_TAG_member ]
!138 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ]
!139 = metadata !{i32 589843, metadata !1, metadata !"iovec", metadata !140, i32 44, i64 128, i64 64, i64 0, i32 0, null, metadata !141, i32 0, null} ; [ DW_TAG_structure_type ]
!140 = metadata !{i32 589865, metadata !"uio.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!141 = metadata !{metadata !142, metadata !143}
!142 = metadata !{i32 589837, metadata !139, metadata !"iov_base", metadata !140, i32 45, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ]
!143 = metadata !{i32 589837, metadata !139, metadata !"iov_len", metadata !140, i32 46, i64 64, i64 64, i64 64, i32 0, metadata !144} ; [ DW_TAG_member ]
!144 = metadata !{i32 589846, metadata !145, metadata !"size_t", metadata !145, i32 28, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!145 = metadata !{i32 589865, metadata !"xlocale.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!146 = metadata !{i32 589837, metadata !133, metadata !"msg_iovlen", metadata !76, i32 230, i64 64, i64 64, i64 192, i32 0, metadata !144} ; [ DW_TAG_member ]
!147 = metadata !{i32 589837, metadata !133, metadata !"msg_control", metadata !76, i32 232, i64 64, i64 64, i64 256, i32 0, metadata !93} ; [ DW_TAG_member ]
!148 = metadata !{i32 589837, metadata !133, metadata !"msg_controllen", metadata !76, i32 233, i64 64, i64 64, i64 320, i32 0, metadata !144} ; [ DW_TAG_member ]
!149 = metadata !{i32 589837, metadata !133, metadata !"msg_flags", metadata !76, i32 238, i64 32, i64 32, i64 384, i32 0, metadata !45} ; [ DW_TAG_member ]
!150 = metadata !{i32 589870, i32 0, metadata !1, metadata !"recvmsg", metadata !"recvmsg", metadata !"recvmsg", metadata !12, i32 794, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.msghdr*, i32)* @recvmsg} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_recvfrom", metadata !"__fd_recvfrom", metadata !"__fd_recvfrom", metadata !12, i32 706, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32, %struct.sockaddr*, i32*)* @__fd_recvfrom} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, null} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{metadata !101, metadata !45, metadata !93, metadata !144, metadata !45, metadata !154, metadata !94}
!154 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ]
!155 = metadata !{i32 589843, metadata !1, metadata !"sockaddr", metadata !76, i32 150, i64 128, i64 16, i64 0, i32 0, null, metadata !156, i32 0, null} ; [ DW_TAG_structure_type ]
!156 = metadata !{metadata !157, metadata !158}
!157 = metadata !{i32 589837, metadata !155, metadata !"sa_family", metadata !76, i32 151, i64 16, i64 16, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ]
!158 = metadata !{i32 589837, metadata !155, metadata !"sa_data", metadata !76, i32 152, i64 112, i64 8, i64 16, i32 0, metadata !159} ; [ DW_TAG_member ]
!159 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 112, i64 8, i64 0, i32 0, metadata !23, metadata !160, i32 0, null} ; [ DW_TAG_array_type ]
!160 = metadata !{metadata !161}
!161 = metadata !{i32 589857, i64 0, i64 13}      ; [ DW_TAG_subrange_type ]
!162 = metadata !{i32 589870, i32 0, metadata !1, metadata !"recvfrom", metadata !"recvfrom", metadata !"recvfrom", metadata !12, i32 701, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32, %struct.sockaddr*, i32*)* @recvfrom} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_recv", metadata !"__fd_recv", metadata !"__fd_recv", metadata !12, i32 672, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32)* @__fd_recv} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, null} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{metadata !101, metadata !45, metadata !93, metadata !144, metadata !45}
!166 = metadata !{i32 589870, i32 0, metadata !1, metadata !"recv", metadata !"recv", metadata !"recv", metadata !12, i32 667, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32)* @recv} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_sendmsg", metadata !"__fd_sendmsg", metadata !"__fd_sendmsg", metadata !12, i32 740, metadata !168, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.msghdr*, i32)* @__fd_sendmsg} ; [ DW_TAG_subprogram ]
!168 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, null} ; [ DW_TAG_subroutine_type ]
!169 = metadata !{metadata !101, metadata !45, metadata !170, metadata !45}
!170 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ]
!171 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 448, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_const_type ]
!172 = metadata !{i32 589870, i32 0, metadata !1, metadata !"sendmsg", metadata !"sendmsg", metadata !"sendmsg", metadata !12, i32 735, metadata !168, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.msghdr*, i32)* @sendmsg} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_sendto", metadata !"__fd_sendto", metadata !"__fd_sendto", metadata !12, i32 682, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32, %struct.sockaddr*, i32)* @__fd_sendto} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, null} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{metadata !101, metadata !45, metadata !93, metadata !144, metadata !45, metadata !176, metadata !87}
!176 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !177} ; [ DW_TAG_pointer_type ]
!177 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 16, i64 0, i32 0, metadata !155} ; [ DW_TAG_const_type ]
!178 = metadata !{i32 589870, i32 0, metadata !1, metadata !"sendto", metadata !"sendto", metadata !"sendto", metadata !12, i32 677, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32, %struct.sockaddr*, i32)* @sendto} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_send", metadata !"__fd_send", metadata !"__fd_send", metadata !12, i32 663, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32)* @__fd_send} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 589870, i32 0, metadata !1, metadata !"send", metadata !"send", metadata !"send", metadata !12, i32 658, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32)* @send} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 589870, i32 0, metadata !1, metadata !"shutdown", metadata !"shutdown", metadata !"shutdown", metadata !12, i32 615, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @shutdown} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, null} ; [ DW_TAG_subroutine_type ]
!183 = metadata !{metadata !45, metadata !45, metadata !45}
!184 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_shutdown", metadata !"__fd_shutdown", metadata !"__fd_shutdown", metadata !12, i32 609, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_shutdown} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, null} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{metadata !45, metadata !187}
!187 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!188 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getpeername", metadata !"getpeername", metadata !"getpeername", metadata !12, i32 571, metadata !189, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @getpeername} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, null} ; [ DW_TAG_subroutine_type ]
!190 = metadata !{metadata !45, metadata !45, metadata !154, metadata !94}
!191 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_getpeername", metadata !"__fd_getpeername", metadata !"__fd_getpeername", metadata !12, i32 564, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_getpeername} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getsockname", metadata !"getsockname", metadata !"getsockname", metadata !12, i32 527, metadata !189, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @getsockname} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_getsockname", metadata !"__fd_getsockname", metadata !"__fd_getsockname", metadata !12, i32 519, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_getsockname} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 589870, i32 0, metadata !1, metadata !"listen", metadata !"listen", metadata !"listen", metadata !12, i32 375, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @listen} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_listen", metadata !"__fd_listen", metadata !"__fd_listen", metadata !12, i32 368, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_listen} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 589870, i32 0, metadata !1, metadata !"connect", metadata !"connect", metadata !"connect", metadata !12, i32 319, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32)* @connect} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, null} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{metadata !45, metadata !45, metadata !176, metadata !87}
!199 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_connect", metadata !"__fd_connect", metadata !"__fd_connect", metadata !12, i32 312, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_connect} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 589870, i32 0, metadata !1, metadata !"bind", metadata !"bind", metadata !"bind", metadata !12, i32 267, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32)* @bind} ; [ DW_TAG_subprogram ]
!201 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_bind", metadata !"__fd_bind", metadata !"__fd_bind", metadata !12, i32 259, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_bind} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 589870, i32 0, metadata !1, metadata !"rename", metadata !"rename", metadata !"rename", metadata !1, i32 142, metadata !203, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @rename} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, null} ; [ DW_TAG_subroutine_type ]
!204 = metadata !{metadata !45, metadata !118, metadata !118}
!205 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__allocate_sockaddr", metadata !"__allocate_sockaddr", metadata !"", metadata !12, i32 106, metadata !206, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.exe_sockaddr_t* (i32, %struct.exe_sockaddr_t*)* @__allocate_sockaddr} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, null} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !69, metadata !45, metadata !69}
!208 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_accept", metadata !"__fd_accept", metadata !"__fd_accept", metadata !12, i32 413, metadata !189, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @__fd_accept} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 589870, i32 0, metadata !1, metadata !"accept", metadata !"accept", metadata !"accept", metadata !12, i32 409, metadata !189, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @accept} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 589870, i32 0, metadata !1, metadata !"socket", metadata !"socket", metadata !"socket", metadata !12, i32 141, metadata !211, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @socket} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, null} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{metadata !45, metadata !45, metadata !45, metadata !45}
!213 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_socket", metadata !"__fd_socket", metadata !"__fd_socket", metadata !12, i32 132, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_socket} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__socketcall", metadata !"__socketcall", metadata !"__socketcall", metadata !12, i32 25, metadata !215, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64*)* @__socketcall} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, null} ; [ DW_TAG_subroutine_type ]
!216 = metadata !{metadata !45, metadata !45, metadata !187}
!217 = metadata !{i32 589870, i32 0, metadata !1, metadata !"canonicalize_file_name", metadata !"canonicalize_file_name", metadata !"canonicalize_file_name", metadata !1, i32 270, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @canonicalize_file_name} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 589870, i32 0, metadata !1, metadata !"strverscmp", metadata !"strverscmp", metadata !"strverscmp", metadata !1, i32 248, metadata !203, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @strverscmp} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 589870, i32 0, metadata !1, metadata !"clock_gettime", metadata !"clock_gettime", metadata !"clock_gettime", metadata !1, i32 160, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.timespec*)* @clock_gettime} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, null} ; [ DW_TAG_subroutine_type ]
!221 = metadata !{metadata !45, metadata !126, metadata !222}
!222 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!223 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_IO_putc", metadata !"_IO_putc", metadata !"_IO_putc", metadata !1, i32 94, metadata !224, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct._IO_FILE*)* @_IO_putc} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, null} ; [ DW_TAG_subroutine_type ]
!225 = metadata !{metadata !45, metadata !45, metadata !226}
!226 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !227} ; [ DW_TAG_pointer_type ]
!227 = metadata !{i32 589846, metadata !102, metadata !"FILE", metadata !102, i32 64, i64 0, i64 0, i64 0, i32 0, metadata !228} ; [ DW_TAG_typedef ]
!228 = metadata !{i32 589843, metadata !1, metadata !"_IO_FILE", metadata !102, i32 44, i64 1728, i64 64, i64 0, i32 0, null, metadata !229, i32 0, null} ; [ DW_TAG_structure_type ]
!229 = metadata !{metadata !230, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !258, metadata !262, metadata !263, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271}
!230 = metadata !{i32 589837, metadata !228, metadata !"_flags", metadata !231, i32 246, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!231 = metadata !{i32 589865, metadata !"libio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!232 = metadata !{i32 589837, metadata !228, metadata !"_IO_read_ptr", metadata !231, i32 251, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ]
!233 = metadata !{i32 589837, metadata !228, metadata !"_IO_read_end", metadata !231, i32 252, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ]
!234 = metadata !{i32 589837, metadata !228, metadata !"_IO_read_base", metadata !231, i32 253, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ]
!235 = metadata !{i32 589837, metadata !228, metadata !"_IO_write_base", metadata !231, i32 254, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ]
!236 = metadata !{i32 589837, metadata !228, metadata !"_IO_write_ptr", metadata !231, i32 255, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ]
!237 = metadata !{i32 589837, metadata !228, metadata !"_IO_write_end", metadata !231, i32 256, i64 64, i64 64, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ]
!238 = metadata !{i32 589837, metadata !228, metadata !"_IO_buf_base", metadata !231, i32 257, i64 64, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ]
!239 = metadata !{i32 589837, metadata !228, metadata !"_IO_buf_end", metadata !231, i32 258, i64 64, i64 64, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ]
!240 = metadata !{i32 589837, metadata !228, metadata !"_IO_save_base", metadata !231, i32 260, i64 64, i64 64, i64 576, i32 0, metadata !22} ; [ DW_TAG_member ]
!241 = metadata !{i32 589837, metadata !228, metadata !"_IO_backup_base", metadata !231, i32 261, i64 64, i64 64, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ]
!242 = metadata !{i32 589837, metadata !228, metadata !"_IO_save_end", metadata !231, i32 262, i64 64, i64 64, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ]
!243 = metadata !{i32 589837, metadata !228, metadata !"_markers", metadata !231, i32 264, i64 64, i64 64, i64 768, i32 0, metadata !244} ; [ DW_TAG_member ]
!244 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ]
!245 = metadata !{i32 589843, metadata !1, metadata !"_IO_marker", metadata !231, i32 160, i64 192, i64 64, i64 0, i32 0, null, metadata !246, i32 0, null} ; [ DW_TAG_structure_type ]
!246 = metadata !{metadata !247, metadata !248, metadata !250}
!247 = metadata !{i32 589837, metadata !245, metadata !"_next", metadata !231, i32 161, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_member ]
!248 = metadata !{i32 589837, metadata !245, metadata !"_sbuf", metadata !231, i32 162, i64 64, i64 64, i64 64, i32 0, metadata !249} ; [ DW_TAG_member ]
!249 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ]
!250 = metadata !{i32 589837, metadata !245, metadata !"_pos", metadata !231, i32 166, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ]
!251 = metadata !{i32 589837, metadata !228, metadata !"_chain", metadata !231, i32 266, i64 64, i64 64, i64 832, i32 0, metadata !249} ; [ DW_TAG_member ]
!252 = metadata !{i32 589837, metadata !228, metadata !"_fileno", metadata !231, i32 268, i64 32, i64 32, i64 896, i32 0, metadata !45} ; [ DW_TAG_member ]
!253 = metadata !{i32 589837, metadata !228, metadata !"_flags2", metadata !231, i32 272, i64 32, i64 32, i64 928, i32 0, metadata !45} ; [ DW_TAG_member ]
!254 = metadata !{i32 589837, metadata !228, metadata !"_old_offset", metadata !231, i32 274, i64 64, i64 64, i64 960, i32 0, metadata !48} ; [ DW_TAG_member ]
!255 = metadata !{i32 589837, metadata !228, metadata !"_cur_column", metadata !231, i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !80} ; [ DW_TAG_member ]
!256 = metadata !{i32 589837, metadata !228, metadata !"_vtable_offset", metadata !231, i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !257} ; [ DW_TAG_member ]
!257 = metadata !{i32 589860, metadata !1, metadata !"signed char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!258 = metadata !{i32 589837, metadata !228, metadata !"_shortbuf", metadata !231, i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !259} ; [ DW_TAG_member ]
!259 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !23, metadata !260, i32 0, null} ; [ DW_TAG_array_type ]
!260 = metadata !{metadata !261}
!261 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!262 = metadata !{i32 589837, metadata !228, metadata !"_lock", metadata !231, i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !93} ; [ DW_TAG_member ]
!263 = metadata !{i32 589837, metadata !228, metadata !"_offset", metadata !231, i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !264} ; [ DW_TAG_member ]
!264 = metadata !{i32 589846, metadata !32, metadata !"__off64_t", metadata !32, i32 133, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!265 = metadata !{i32 589837, metadata !228, metadata !"__pad1", metadata !231, i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !93} ; [ DW_TAG_member ]
!266 = metadata !{i32 589837, metadata !228, metadata !"__pad2", metadata !231, i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !93} ; [ DW_TAG_member ]
!267 = metadata !{i32 589837, metadata !228, metadata !"__pad3", metadata !231, i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !93} ; [ DW_TAG_member ]
!268 = metadata !{i32 589837, metadata !228, metadata !"__pad4", metadata !231, i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !93} ; [ DW_TAG_member ]
!269 = metadata !{i32 589837, metadata !228, metadata !"__pad5", metadata !231, i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !144} ; [ DW_TAG_member ]
!270 = metadata !{i32 589837, metadata !228, metadata !"_mode", metadata !231, i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !45} ; [ DW_TAG_member ]
!271 = metadata !{i32 589837, metadata !228, metadata !"_unused2", metadata !231, i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !272} ; [ DW_TAG_member ]
!272 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 160, i64 8, i64 0, i32 0, metadata !23, metadata !273, i32 0, null} ; [ DW_TAG_array_type ]
!273 = metadata !{metadata !274}
!274 = metadata !{i32 589857, i64 0, i64 19}      ; [ DW_TAG_subrange_type ]
!275 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_IO_getc", metadata !"_IO_getc", metadata !"_IO_getc", metadata !1, i32 89, metadata !276, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*)* @_IO_getc} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, null} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{metadata !45, metadata !226}
!278 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__syscall_rt_sigaction", metadata !"__syscall_rt_sigaction", metadata !"__syscall_rt_sigaction", metadata !1, i32 42, metadata !279, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sigaction*, %struct.sigaction*, i64)* @__syscall_rt_sigaction} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, null} ; [ DW_TAG_subroutine_type ]
!280 = metadata !{metadata !45, metadata !45, metadata !281, metadata !377, metadata !144}
!281 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_pointer_type ]
!282 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 1216, i64 64, i64 0, i32 0, metadata !283} ; [ DW_TAG_const_type ]
!283 = metadata !{i32 589843, metadata !1, metadata !"sigaction", metadata !284, i32 25, i64 1216, i64 64, i64 0, i32 0, null, metadata !285, i32 0, null} ; [ DW_TAG_structure_type ]
!284 = metadata !{i32 589865, metadata !"sigaction.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!285 = metadata !{metadata !286, metadata !363, metadata !372, metadata !373}
!286 = metadata !{i32 589837, metadata !283, metadata !"__sigaction_handler", metadata !284, i32 35, i64 64, i64 64, i64 0, i32 0, metadata !287} ; [ DW_TAG_member ]
!287 = metadata !{i32 589847, metadata !1, metadata !"", metadata !284, i32 29, i64 64, i64 64, i64 0, i32 0, null, metadata !288, i32 0, null} ; [ DW_TAG_union_type ]
!288 = metadata !{metadata !289, metadata !295}
!289 = metadata !{i32 589837, metadata !287, metadata !"sa_handler", metadata !284, i32 31, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_member ]
!290 = metadata !{i32 589846, metadata !291, metadata !"__sighandler_t", metadata !291, i32 204, i64 0, i64 0, i64 0, i32 0, metadata !292} ; [ DW_TAG_typedef ]
!291 = metadata !{i32 589865, metadata !"signal.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!292 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_pointer_type ]
!293 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, null} ; [ DW_TAG_subroutine_type ]
!294 = metadata !{null, metadata !45}
!295 = metadata !{i32 589837, metadata !287, metadata !"sa_sigaction", metadata !284, i32 33, i64 64, i64 64, i64 0, i32 0, metadata !296} ; [ DW_TAG_member ]
!296 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ]
!297 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, null} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{null, metadata !45, metadata !299, metadata !93}
!299 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !300} ; [ DW_TAG_pointer_type ]
!300 = metadata !{i32 589846, metadata !301, metadata !"siginfo_t", metadata !301, i32 154, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_typedef ]
!301 = metadata !{i32 589865, metadata !"siginfo.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!302 = metadata !{i32 589843, metadata !1, metadata !"", metadata !301, i32 63, i64 1024, i64 64, i64 0, i32 0, null, metadata !303, i32 0, null} ; [ DW_TAG_structure_type ]
!303 = metadata !{metadata !304, metadata !305, metadata !306, metadata !307}
!304 = metadata !{i32 589837, metadata !302, metadata !"si_signo", metadata !301, i32 64, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!305 = metadata !{i32 589837, metadata !302, metadata !"si_errno", metadata !301, i32 65, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ]
!306 = metadata !{i32 589837, metadata !302, metadata !"si_code", metadata !301, i32 67, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ]
!307 = metadata !{i32 589837, metadata !302, metadata !"_sifields", metadata !301, i32 127, i64 896, i64 64, i64 128, i32 0, metadata !308} ; [ DW_TAG_member ]
!308 = metadata !{i32 589847, metadata !1, metadata !"", metadata !301, i32 70, i64 896, i64 64, i64 0, i32 0, null, metadata !309, i32 0, null} ; [ DW_TAG_union_type ]
!309 = metadata !{metadata !310, metadata !314, metadata !320, metadata !331, metadata !337, metadata !346, metadata !352, metadata !357}
!310 = metadata !{i32 589837, metadata !308, metadata !"_pad", metadata !301, i32 71, i64 896, i64 32, i64 0, i32 0, metadata !311} ; [ DW_TAG_member ]
!311 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 896, i64 32, i64 0, i32 0, metadata !45, metadata !312, i32 0, null} ; [ DW_TAG_array_type ]
!312 = metadata !{metadata !313}
!313 = metadata !{i32 589857, i64 0, i64 27}      ; [ DW_TAG_subrange_type ]
!314 = metadata !{i32 589837, metadata !308, metadata !"_kill", metadata !301, i32 78, i64 64, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ]
!315 = metadata !{i32 589843, metadata !1, metadata !"", metadata !301, i32 75, i64 64, i64 32, i64 0, i32 0, null, metadata !316, i32 0, null} ; [ DW_TAG_structure_type ]
!316 = metadata !{metadata !317, metadata !319}
!317 = metadata !{i32 589837, metadata !315, metadata !"si_pid", metadata !301, i32 76, i64 32, i64 32, i64 0, i32 0, metadata !318} ; [ DW_TAG_member ]
!318 = metadata !{i32 589846, metadata !32, metadata !"__pid_t", metadata !32, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!319 = metadata !{i32 589837, metadata !315, metadata !"si_uid", metadata !301, i32 77, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ]
!320 = metadata !{i32 589837, metadata !308, metadata !"_timer", metadata !301, i32 86, i64 128, i64 64, i64 0, i32 0, metadata !321} ; [ DW_TAG_member ]
!321 = metadata !{i32 589843, metadata !1, metadata !"", metadata !301, i32 82, i64 128, i64 64, i64 0, i32 0, null, metadata !322, i32 0, null} ; [ DW_TAG_structure_type ]
!322 = metadata !{metadata !323, metadata !324, metadata !325}
!323 = metadata !{i32 589837, metadata !321, metadata !"si_tid", metadata !301, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!324 = metadata !{i32 589837, metadata !321, metadata !"si_overrun", metadata !301, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ]
!325 = metadata !{i32 589837, metadata !321, metadata !"si_sigval", metadata !301, i32 85, i64 64, i64 64, i64 64, i32 0, metadata !326} ; [ DW_TAG_member ]
!326 = metadata !{i32 589846, metadata !301, metadata !"sigval_t", metadata !301, i32 58, i64 0, i64 0, i64 0, i32 0, metadata !327} ; [ DW_TAG_typedef ]
!327 = metadata !{i32 589847, metadata !1, metadata !"sigval", metadata !301, i32 33, i64 64, i64 64, i64 0, i32 0, null, metadata !328, i32 0, null} ; [ DW_TAG_union_type ]
!328 = metadata !{metadata !329, metadata !330}
!329 = metadata !{i32 589837, metadata !327, metadata !"sival_int", metadata !301, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!330 = metadata !{i32 589837, metadata !327, metadata !"sival_ptr", metadata !301, i32 35, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ]
!331 = metadata !{i32 589837, metadata !308, metadata !"_rt", metadata !301, i32 94, i64 128, i64 64, i64 0, i32 0, metadata !332} ; [ DW_TAG_member ]
!332 = metadata !{i32 589843, metadata !1, metadata !"", metadata !301, i32 90, i64 128, i64 64, i64 0, i32 0, null, metadata !333, i32 0, null} ; [ DW_TAG_structure_type ]
!333 = metadata !{metadata !334, metadata !335, metadata !336}
!334 = metadata !{i32 589837, metadata !332, metadata !"si_pid", metadata !301, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !318} ; [ DW_TAG_member ]
!335 = metadata !{i32 589837, metadata !332, metadata !"si_uid", metadata !301, i32 92, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ]
!336 = metadata !{i32 589837, metadata !332, metadata !"si_sigval", metadata !301, i32 93, i64 64, i64 64, i64 64, i32 0, metadata !326} ; [ DW_TAG_member ]
!337 = metadata !{i32 589837, metadata !308, metadata !"_sigchld", metadata !301, i32 104, i64 256, i64 64, i64 0, i32 0, metadata !338} ; [ DW_TAG_member ]
!338 = metadata !{i32 589843, metadata !1, metadata !"", metadata !301, i32 98, i64 256, i64 64, i64 0, i32 0, null, metadata !339, i32 0, null} ; [ DW_TAG_structure_type ]
!339 = metadata !{metadata !340, metadata !341, metadata !342, metadata !343, metadata !345}
!340 = metadata !{i32 589837, metadata !338, metadata !"si_pid", metadata !301, i32 99, i64 32, i64 32, i64 0, i32 0, metadata !318} ; [ DW_TAG_member ]
!341 = metadata !{i32 589837, metadata !338, metadata !"si_uid", metadata !301, i32 100, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ]
!342 = metadata !{i32 589837, metadata !338, metadata !"si_status", metadata !301, i32 101, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ]
!343 = metadata !{i32 589837, metadata !338, metadata !"si_utime", metadata !301, i32 102, i64 64, i64 64, i64 128, i32 0, metadata !344} ; [ DW_TAG_member ]
!344 = metadata !{i32 589846, metadata !301, metadata !"__sigchld_clock_t", metadata !301, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!345 = metadata !{i32 589837, metadata !338, metadata !"si_stime", metadata !301, i32 103, i64 64, i64 64, i64 192, i32 0, metadata !344} ; [ DW_TAG_member ]
!346 = metadata !{i32 589837, metadata !308, metadata !"_sigfault", metadata !301, i32 111, i64 128, i64 64, i64 0, i32 0, metadata !347} ; [ DW_TAG_member ]
!347 = metadata !{i32 589843, metadata !1, metadata !"", metadata !301, i32 108, i64 128, i64 64, i64 0, i32 0, null, metadata !348, i32 0, null} ; [ DW_TAG_structure_type ]
!348 = metadata !{metadata !349, metadata !350}
!349 = metadata !{i32 589837, metadata !347, metadata !"si_addr", metadata !301, i32 109, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ]
!350 = metadata !{i32 589837, metadata !347, metadata !"si_addr_lsb", metadata !301, i32 110, i64 16, i64 16, i64 64, i32 0, metadata !351} ; [ DW_TAG_member ]
!351 = metadata !{i32 589860, metadata !1, metadata !"short int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!352 = metadata !{i32 589837, metadata !308, metadata !"_sigpoll", metadata !301, i32 118, i64 128, i64 64, i64 0, i32 0, metadata !353} ; [ DW_TAG_member ]
!353 = metadata !{i32 589843, metadata !1, metadata !"", metadata !301, i32 115, i64 128, i64 64, i64 0, i32 0, null, metadata !354, i32 0, null} ; [ DW_TAG_structure_type ]
!354 = metadata !{metadata !355, metadata !356}
!355 = metadata !{i32 589837, metadata !353, metadata !"si_band", metadata !301, i32 116, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!356 = metadata !{i32 589837, metadata !353, metadata !"si_fd", metadata !301, i32 117, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ]
!357 = metadata !{i32 589837, metadata !308, metadata !"_sigsys", metadata !301, i32 126, i64 128, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_member ]
!358 = metadata !{i32 589843, metadata !1, metadata !"", metadata !301, i32 122, i64 128, i64 64, i64 0, i32 0, null, metadata !359, i32 0, null} ; [ DW_TAG_structure_type ]
!359 = metadata !{metadata !360, metadata !361, metadata !362}
!360 = metadata !{i32 589837, metadata !358, metadata !"_call_addr", metadata !301, i32 123, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ]
!361 = metadata !{i32 589837, metadata !358, metadata !"_syscall", metadata !301, i32 124, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ]
!362 = metadata !{i32 589837, metadata !358, metadata !"_arch", metadata !301, i32 125, i64 32, i64 32, i64 96, i32 0, metadata !5} ; [ DW_TAG_member ]
!363 = metadata !{i32 589837, metadata !283, metadata !"sa_mask", metadata !284, i32 43, i64 1024, i64 64, i64 64, i32 0, metadata !364} ; [ DW_TAG_member ]
!364 = metadata !{i32 589846, metadata !291, metadata !"__sigset_t", metadata !291, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !365} ; [ DW_TAG_typedef ]
!365 = metadata !{i32 589843, metadata !1, metadata !"", metadata !366, i32 28, i64 1024, i64 64, i64 0, i32 0, null, metadata !367, i32 0, null} ; [ DW_TAG_structure_type ]
!366 = metadata !{i32 589865, metadata !"sigset.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!367 = metadata !{metadata !368}
!368 = metadata !{i32 589837, metadata !365, metadata !"__val", metadata !366, i32 29, i64 1024, i64 64, i64 0, i32 0, metadata !369} ; [ DW_TAG_member ]
!369 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 1024, i64 64, i64 0, i32 0, metadata !33, metadata !370, i32 0, null} ; [ DW_TAG_array_type ]
!370 = metadata !{metadata !371}
!371 = metadata !{i32 589857, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!372 = metadata !{i32 589837, metadata !283, metadata !"sa_flags", metadata !284, i32 46, i64 32, i64 32, i64 1088, i32 0, metadata !45} ; [ DW_TAG_member ]
!373 = metadata !{i32 589837, metadata !283, metadata !"sa_restorer", metadata !284, i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !374} ; [ DW_TAG_member ]
!374 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !375} ; [ DW_TAG_pointer_type ]
!375 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !376, i32 0, null} ; [ DW_TAG_subroutine_type ]
!376 = metadata !{null}
!377 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !283} ; [ DW_TAG_pointer_type ]
!378 = metadata !{i32 590081, metadata !0, metadata !"__dev", metadata !1, i32 253, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!379 = metadata !{i32 590081, metadata !7, metadata !"__dev", metadata !1, i32 258, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!380 = metadata !{i32 590081, metadata !8, metadata !"__major", metadata !1, i32 263, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!381 = metadata !{i32 590081, metadata !8, metadata !"__minor", metadata !1, i32 263, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!382 = metadata !{i32 590081, metadata !90, metadata !"sockfd", metadata !12, i32 859, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!383 = metadata !{i32 590081, metadata !90, metadata !"level", metadata !12, i32 859, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!384 = metadata !{i32 590081, metadata !90, metadata !"optname", metadata !12, i32 859, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!385 = metadata !{i32 590081, metadata !90, metadata !"optval", metadata !12, i32 860, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!386 = metadata !{i32 590081, metadata !90, metadata !"optlen", metadata !12, i32 860, metadata !94, i32 0} ; [ DW_TAG_arg_variable ]
!387 = metadata !{i32 590081, metadata !95, metadata !"sockfd", metadata !12, i32 865, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!388 = metadata !{i32 590081, metadata !95, metadata !"level", metadata !12, i32 865, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!389 = metadata !{i32 590081, metadata !95, metadata !"optname", metadata !12, i32 865, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!390 = metadata !{i32 590081, metadata !95, metadata !"optval", metadata !12, i32 866, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!391 = metadata !{i32 590081, metadata !95, metadata !"optlen", metadata !12, i32 866, metadata !87, i32 0} ; [ DW_TAG_arg_variable ]
!392 = metadata !{i32 590081, metadata !98, metadata !"f", metadata !12, i32 837, metadata !103, i32 0} ; [ DW_TAG_arg_variable ]
!393 = metadata !{i32 589876, i32 0, metadata !12, metadata !"dummy_dfile", metadata !"dummy_dfile", metadata !"", metadata !12, i32 85, metadata !16, i1 true, i1 true, %struct.exe_disk_file_t* @dummy_dfile} ; [ DW_TAG_variable ]
!394 = metadata !{i32 590081, metadata !115, metadata !"b", metadata !1, i32 579, metadata !118, i32 0} ; [ DW_TAG_arg_variable ]
!395 = metadata !{i32 590081, metadata !120, metadata !"a", metadata !1, i32 573, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!396 = metadata !{i32 590081, metadata !120, metadata !"b", metadata !1, i32 573, metadata !22, i32 0} ; [ DW_TAG_arg_variable ]
!397 = metadata !{i32 590081, metadata !123, metadata !"clk_id", metadata !1, i32 169, metadata !126, i32 0} ; [ DW_TAG_arg_variable ]
!398 = metadata !{i32 590081, metadata !123, metadata !"res", metadata !1, i32 169, metadata !127, i32 0} ; [ DW_TAG_arg_variable ]
!399 = metadata !{i32 590081, metadata !129, metadata !"fd", metadata !12, i32 798, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!400 = metadata !{i32 590081, metadata !129, metadata !"msg", metadata !12, i32 798, metadata !132, i32 0} ; [ DW_TAG_arg_variable ]
!401 = metadata !{i32 590081, metadata !129, metadata !"flags", metadata !12, i32 798, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!402 = metadata !{i32 590080, metadata !403, metadata !"f", metadata !12, i32 800, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!403 = metadata !{i32 589835, metadata !129, i32 799, i32 0, metadata !12, i32 11} ; [ DW_TAG_lexical_block ]
!404 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !405} ; [ DW_TAG_pointer_type ]
!405 = metadata !{i32 589846, metadata !17, metadata !"exe_file_t", metadata !17, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ]
!406 = metadata !{i32 590081, metadata !150, metadata !"fd", metadata !12, i32 793, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!407 = metadata !{i32 590081, metadata !150, metadata !"msg", metadata !12, i32 793, metadata !132, i32 0} ; [ DW_TAG_arg_variable ]
!408 = metadata !{i32 590081, metadata !150, metadata !"flags", metadata !12, i32 793, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!409 = metadata !{i32 590081, metadata !151, metadata !"fd", metadata !12, i32 705, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!410 = metadata !{i32 590081, metadata !151, metadata !"buf", metadata !12, i32 705, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!411 = metadata !{i32 590081, metadata !151, metadata !"len", metadata !12, i32 705, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!412 = metadata !{i32 590081, metadata !151, metadata !"flags", metadata !12, i32 705, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!413 = metadata !{i32 590081, metadata !151, metadata !"from", metadata !12, i32 705, metadata !154, i32 0} ; [ DW_TAG_arg_variable ]
!414 = metadata !{i32 590081, metadata !151, metadata !"fromlen", metadata !12, i32 705, metadata !94, i32 0} ; [ DW_TAG_arg_variable ]
!415 = metadata !{i32 590080, metadata !416, metadata !"iov", metadata !12, i32 707, metadata !139, i32 0} ; [ DW_TAG_auto_variable ]
!416 = metadata !{i32 589835, metadata !151, i32 706, i32 0, metadata !12, i32 13} ; [ DW_TAG_lexical_block ]
!417 = metadata !{i32 590080, metadata !416, metadata !"msg", metadata !12, i32 708, metadata !133, i32 0} ; [ DW_TAG_auto_variable ]
!418 = metadata !{i32 590080, metadata !416, metadata !"s", metadata !12, i32 709, metadata !101, i32 0} ; [ DW_TAG_auto_variable ]
!419 = metadata !{i32 590081, metadata !162, metadata !"fd", metadata !12, i32 700, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!420 = metadata !{i32 590081, metadata !162, metadata !"buf", metadata !12, i32 700, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!421 = metadata !{i32 590081, metadata !162, metadata !"len", metadata !12, i32 700, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!422 = metadata !{i32 590081, metadata !162, metadata !"flags", metadata !12, i32 700, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!423 = metadata !{i32 590081, metadata !162, metadata !"from", metadata !12, i32 700, metadata !154, i32 0} ; [ DW_TAG_arg_variable ]
!424 = metadata !{i32 590081, metadata !162, metadata !"fromlen", metadata !12, i32 700, metadata !94, i32 0} ; [ DW_TAG_arg_variable ]
!425 = metadata !{i32 590081, metadata !163, metadata !"fd", metadata !12, i32 671, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!426 = metadata !{i32 590081, metadata !163, metadata !"buf", metadata !12, i32 671, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!427 = metadata !{i32 590081, metadata !163, metadata !"len", metadata !12, i32 671, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!428 = metadata !{i32 590081, metadata !163, metadata !"flags", metadata !12, i32 671, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!429 = metadata !{i32 590081, metadata !166, metadata !"fd", metadata !12, i32 667, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!430 = metadata !{i32 590081, metadata !166, metadata !"buf", metadata !12, i32 667, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!431 = metadata !{i32 590081, metadata !166, metadata !"len", metadata !12, i32 667, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!432 = metadata !{i32 590081, metadata !166, metadata !"flags", metadata !12, i32 667, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!433 = metadata !{i32 590081, metadata !167, metadata !"fd", metadata !12, i32 739, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!434 = metadata !{i32 590081, metadata !167, metadata !"msg", metadata !12, i32 739, metadata !170, i32 0} ; [ DW_TAG_arg_variable ]
!435 = metadata !{i32 590081, metadata !167, metadata !"flags", metadata !12, i32 739, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!436 = metadata !{i32 590080, metadata !437, metadata !"f", metadata !12, i32 741, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!437 = metadata !{i32 589835, metadata !167, i32 740, i32 0, metadata !12, i32 17} ; [ DW_TAG_lexical_block ]
!438 = metadata !{i32 590081, metadata !172, metadata !"fd", metadata !12, i32 734, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!439 = metadata !{i32 590081, metadata !172, metadata !"msg", metadata !12, i32 734, metadata !170, i32 0} ; [ DW_TAG_arg_variable ]
!440 = metadata !{i32 590081, metadata !172, metadata !"flags", metadata !12, i32 734, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!441 = metadata !{i32 590081, metadata !173, metadata !"fd", metadata !12, i32 681, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!442 = metadata !{i32 590081, metadata !173, metadata !"buf", metadata !12, i32 681, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!443 = metadata !{i32 590081, metadata !173, metadata !"len", metadata !12, i32 681, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!444 = metadata !{i32 590081, metadata !173, metadata !"flags", metadata !12, i32 681, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!445 = metadata !{i32 590081, metadata !173, metadata !"to", metadata !12, i32 681, metadata !176, i32 0} ; [ DW_TAG_arg_variable ]
!446 = metadata !{i32 590081, metadata !173, metadata !"tolen", metadata !12, i32 681, metadata !87, i32 0} ; [ DW_TAG_arg_variable ]
!447 = metadata !{i32 590080, metadata !448, metadata !"iov", metadata !12, i32 683, metadata !139, i32 0} ; [ DW_TAG_auto_variable ]
!448 = metadata !{i32 589835, metadata !173, i32 682, i32 0, metadata !12, i32 19} ; [ DW_TAG_lexical_block ]
!449 = metadata !{i32 590080, metadata !448, metadata !"msg", metadata !12, i32 684, metadata !133, i32 0} ; [ DW_TAG_auto_variable ]
!450 = metadata !{i32 590081, metadata !178, metadata !"fd", metadata !12, i32 676, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!451 = metadata !{i32 590081, metadata !178, metadata !"buf", metadata !12, i32 676, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!452 = metadata !{i32 590081, metadata !178, metadata !"len", metadata !12, i32 676, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!453 = metadata !{i32 590081, metadata !178, metadata !"flags", metadata !12, i32 676, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!454 = metadata !{i32 590081, metadata !178, metadata !"to", metadata !12, i32 676, metadata !176, i32 0} ; [ DW_TAG_arg_variable ]
!455 = metadata !{i32 590081, metadata !178, metadata !"tolen", metadata !12, i32 676, metadata !87, i32 0} ; [ DW_TAG_arg_variable ]
!456 = metadata !{i32 590081, metadata !179, metadata !"fd", metadata !12, i32 662, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!457 = metadata !{i32 590081, metadata !179, metadata !"buf", metadata !12, i32 662, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!458 = metadata !{i32 590081, metadata !179, metadata !"len", metadata !12, i32 662, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!459 = metadata !{i32 590081, metadata !179, metadata !"flags", metadata !12, i32 662, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!460 = metadata !{i32 590081, metadata !180, metadata !"fd", metadata !12, i32 658, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!461 = metadata !{i32 590081, metadata !180, metadata !"buf", metadata !12, i32 658, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!462 = metadata !{i32 590081, metadata !180, metadata !"len", metadata !12, i32 658, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!463 = metadata !{i32 590081, metadata !180, metadata !"flags", metadata !12, i32 658, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!464 = metadata !{i32 590081, metadata !181, metadata !"sockfd", metadata !12, i32 615, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!465 = metadata !{i32 590081, metadata !181, metadata !"how", metadata !12, i32 615, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!466 = metadata !{i32 590080, metadata !467, metadata !"f", metadata !12, i32 616, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!467 = metadata !{i32 589835, metadata !181, i32 615, i32 0, metadata !12, i32 23} ; [ DW_TAG_lexical_block ]
!468 = metadata !{i32 590080, metadata !469, metadata !"os_r", metadata !12, i32 645, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 589835, metadata !467, i32 647, i32 0, metadata !12, i32 24} ; [ DW_TAG_lexical_block ]
!470 = metadata !{i32 590081, metadata !184, metadata !"args", metadata !12, i32 609, metadata !187, i32 0} ; [ DW_TAG_arg_variable ]
!471 = metadata !{i32 590080, metadata !472, metadata !"sockfd", metadata !12, i32 610, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!472 = metadata !{i32 589835, metadata !184, i32 609, i32 0, metadata !12, i32 25} ; [ DW_TAG_lexical_block ]
!473 = metadata !{i32 590080, metadata !472, metadata !"how", metadata !12, i32 611, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!474 = metadata !{i32 590081, metadata !188, metadata !"sockfd", metadata !12, i32 571, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!475 = metadata !{i32 590081, metadata !188, metadata !"addr", metadata !12, i32 571, metadata !154, i32 0} ; [ DW_TAG_arg_variable ]
!476 = metadata !{i32 590081, metadata !188, metadata !"addrlen", metadata !12, i32 571, metadata !94, i32 0} ; [ DW_TAG_arg_variable ]
!477 = metadata !{i32 590080, metadata !478, metadata !"os_r", metadata !12, i32 572, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!478 = metadata !{i32 589835, metadata !188, i32 571, i32 0, metadata !12, i32 26} ; [ DW_TAG_lexical_block ]
!479 = metadata !{i32 590080, metadata !478, metadata !"f", metadata !12, i32 573, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!480 = metadata !{i32 590081, metadata !191, metadata !"args", metadata !12, i32 563, metadata !187, i32 0} ; [ DW_TAG_arg_variable ]
!481 = metadata !{i32 590080, metadata !482, metadata !"sockfd", metadata !12, i32 565, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!482 = metadata !{i32 589835, metadata !191, i32 564, i32 0, metadata !12, i32 27} ; [ DW_TAG_lexical_block ]
!483 = metadata !{i32 590080, metadata !482, metadata !"addr", metadata !12, i32 566, metadata !154, i32 0} ; [ DW_TAG_auto_variable ]
!484 = metadata !{i32 590080, metadata !482, metadata !"addrlen", metadata !12, i32 567, metadata !94, i32 0} ; [ DW_TAG_auto_variable ]
!485 = metadata !{i32 590081, metadata !192, metadata !"sockfd", metadata !12, i32 527, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!486 = metadata !{i32 590081, metadata !192, metadata !"addr", metadata !12, i32 527, metadata !154, i32 0} ; [ DW_TAG_arg_variable ]
!487 = metadata !{i32 590081, metadata !192, metadata !"addrlen", metadata !12, i32 527, metadata !94, i32 0} ; [ DW_TAG_arg_variable ]
!488 = metadata !{i32 590080, metadata !489, metadata !"f", metadata !12, i32 528, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!489 = metadata !{i32 589835, metadata !192, i32 527, i32 0, metadata !12, i32 28} ; [ DW_TAG_lexical_block ]
!490 = metadata !{i32 590080, metadata !489, metadata !"os_r", metadata !12, i32 529, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!491 = metadata !{i32 590081, metadata !193, metadata !"args", metadata !12, i32 518, metadata !187, i32 0} ; [ DW_TAG_arg_variable ]
!492 = metadata !{i32 590080, metadata !493, metadata !"sockfd", metadata !12, i32 520, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!493 = metadata !{i32 589835, metadata !193, i32 519, i32 0, metadata !12, i32 29} ; [ DW_TAG_lexical_block ]
!494 = metadata !{i32 590080, metadata !493, metadata !"addr", metadata !12, i32 521, metadata !154, i32 0} ; [ DW_TAG_auto_variable ]
!495 = metadata !{i32 590080, metadata !493, metadata !"addrlen", metadata !12, i32 522, metadata !94, i32 0} ; [ DW_TAG_auto_variable ]
!496 = metadata !{i32 590081, metadata !194, metadata !"sockfd", metadata !12, i32 375, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!497 = metadata !{i32 590081, metadata !194, metadata !"backlog", metadata !12, i32 375, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!498 = metadata !{i32 590080, metadata !499, metadata !"os_r", metadata !12, i32 376, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!499 = metadata !{i32 589835, metadata !194, i32 375, i32 0, metadata !12, i32 30} ; [ DW_TAG_lexical_block ]
!500 = metadata !{i32 590080, metadata !499, metadata !"f", metadata !12, i32 377, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!501 = metadata !{i32 590081, metadata !195, metadata !"args", metadata !12, i32 368, metadata !187, i32 0} ; [ DW_TAG_arg_variable ]
!502 = metadata !{i32 590080, metadata !503, metadata !"sockfd", metadata !12, i32 369, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!503 = metadata !{i32 589835, metadata !195, i32 368, i32 0, metadata !12, i32 31} ; [ DW_TAG_lexical_block ]
!504 = metadata !{i32 590080, metadata !503, metadata !"backlog", metadata !12, i32 370, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!505 = metadata !{i32 590081, metadata !196, metadata !"sockfd", metadata !12, i32 319, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!506 = metadata !{i32 590081, metadata !196, metadata !"addr", metadata !12, i32 319, metadata !176, i32 0} ; [ DW_TAG_arg_variable ]
!507 = metadata !{i32 590081, metadata !196, metadata !"addrlen", metadata !12, i32 319, metadata !87, i32 0} ; [ DW_TAG_arg_variable ]
!508 = metadata !{i32 590080, metadata !509, metadata !"os_r", metadata !12, i32 320, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!509 = metadata !{i32 589835, metadata !196, i32 319, i32 0, metadata !12, i32 32} ; [ DW_TAG_lexical_block ]
!510 = metadata !{i32 590080, metadata !509, metadata !"f", metadata !12, i32 321, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!511 = metadata !{i32 590081, metadata !199, metadata !"args", metadata !12, i32 312, metadata !187, i32 0} ; [ DW_TAG_arg_variable ]
!512 = metadata !{i32 590080, metadata !513, metadata !"sockfd", metadata !12, i32 313, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!513 = metadata !{i32 589835, metadata !199, i32 312, i32 0, metadata !12, i32 33} ; [ DW_TAG_lexical_block ]
!514 = metadata !{i32 590080, metadata !513, metadata !"addr", metadata !12, i32 314, metadata !176, i32 0} ; [ DW_TAG_auto_variable ]
!515 = metadata !{i32 590080, metadata !513, metadata !"addrlen", metadata !12, i32 315, metadata !87, i32 0} ; [ DW_TAG_auto_variable ]
!516 = metadata !{i32 590081, metadata !200, metadata !"sockfd", metadata !12, i32 267, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!517 = metadata !{i32 590081, metadata !200, metadata !"addr", metadata !12, i32 267, metadata !176, i32 0} ; [ DW_TAG_arg_variable ]
!518 = metadata !{i32 590081, metadata !200, metadata !"addrlen", metadata !12, i32 267, metadata !87, i32 0} ; [ DW_TAG_arg_variable ]
!519 = metadata !{i32 590080, metadata !520, metadata !"os_r", metadata !12, i32 268, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!520 = metadata !{i32 589835, metadata !200, i32 267, i32 0, metadata !12, i32 34} ; [ DW_TAG_lexical_block ]
!521 = metadata !{i32 590080, metadata !520, metadata !"f", metadata !12, i32 269, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!522 = metadata !{i32 590081, metadata !201, metadata !"args", metadata !12, i32 259, metadata !187, i32 0} ; [ DW_TAG_arg_variable ]
!523 = metadata !{i32 590080, metadata !524, metadata !"sockfd", metadata !12, i32 260, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!524 = metadata !{i32 589835, metadata !201, i32 259, i32 0, metadata !12, i32 35} ; [ DW_TAG_lexical_block ]
!525 = metadata !{i32 590080, metadata !524, metadata !"addr", metadata !12, i32 261, metadata !176, i32 0} ; [ DW_TAG_auto_variable ]
!526 = metadata !{i32 590080, metadata !524, metadata !"addrlen", metadata !12, i32 262, metadata !87, i32 0} ; [ DW_TAG_auto_variable ]
!527 = metadata !{i32 590081, metadata !202, metadata !"oldpath", metadata !1, i32 142, metadata !118, i32 0} ; [ DW_TAG_arg_variable ]
!528 = metadata !{i32 590081, metadata !202, metadata !"newpath", metadata !1, i32 142, metadata !118, i32 0} ; [ DW_TAG_arg_variable ]
!529 = metadata !{i32 590080, metadata !530, metadata !"r", metadata !1, i32 145, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!530 = metadata !{i32 589835, metadata !202, i32 142, i32 0, metadata !1, i32 36} ; [ DW_TAG_lexical_block ]
!531 = metadata !{i32 590081, metadata !205, metadata !"domain", metadata !12, i32 106, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!532 = metadata !{i32 590081, metadata !205, metadata !"a", metadata !12, i32 106, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!533 = metadata !{i32 590081, metadata !208, metadata !"sockfd", metadata !12, i32 413, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!534 = metadata !{i32 590081, metadata !208, metadata !"addr", metadata !12, i32 413, metadata !154, i32 0} ; [ DW_TAG_arg_variable ]
!535 = metadata !{i32 590081, metadata !208, metadata !"addrlen", metadata !12, i32 413, metadata !94, i32 0} ; [ DW_TAG_arg_variable ]
!536 = metadata !{i32 590080, metadata !537, metadata !"connfd", metadata !12, i32 414, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!537 = metadata !{i32 589835, metadata !208, i32 413, i32 0, metadata !12, i32 38} ; [ DW_TAG_lexical_block ]
!538 = metadata !{i32 590080, metadata !537, metadata !"connf", metadata !12, i32 415, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!539 = metadata !{i32 590080, metadata !537, metadata !"f", metadata !12, i32 416, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!540 = metadata !{i32 590080, metadata !541, metadata !"fchild", metadata !12, i32 498, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!541 = metadata !{i32 589835, metadata !537, i32 499, i32 0, metadata !12, i32 39} ; [ DW_TAG_lexical_block ]
!542 = metadata !{i32 590080, metadata !541, metadata !"fd", metadata !12, i32 499, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!543 = metadata !{i32 590080, metadata !541, metadata !"os_r", metadata !12, i32 504, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!544 = metadata !{i32 590081, metadata !209, metadata !"sockfd", metadata !12, i32 409, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!545 = metadata !{i32 590081, metadata !209, metadata !"addr", metadata !12, i32 409, metadata !154, i32 0} ; [ DW_TAG_arg_variable ]
!546 = metadata !{i32 590081, metadata !209, metadata !"addrlen", metadata !12, i32 409, metadata !94, i32 0} ; [ DW_TAG_arg_variable ]
!547 = metadata !{i32 590081, metadata !210, metadata !"domain", metadata !12, i32 141, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!548 = metadata !{i32 590081, metadata !210, metadata !"type", metadata !12, i32 141, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!549 = metadata !{i32 590081, metadata !210, metadata !"protocol", metadata !12, i32 141, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!550 = metadata !{i32 590080, metadata !551, metadata !"fd", metadata !12, i32 142, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!551 = metadata !{i32 589835, metadata !210, i32 141, i32 0, metadata !12, i32 41} ; [ DW_TAG_lexical_block ]
!552 = metadata !{i32 590080, metadata !551, metadata !"f", metadata !12, i32 143, metadata !404, i32 0} ; [ DW_TAG_auto_variable ]
!553 = metadata !{i32 590080, metadata !554, metadata !"os_r", metadata !12, i32 153, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!554 = metadata !{i32 589835, metadata !551, i32 146, i32 0, metadata !12, i32 42} ; [ DW_TAG_lexical_block ]
!555 = metadata !{i32 590081, metadata !213, metadata !"args", metadata !12, i32 132, metadata !187, i32 0} ; [ DW_TAG_arg_variable ]
!556 = metadata !{i32 590080, metadata !557, metadata !"domain", metadata !12, i32 134, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!557 = metadata !{i32 589835, metadata !213, i32 132, i32 0, metadata !12, i32 43} ; [ DW_TAG_lexical_block ]
!558 = metadata !{i32 590080, metadata !557, metadata !"type", metadata !12, i32 135, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!559 = metadata !{i32 590080, metadata !557, metadata !"protocol", metadata !12, i32 136, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!560 = metadata !{i32 590081, metadata !214, metadata !"type", metadata !12, i32 25, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!561 = metadata !{i32 590081, metadata !214, metadata !"args", metadata !12, i32 25, metadata !187, i32 0} ; [ DW_TAG_arg_variable ]
!562 = metadata !{i32 590081, metadata !217, metadata !"name", metadata !1, i32 270, metadata !118, i32 0} ; [ DW_TAG_arg_variable ]
!563 = metadata !{i32 590080, metadata !564, metadata !"res", metadata !1, i32 271, metadata !22, i32 0} ; [ DW_TAG_auto_variable ]
!564 = metadata !{i32 589835, metadata !217, i32 270, i32 0, metadata !1, i32 45} ; [ DW_TAG_lexical_block ]
!565 = metadata !{i32 590080, metadata !564, metadata !"rp_res", metadata !1, i32 272, metadata !22, i32 0} ; [ DW_TAG_auto_variable ]
!566 = metadata !{i32 590081, metadata !218, metadata !"__s1", metadata !1, i32 248, metadata !118, i32 0} ; [ DW_TAG_arg_variable ]
!567 = metadata !{i32 590081, metadata !218, metadata !"__s2", metadata !1, i32 248, metadata !118, i32 0} ; [ DW_TAG_arg_variable ]
!568 = metadata !{i32 590080, metadata !569, metadata !"__s1_len", metadata !1, i32 249, metadata !144, i32 0} ; [ DW_TAG_auto_variable ]
!569 = metadata !{i32 589835, metadata !570, i32 248, i32 0, metadata !1, i32 47} ; [ DW_TAG_lexical_block ]
!570 = metadata !{i32 589835, metadata !218, i32 248, i32 0, metadata !1, i32 46} ; [ DW_TAG_lexical_block ]
!571 = metadata !{i32 590080, metadata !569, metadata !"__s2_len", metadata !1, i32 249, metadata !144, i32 0} ; [ DW_TAG_auto_variable ]
!572 = metadata !{i32 590081, metadata !219, metadata !"clk_id", metadata !1, i32 160, metadata !126, i32 0} ; [ DW_TAG_arg_variable ]
!573 = metadata !{i32 590081, metadata !219, metadata !"res", metadata !1, i32 160, metadata !222, i32 0} ; [ DW_TAG_arg_variable ]
!574 = metadata !{i32 590080, metadata !575, metadata !"tv", metadata !1, i32 161, metadata !576, i32 0} ; [ DW_TAG_auto_variable ]
!575 = metadata !{i32 589835, metadata !219, i32 160, i32 0, metadata !1, i32 48} ; [ DW_TAG_lexical_block ]
!576 = metadata !{i32 589843, metadata !1, metadata !"timeval", metadata !577, i32 31, i64 128, i64 64, i64 0, i32 0, null, metadata !578, i32 0, null} ; [ DW_TAG_structure_type ]
!577 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!578 = metadata !{metadata !579, metadata !580}
!579 = metadata !{i32 589837, metadata !576, metadata !"tv_sec", metadata !577, i32 32, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ]
!580 = metadata !{i32 589837, metadata !576, metadata !"tv_usec", metadata !577, i32 33, i64 64, i64 64, i64 64, i32 0, metadata !581} ; [ DW_TAG_member ]
!581 = metadata !{i32 589846, metadata !32, metadata !"__suseconds_t", metadata !32, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!582 = metadata !{i32 590081, metadata !223, metadata !"c", metadata !1, i32 94, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!583 = metadata !{i32 590081, metadata !223, metadata !"f", metadata !1, i32 94, metadata !226, i32 0} ; [ DW_TAG_arg_variable ]
!584 = metadata !{i32 590081, metadata !275, metadata !"f", metadata !1, i32 89, metadata !226, i32 0} ; [ DW_TAG_arg_variable ]
!585 = metadata !{i32 590081, metadata !278, metadata !"signum", metadata !1, i32 41, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!586 = metadata !{i32 590081, metadata !278, metadata !"act", metadata !1, i32 41, metadata !281, i32 0} ; [ DW_TAG_arg_variable ]
!587 = metadata !{i32 590081, metadata !278, metadata !"oldact", metadata !1, i32 42, metadata !377, i32 0} ; [ DW_TAG_arg_variable ]
!588 = metadata !{i32 590081, metadata !278, metadata !"_something", metadata !1, i32 42, metadata !144, i32 0} ; [ DW_TAG_arg_variable ]
!589 = metadata !{i32 41, i32 0, metadata !278, null}
!590 = metadata !{i32 42, i32 0, metadata !278, null}
!591 = metadata !{i32 43, i32 0, metadata !592, null}
!592 = metadata !{i32 589835, metadata !278, i32 42, i32 0, metadata !1, i32 51} ; [ DW_TAG_lexical_block ]
!593 = metadata !{i32 44, i32 0, metadata !592, null}
!594 = metadata !{i32 89, i32 0, metadata !275, null}
!595 = metadata !{i32 90, i32 0, metadata !596, null}
!596 = metadata !{i32 589835, metadata !275, i32 89, i32 0, metadata !1, i32 50} ; [ DW_TAG_lexical_block ]
!597 = metadata !{i32 94, i32 0, metadata !223, null}
!598 = metadata !{i32 95, i32 0, metadata !599, null}
!599 = metadata !{i32 589835, metadata !223, i32 94, i32 0, metadata !1, i32 49} ; [ DW_TAG_lexical_block ]
!600 = metadata !{i32 142, i32 0, metadata !202, null}
!601 = metadata !{i32 143, i32 0, metadata !530, null}
!602 = metadata !{i32 145, i32 0, metadata !530, null}
!603 = metadata !{i32 146, i32 0, metadata !530, null}
!604 = metadata !{i32 147, i32 0, metadata !530, null}
!605 = metadata !{i32 149, i32 0, metadata !530, null}
!606 = metadata !{i32 160, i32 0, metadata !219, null}
!607 = metadata !{i32 161, i32 0, metadata !575, null}
!608 = metadata !{i32 162, i32 0, metadata !575, null}
!609 = metadata !{i32 163, i32 0, metadata !575, null}
!610 = metadata !{i32 164, i32 0, metadata !575, null}
!611 = metadata !{i32 165, i32 0, metadata !575, null}
!612 = metadata !{i32 169, i32 0, metadata !123, null}
!613 = metadata !{i32 170, i32 0, metadata !614, null}
!614 = metadata !{i32 589835, metadata !123, i32 169, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!615 = metadata !{i32 171, i32 0, metadata !614, null}
!616 = metadata !{i32 172, i32 0, metadata !614, null}
!617 = metadata !{i32 248, i32 0, metadata !218, null}
!618 = metadata !{i32 249, i32 0, metadata !569, null}
!619 = metadata !{i32 249, i32 0, metadata !570, null}
!620 = metadata !{i32 253, i32 0, metadata !0, null}
!621 = metadata !{i32 254, i32 0, metadata !622, null}
!622 = metadata !{i32 589835, metadata !0, i32 253, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!623 = metadata !{i32 258, i32 0, metadata !7, null}
!624 = metadata !{i32 259, i32 0, metadata !625, null}
!625 = metadata !{i32 589835, metadata !7, i32 258, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!626 = metadata !{i32 263, i32 0, metadata !8, null}
!627 = metadata !{i32 264, i32 0, metadata !628, null}
!628 = metadata !{i32 589835, metadata !8, i32 263, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!629 = metadata !{i32 859, i32 0, metadata !90, null}
!630 = metadata !{i32 860, i32 0, metadata !90, null}
!631 = metadata !{i32 862, i32 0, metadata !632, null}
!632 = metadata !{i32 589835, metadata !90, i32 861, i32 0, metadata !12, i32 5} ; [ DW_TAG_lexical_block ]
!633 = metadata !{i32 865, i32 0, metadata !95, null}
!634 = metadata !{i32 866, i32 0, metadata !95, null}
!635 = metadata !{i32 868, i32 0, metadata !636, null}
!636 = metadata !{i32 589835, metadata !95, i32 867, i32 0, metadata !12, i32 6} ; [ DW_TAG_lexical_block ]
!637 = metadata !{i32 837, i32 0, metadata !98, null}
!638 = metadata !{i32 839, i32 0, metadata !639, null}
!639 = metadata !{i32 589835, metadata !98, i32 838, i32 0, metadata !12, i32 7} ; [ DW_TAG_lexical_block ]
!640 = metadata !{i32 840, i32 0, metadata !639, null}
!641 = metadata !{i32 841, i32 0, metadata !639, null}
!642 = metadata !{i32 842, i32 0, metadata !639, null}
!643 = metadata !{i32 847, i32 0, metadata !639, null}
!644 = metadata !{i32 100, i32 0, metadata !645, metadata !646}
!645 = metadata !{i32 589835, metadata !89, i32 99, i32 0, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!646 = metadata !{i32 848, i32 0, metadata !639, null}
!647 = metadata !{i32 102, i32 0, metadata !645, metadata !646}
!648 = metadata !{i32 849, i32 0, metadata !639, null}
!649 = metadata !{i32 851, i32 0, metadata !639, null}
!650 = metadata !{i32 852, i32 0, metadata !639, null}
!651 = metadata !{i32 853, i32 0, metadata !639, null}
!652 = metadata !{i32 579, i32 0, metadata !115, null}
!653 = metadata !{i32 580, i32 0, metadata !654, null}
!654 = metadata !{i32 589835, metadata !115, i32 579, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!655 = metadata !{i32 581, i32 0, metadata !654, null}
!656 = metadata !{i32 573, i32 0, metadata !120, null}
!657 = metadata !{i32 574, i32 0, metadata !658, null}
!658 = metadata !{i32 589835, metadata !120, i32 573, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!659 = metadata !{i32 575, i32 0, metadata !658, null}
!660 = metadata !{i32 798, i32 0, metadata !129, null}
!661 = metadata !{i32 800, i32 0, metadata !403, null}
!662 = metadata !{i32 801, i32 0, metadata !403, null}
!663 = metadata !{i32 802, i32 0, metadata !403, null}
!664 = metadata !{i32 803, i32 0, metadata !403, null}
!665 = metadata !{i32 806, i32 0, metadata !403, null}
!666 = metadata !{i32 807, i32 0, metadata !403, null}
!667 = metadata !{i32 808, i32 0, metadata !403, null}
!668 = metadata !{i32 811, i32 0, metadata !403, null}
!669 = metadata !{i32 812, i32 0, metadata !403, null}
!670 = metadata !{i32 813, i32 0, metadata !403, null}
!671 = metadata !{i32 816, i32 0, metadata !403, null}
!672 = metadata !{i32 818, i32 0, metadata !403, null}
!673 = metadata !{i32 821, i32 0, metadata !403, null}
!674 = metadata !{i32 824, i32 0, metadata !403, null}
!675 = metadata !{i32 828, i32 0, metadata !403, null}
!676 = metadata !{i32 825, i32 0, metadata !403, null}
!677 = metadata !{i32 826, i32 0, metadata !403, null}
!678 = metadata !{i32 830, i32 0, metadata !403, null}
!679 = metadata !{i32 831, i32 0, metadata !403, null}
!680 = metadata !{i32 833, i32 0, metadata !403, null}
!681 = metadata !{i32 793, i32 0, metadata !150, null}
!682 = metadata !{i32 795, i32 0, metadata !683, null}
!683 = metadata !{i32 589835, metadata !150, i32 794, i32 0, metadata !12, i32 12} ; [ DW_TAG_lexical_block ]
!684 = metadata !{i32 705, i32 0, metadata !151, null}
!685 = metadata !{i32 707, i32 0, metadata !416, null}
!686 = metadata !{i32 708, i32 0, metadata !416, null}
!687 = metadata !{i32 711, i32 0, metadata !416, null}
!688 = metadata !{i32 712, i32 0, metadata !416, null}
!689 = metadata !{i32 713, i32 0, metadata !416, null}
!690 = metadata !{i32 716, i32 0, metadata !416, null}
!691 = metadata !{i32 717, i32 0, metadata !416, null}
!692 = metadata !{i32 719, i32 0, metadata !416, null}
!693 = metadata !{i32 720, i32 0, metadata !416, null}
!694 = metadata !{i32 721, i32 0, metadata !416, null}
!695 = metadata !{i32 722, i32 0, metadata !416, null}
!696 = metadata !{i32 723, i32 0, metadata !416, null}
!697 = metadata !{i32 724, i32 0, metadata !416, null}
!698 = metadata !{i32 725, i32 0, metadata !416, null}
!699 = metadata !{i32 727, i32 0, metadata !416, null}
!700 = metadata !{i32 729, i32 0, metadata !416, null}
!701 = metadata !{i32 700, i32 0, metadata !162, null}
!702 = metadata !{i32 705, i32 0, metadata !151, metadata !703}
!703 = metadata !{i32 702, i32 0, metadata !704, null}
!704 = metadata !{i32 589835, metadata !162, i32 701, i32 0, metadata !12, i32 14} ; [ DW_TAG_lexical_block ]
!705 = metadata !{i32 707, i32 0, metadata !416, metadata !703}
!706 = metadata !{i32 708, i32 0, metadata !416, metadata !703}
!707 = metadata !{i32 711, i32 0, metadata !416, metadata !703}
!708 = metadata !{i32 712, i32 0, metadata !416, metadata !703}
!709 = metadata !{i32 713, i32 0, metadata !416, metadata !703}
!710 = metadata !{i32 716, i32 0, metadata !416, metadata !703}
!711 = metadata !{i32 717, i32 0, metadata !416, metadata !703}
!712 = metadata !{i32 719, i32 0, metadata !416, metadata !703}
!713 = metadata !{i32 720, i32 0, metadata !416, metadata !703}
!714 = metadata !{i32 721, i32 0, metadata !416, metadata !703}
!715 = metadata !{i32 722, i32 0, metadata !416, metadata !703}
!716 = metadata !{i32 723, i32 0, metadata !416, metadata !703}
!717 = metadata !{i32 724, i32 0, metadata !416, metadata !703}
!718 = metadata !{i32 725, i32 0, metadata !416, metadata !703}
!719 = metadata !{i32 727, i32 0, metadata !416, metadata !703}
!720 = metadata !{i32 729, i32 0, metadata !416, metadata !703}
!721 = metadata !{i32 671, i32 0, metadata !163, null}
!722 = metadata !{i32 705, i32 0, metadata !151, metadata !723}
!723 = metadata !{i32 673, i32 0, metadata !724, null}
!724 = metadata !{i32 589835, metadata !163, i32 672, i32 0, metadata !12, i32 15} ; [ DW_TAG_lexical_block ]
!725 = metadata !{%struct.sockaddr* null}
!726 = metadata !{i32* null}
!727 = metadata !{i32 707, i32 0, metadata !416, metadata !723}
!728 = metadata !{i32 708, i32 0, metadata !416, metadata !723}
!729 = metadata !{i32 716, i32 0, metadata !416, metadata !723}
!730 = metadata !{i32 717, i32 0, metadata !416, metadata !723}
!731 = metadata !{i32 719, i32 0, metadata !416, metadata !723}
!732 = metadata !{i32 720, i32 0, metadata !416, metadata !723}
!733 = metadata !{i32 721, i32 0, metadata !416, metadata !723}
!734 = metadata !{i32 722, i32 0, metadata !416, metadata !723}
!735 = metadata !{i32 723, i32 0, metadata !416, metadata !723}
!736 = metadata !{i32 724, i32 0, metadata !416, metadata !723}
!737 = metadata !{i32 725, i32 0, metadata !416, metadata !723}
!738 = metadata !{i32 727, i32 0, metadata !416, metadata !723}
!739 = metadata !{i32 667, i32 0, metadata !166, null}
!740 = metadata !{i32 671, i32 0, metadata !163, metadata !741}
!741 = metadata !{i32 668, i32 0, metadata !742, null}
!742 = metadata !{i32 589835, metadata !166, i32 667, i32 0, metadata !12, i32 16} ; [ DW_TAG_lexical_block ]
!743 = metadata !{i32 705, i32 0, metadata !151, metadata !744}
!744 = metadata !{i32 673, i32 0, metadata !724, metadata !741}
!745 = metadata !{i32 707, i32 0, metadata !416, metadata !744}
!746 = metadata !{i32 708, i32 0, metadata !416, metadata !744}
!747 = metadata !{i32 716, i32 0, metadata !416, metadata !744}
!748 = metadata !{i32 717, i32 0, metadata !416, metadata !744}
!749 = metadata !{i32 719, i32 0, metadata !416, metadata !744}
!750 = metadata !{i32 720, i32 0, metadata !416, metadata !744}
!751 = metadata !{i32 721, i32 0, metadata !416, metadata !744}
!752 = metadata !{i32 722, i32 0, metadata !416, metadata !744}
!753 = metadata !{i32 723, i32 0, metadata !416, metadata !744}
!754 = metadata !{i32 724, i32 0, metadata !416, metadata !744}
!755 = metadata !{i32 725, i32 0, metadata !416, metadata !744}
!756 = metadata !{i32 727, i32 0, metadata !416, metadata !744}
!757 = metadata !{i32 739, i32 0, metadata !167, null}
!758 = metadata !{i32 741, i32 0, metadata !437, null}
!759 = metadata !{i32 742, i32 0, metadata !437, null}
!760 = metadata !{i32 743, i32 0, metadata !437, null}
!761 = metadata !{i32 744, i32 0, metadata !437, null}
!762 = metadata !{i32 747, i32 0, metadata !437, null}
!763 = metadata !{i32 748, i32 0, metadata !437, null}
!764 = metadata !{i32 749, i32 0, metadata !437, null}
!765 = metadata !{i32 752, i32 0, metadata !437, null}
!766 = metadata !{i32 753, i32 0, metadata !437, null}
!767 = metadata !{i32 754, i32 0, metadata !437, null}
!768 = metadata !{i32 757, i32 0, metadata !437, null}
!769 = metadata !{i32 759, i32 0, metadata !437, null}
!770 = metadata !{i32 762, i32 0, metadata !437, null}
!771 = metadata !{i32 763, i32 0, metadata !437, null}
!772 = metadata !{i32 764, i32 0, metadata !437, null}
!773 = metadata !{i32 765, i32 0, metadata !437, null}
!774 = metadata !{i32 766, i32 0, metadata !437, null}
!775 = metadata !{i32 770, i32 0, metadata !437, null}
!776 = metadata !{i32 771, i32 0, metadata !437, null}
!777 = metadata !{i32 772, i32 0, metadata !437, null}
!778 = metadata !{i32 775, i32 0, metadata !437, null}
!779 = metadata !{i32 776, i32 0, metadata !437, null}
!780 = metadata !{i32 777, i32 0, metadata !437, null}
!781 = metadata !{i32 781, i32 0, metadata !437, null}
!782 = metadata !{i32 782, i32 0, metadata !437, null}
!783 = metadata !{i32 786, i32 0, metadata !437, null}
!784 = metadata !{i32 787, i32 0, metadata !437, null}
!785 = metadata !{i32 789, i32 0, metadata !437, null}
!786 = metadata !{i32 734, i32 0, metadata !172, null}
!787 = metadata !{i32 736, i32 0, metadata !788, null}
!788 = metadata !{i32 589835, metadata !172, i32 735, i32 0, metadata !12, i32 18} ; [ DW_TAG_lexical_block ]
!789 = metadata !{i32 681, i32 0, metadata !173, null}
!790 = metadata !{i32 683, i32 0, metadata !448, null}
!791 = metadata !{i32 684, i32 0, metadata !448, null}
!792 = metadata !{i32 686, i32 0, metadata !448, null}
!793 = metadata !{i32 687, i32 0, metadata !448, null}
!794 = metadata !{i32 689, i32 0, metadata !448, null}
!795 = metadata !{i32 690, i32 0, metadata !448, null}
!796 = metadata !{i32 691, i32 0, metadata !448, null}
!797 = metadata !{i32 692, i32 0, metadata !448, null}
!798 = metadata !{i32 693, i32 0, metadata !448, null}
!799 = metadata !{i32 694, i32 0, metadata !448, null}
!800 = metadata !{i32 695, i32 0, metadata !448, null}
!801 = metadata !{i32 697, i32 0, metadata !448, null}
!802 = metadata !{i32 676, i32 0, metadata !178, null}
!803 = metadata !{i32 681, i32 0, metadata !173, metadata !804}
!804 = metadata !{i32 678, i32 0, metadata !805, null}
!805 = metadata !{i32 589835, metadata !178, i32 677, i32 0, metadata !12, i32 20} ; [ DW_TAG_lexical_block ]
!806 = metadata !{i32 683, i32 0, metadata !448, metadata !804}
!807 = metadata !{i32 684, i32 0, metadata !448, metadata !804}
!808 = metadata !{i32 686, i32 0, metadata !448, metadata !804}
!809 = metadata !{i32 687, i32 0, metadata !448, metadata !804}
!810 = metadata !{i32 689, i32 0, metadata !448, metadata !804}
!811 = metadata !{i32 690, i32 0, metadata !448, metadata !804}
!812 = metadata !{i32 691, i32 0, metadata !448, metadata !804}
!813 = metadata !{i32 692, i32 0, metadata !448, metadata !804}
!814 = metadata !{i32 693, i32 0, metadata !448, metadata !804}
!815 = metadata !{i32 694, i32 0, metadata !448, metadata !804}
!816 = metadata !{i32 695, i32 0, metadata !448, metadata !804}
!817 = metadata !{i32 697, i32 0, metadata !448, metadata !804}
!818 = metadata !{i32 662, i32 0, metadata !179, null}
!819 = metadata !{i32 681, i32 0, metadata !173, metadata !820}
!820 = metadata !{i32 664, i32 0, metadata !821, null}
!821 = metadata !{i32 589835, metadata !179, i32 663, i32 0, metadata !12, i32 21} ; [ DW_TAG_lexical_block ]
!822 = metadata !{i32 0}
!823 = metadata !{i32 683, i32 0, metadata !448, metadata !820}
!824 = metadata !{i32 684, i32 0, metadata !448, metadata !820}
!825 = metadata !{i32 686, i32 0, metadata !448, metadata !820}
!826 = metadata !{i32 687, i32 0, metadata !448, metadata !820}
!827 = metadata !{i32 689, i32 0, metadata !448, metadata !820}
!828 = metadata !{i32 690, i32 0, metadata !448, metadata !820}
!829 = metadata !{i32 691, i32 0, metadata !448, metadata !820}
!830 = metadata !{i32 692, i32 0, metadata !448, metadata !820}
!831 = metadata !{i32 693, i32 0, metadata !448, metadata !820}
!832 = metadata !{i32 694, i32 0, metadata !448, metadata !820}
!833 = metadata !{i32 695, i32 0, metadata !448, metadata !820}
!834 = metadata !{i32 697, i32 0, metadata !448, metadata !820}
!835 = metadata !{i32 658, i32 0, metadata !180, null}
!836 = metadata !{i32 662, i32 0, metadata !179, metadata !837}
!837 = metadata !{i32 659, i32 0, metadata !838, null}
!838 = metadata !{i32 589835, metadata !180, i32 658, i32 0, metadata !12, i32 22} ; [ DW_TAG_lexical_block ]
!839 = metadata !{i32 681, i32 0, metadata !173, metadata !840}
!840 = metadata !{i32 664, i32 0, metadata !821, metadata !837}
!841 = metadata !{i32 683, i32 0, metadata !448, metadata !840}
!842 = metadata !{i32 684, i32 0, metadata !448, metadata !840}
!843 = metadata !{i32 686, i32 0, metadata !448, metadata !840}
!844 = metadata !{i32 687, i32 0, metadata !448, metadata !840}
!845 = metadata !{i32 689, i32 0, metadata !448, metadata !840}
!846 = metadata !{i32 690, i32 0, metadata !448, metadata !840}
!847 = metadata !{i32 691, i32 0, metadata !448, metadata !840}
!848 = metadata !{i32 692, i32 0, metadata !448, metadata !840}
!849 = metadata !{i32 693, i32 0, metadata !448, metadata !840}
!850 = metadata !{i32 694, i32 0, metadata !448, metadata !840}
!851 = metadata !{i32 695, i32 0, metadata !448, metadata !840}
!852 = metadata !{i32 697, i32 0, metadata !448, metadata !840}
!853 = metadata !{i32 615, i32 0, metadata !181, null}
!854 = metadata !{i32 616, i32 0, metadata !467, null}
!855 = metadata !{i32 618, i32 0, metadata !467, null}
!856 = metadata !{i32 619, i32 0, metadata !467, null}
!857 = metadata !{i32 620, i32 0, metadata !467, null}
!858 = metadata !{i32 623, i32 0, metadata !467, null}
!859 = metadata !{i32 624, i32 0, metadata !467, null}
!860 = metadata !{i32 625, i32 0, metadata !467, null}
!861 = metadata !{i32 628, i32 0, metadata !467, null}
!862 = metadata !{i32 631, i32 0, metadata !467, null}
!863 = metadata !{i32 633, i32 0, metadata !467, null}
!864 = metadata !{i32 635, i32 0, metadata !467, null}
!865 = metadata !{i32 637, i32 0, metadata !467, null}
!866 = metadata !{i32 639, i32 0, metadata !467, null}
!867 = metadata !{i32 640, i32 0, metadata !467, null}
!868 = metadata !{i32 647, i32 0, metadata !469, null}
!869 = metadata !{i32 648, i32 0, metadata !469, null}
!870 = metadata !{i32 649, i32 0, metadata !469, null}
!871 = metadata !{i32 650, i32 0, metadata !469, null}
!872 = metadata !{i32 609, i32 0, metadata !184, null}
!873 = metadata !{i32 610, i32 0, metadata !472, null}
!874 = metadata !{i32 611, i32 0, metadata !472, null}
!875 = metadata !{i32 612, i32 0, metadata !472, null}
!876 = metadata !{i32 571, i32 0, metadata !188, null}
!877 = metadata !{i32 573, i32 0, metadata !478, null}
!878 = metadata !{i32 575, i32 0, metadata !478, null}
!879 = metadata !{i32 576, i32 0, metadata !478, null}
!880 = metadata !{i32 577, i32 0, metadata !478, null}
!881 = metadata !{i32 580, i32 0, metadata !478, null}
!882 = metadata !{i32 581, i32 0, metadata !478, null}
!883 = metadata !{i32 582, i32 0, metadata !478, null}
!884 = metadata !{i32 585, i32 0, metadata !478, null}
!885 = metadata !{i32 587, i32 0, metadata !478, null}
!886 = metadata !{i32 588, i32 0, metadata !478, null}
!887 = metadata !{i32 589, i32 0, metadata !478, null}
!888 = metadata !{i32 590, i32 0, metadata !478, null}
!889 = metadata !{i32 592, i32 0, metadata !478, null}
!890 = metadata !{i32 593, i32 0, metadata !478, null}
!891 = metadata !{i32 598, i32 0, metadata !478, null}
!892 = metadata !{i32 599, i32 0, metadata !478, null}
!893 = metadata !{i32 600, i32 0, metadata !478, null}
!894 = metadata !{i32 601, i32 0, metadata !478, null}
!895 = metadata !{i32 563, i32 0, metadata !191, null}
!896 = metadata !{i32 565, i32 0, metadata !482, null}
!897 = metadata !{i32 566, i32 0, metadata !482, null}
!898 = metadata !{i32 567, i32 0, metadata !482, null}
!899 = metadata !{i32 568, i32 0, metadata !482, null}
!900 = metadata !{i32 527, i32 0, metadata !192, null}
!901 = metadata !{i32 528, i32 0, metadata !489, null}
!902 = metadata !{i32 531, i32 0, metadata !489, null}
!903 = metadata !{i32 532, i32 0, metadata !489, null}
!904 = metadata !{i32 533, i32 0, metadata !489, null}
!905 = metadata !{i32 536, i32 0, metadata !489, null}
!906 = metadata !{i32 537, i32 0, metadata !489, null}
!907 = metadata !{i32 538, i32 0, metadata !489, null}
!908 = metadata !{i32 541, i32 0, metadata !489, null}
!909 = metadata !{i32 543, i32 0, metadata !489, null}
!910 = metadata !{i32 544, i32 0, metadata !489, null}
!911 = metadata !{i32 545, i32 0, metadata !489, null}
!912 = metadata !{i32 546, i32 0, metadata !489, null}
!913 = metadata !{i32 548, i32 0, metadata !489, null}
!914 = metadata !{i32 549, i32 0, metadata !489, null}
!915 = metadata !{i32 552, i32 0, metadata !489, null}
!916 = metadata !{i32 553, i32 0, metadata !489, null}
!917 = metadata !{i32 554, i32 0, metadata !489, null}
!918 = metadata !{i32 555, i32 0, metadata !489, null}
!919 = metadata !{i32 518, i32 0, metadata !193, null}
!920 = metadata !{i32 520, i32 0, metadata !493, null}
!921 = metadata !{i32 521, i32 0, metadata !493, null}
!922 = metadata !{i32 522, i32 0, metadata !493, null}
!923 = metadata !{i32 524, i32 0, metadata !493, null}
!924 = metadata !{i32 375, i32 0, metadata !194, null}
!925 = metadata !{i32 377, i32 0, metadata !499, null}
!926 = metadata !{i32 379, i32 0, metadata !499, null}
!927 = metadata !{i32 380, i32 0, metadata !499, null}
!928 = metadata !{i32 381, i32 0, metadata !499, null}
!929 = metadata !{i32 384, i32 0, metadata !499, null}
!930 = metadata !{i32 385, i32 0, metadata !499, null}
!931 = metadata !{i32 386, i32 0, metadata !499, null}
!932 = metadata !{i32 389, i32 0, metadata !499, null}
!933 = metadata !{i32 390, i32 0, metadata !499, null}
!934 = metadata !{i32 391, i32 0, metadata !499, null}
!935 = metadata !{i32 394, i32 0, metadata !499, null}
!936 = metadata !{i32 398, i32 0, metadata !499, null}
!937 = metadata !{i32 399, i32 0, metadata !499, null}
!938 = metadata !{i32 400, i32 0, metadata !499, null}
!939 = metadata !{i32 404, i32 0, metadata !499, null}
!940 = metadata !{i32 406, i32 0, metadata !499, null}
!941 = metadata !{i32 368, i32 0, metadata !195, null}
!942 = metadata !{i32 369, i32 0, metadata !503, null}
!943 = metadata !{i32 370, i32 0, metadata !503, null}
!944 = metadata !{i32 372, i32 0, metadata !503, null}
!945 = metadata !{i32 319, i32 0, metadata !196, null}
!946 = metadata !{i32 321, i32 0, metadata !509, null}
!947 = metadata !{i32 323, i32 0, metadata !509, null}
!948 = metadata !{i32 324, i32 0, metadata !509, null}
!949 = metadata !{i32 325, i32 0, metadata !509, null}
!950 = metadata !{i32 328, i32 0, metadata !509, null}
!951 = metadata !{i32 329, i32 0, metadata !509, null}
!952 = metadata !{i32 330, i32 0, metadata !509, null}
!953 = metadata !{i32 333, i32 0, metadata !509, null}
!954 = metadata !{i32 335, i32 0, metadata !509, null}
!955 = metadata !{i32 336, i32 0, metadata !509, null}
!956 = metadata !{i32 337, i32 0, metadata !509, null}
!957 = metadata !{i32 338, i32 0, metadata !509, null}
!958 = metadata !{i32 339, i32 0, metadata !509, null}
!959 = metadata !{i32 341, i32 0, metadata !509, null}
!960 = metadata !{i32 342, i32 0, metadata !509, null}
!961 = metadata !{i32 343, i32 0, metadata !509, null}
!962 = metadata !{i32 345, i32 0, metadata !509, null}
!963 = metadata !{i32 346, i32 0, metadata !509, null}
!964 = metadata !{i32 348, i32 0, metadata !509, null}
!965 = metadata !{i32 352, i32 0, metadata !509, null}
!966 = metadata !{i32 364, i32 0, metadata !509, null}
!967 = metadata !{i32 357, i32 0, metadata !509, null}
!968 = metadata !{i32 358, i32 0, metadata !509, null}
!969 = metadata !{i32 359, i32 0, metadata !509, null}
!970 = metadata !{i32 312, i32 0, metadata !199, null}
!971 = metadata !{i32 313, i32 0, metadata !513, null}
!972 = metadata !{i32 314, i32 0, metadata !513, null}
!973 = metadata !{i32 315, i32 0, metadata !513, null}
!974 = metadata !{i32 316, i32 0, metadata !513, null}
!975 = metadata !{i32 267, i32 0, metadata !200, null}
!976 = metadata !{i32 269, i32 0, metadata !520, null}
!977 = metadata !{i32 271, i32 0, metadata !520, null}
!978 = metadata !{i32 272, i32 0, metadata !520, null}
!979 = metadata !{i32 273, i32 0, metadata !520, null}
!980 = metadata !{i32 276, i32 0, metadata !520, null}
!981 = metadata !{i32 277, i32 0, metadata !520, null}
!982 = metadata !{i32 278, i32 0, metadata !520, null}
!983 = metadata !{i32 281, i32 0, metadata !520, null}
!984 = metadata !{i32 283, i32 0, metadata !520, null}
!985 = metadata !{i32 284, i32 0, metadata !520, null}
!986 = metadata !{i32 285, i32 0, metadata !520, null}
!987 = metadata !{i32 286, i32 0, metadata !520, null}
!988 = metadata !{i32 288, i32 0, metadata !520, null}
!989 = metadata !{i32 289, i32 0, metadata !520, null}
!990 = metadata !{i32 290, i32 0, metadata !520, null}
!991 = metadata !{i32 293, i32 0, metadata !520, null}
!992 = metadata !{i32 294, i32 0, metadata !520, null}
!993 = metadata !{i32 302, i32 0, metadata !520, null}
!994 = metadata !{i32 303, i32 0, metadata !520, null}
!995 = metadata !{i32 304, i32 0, metadata !520, null}
!996 = metadata !{i32 259, i32 0, metadata !201, null}
!997 = metadata !{i32 260, i32 0, metadata !524, null}
!998 = metadata !{i32 261, i32 0, metadata !524, null}
!999 = metadata !{i32 262, i32 0, metadata !524, null}
!1000 = metadata !{i32 264, i32 0, metadata !524, null}
!1001 = metadata !{i32 106, i32 0, metadata !205, null}
!1002 = metadata !{i32 107, i32 0, metadata !1003, null}
!1003 = metadata !{i32 589835, metadata !205, i32 106, i32 0, metadata !12, i32 37} ; [ DW_TAG_lexical_block ]
!1004 = metadata !{i32 108, i32 0, metadata !1003, null}
!1005 = metadata !{i32 117, i32 0, metadata !1003, null}
!1006 = metadata !{i32 120, i32 0, metadata !1003, null}
!1007 = metadata !{i32 123, i32 0, metadata !1003, null}
!1008 = metadata !{i32 127, i32 0, metadata !1003, null}
!1009 = metadata !{i32 413, i32 0, metadata !208, null}
!1010 = metadata !{i32 415, i32 0, metadata !537, null}
!1011 = metadata !{i32 416, i32 0, metadata !537, null}
!1012 = metadata !{i32 418, i32 0, metadata !537, null}
!1013 = metadata !{i32 419, i32 0, metadata !537, null}
!1014 = metadata !{i32 420, i32 0, metadata !537, null}
!1015 = metadata !{i32 423, i32 0, metadata !537, null}
!1016 = metadata !{i32 424, i32 0, metadata !537, null}
!1017 = metadata !{i32 425, i32 0, metadata !537, null}
!1018 = metadata !{i32 428, i32 0, metadata !537, null}
!1019 = metadata !{i32 429, i32 0, metadata !537, null}
!1020 = metadata !{i32 430, i32 0, metadata !537, null}
!1021 = metadata !{i32 433, i32 0, metadata !537, null}
!1022 = metadata !{i32 434, i32 0, metadata !537, null}
!1023 = metadata !{i32 435, i32 0, metadata !537, null}
!1024 = metadata !{i32 446, i32 0, metadata !537, null}
!1025 = metadata !{i32 448, i32 0, metadata !537, null}
!1026 = metadata !{i32 449, i32 0, metadata !537, null}
!1027 = metadata !{i32 450, i32 0, metadata !537, null}
!1028 = metadata !{i32 452, i32 0, metadata !537, null}
!1029 = metadata !{i32 93, i32 0, metadata !1030, metadata !1028}
!1030 = metadata !{i32 589835, metadata !11, i32 88, i32 0, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!1031 = metadata !{i32 95, i32 0, metadata !1030, metadata !1028}
!1032 = metadata !{i32 453, i32 0, metadata !537, null}
!1033 = metadata !{i32 454, i32 0, metadata !537, null}
!1034 = metadata !{i32 455, i32 0, metadata !537, null}
!1035 = metadata !{i32 456, i32 0, metadata !537, null}
!1036 = metadata !{i32 457, i32 0, metadata !537, null}
!1037 = metadata !{i32 461, i32 0, metadata !537, null}
!1038 = metadata !{i32 462, i32 0, metadata !537, null}
!1039 = metadata !{i32 463, i32 0, metadata !537, null}
!1040 = metadata !{i32 464, i32 0, metadata !537, null}
!1041 = metadata !{i32 465, i32 0, metadata !537, null}
!1042 = metadata !{i32 470, i32 0, metadata !537, null}
!1043 = metadata !{i32 471, i32 0, metadata !537, null}
!1044 = metadata !{i32 474, i32 0, metadata !537, null}
!1045 = metadata !{i32 477, i32 0, metadata !537, null}
!1046 = metadata !{i32 478, i32 0, metadata !537, null}
!1047 = metadata !{i32 479, i32 0, metadata !537, null}
!1048 = metadata !{i32 480, i32 0, metadata !537, null}
!1049 = metadata !{i32 481, i32 0, metadata !537, null}
!1050 = metadata !{i32 482, i32 0, metadata !537, null}
!1051 = metadata !{i32 483, i32 0, metadata !537, null}
!1052 = metadata !{i32 484, i32 0, metadata !537, null}
!1053 = metadata !{i32 485, i32 0, metadata !537, null}
!1054 = metadata !{i32 487, i32 0, metadata !537, null}
!1055 = metadata !{i32 488, i32 0, metadata !537, null}
!1056 = metadata !{i32 491, i32 0, metadata !537, null}
!1057 = metadata !{i32 496, i32 0, metadata !537, null}
!1058 = metadata !{i32 498, i32 0, metadata !541, null}
!1059 = metadata !{i32 499, i32 0, metadata !541, null}
!1060 = metadata !{i32 500, i32 0, metadata !541, null}
!1061 = metadata !{i32 501, i32 0, metadata !541, null}
!1062 = metadata !{i32 502, i32 0, metadata !541, null}
!1063 = metadata !{i32 504, i32 0, metadata !541, null}
!1064 = metadata !{i32 505, i32 0, metadata !541, null}
!1065 = metadata !{i32 506, i32 0, metadata !541, null}
!1066 = metadata !{i32 507, i32 0, metadata !541, null}
!1067 = metadata !{i32 508, i32 0, metadata !541, null}
!1068 = metadata !{i32 510, i32 0, metadata !541, null}
!1069 = metadata !{i32 511, i32 0, metadata !541, null}
!1070 = metadata !{i32 512, i32 0, metadata !541, null}
!1071 = metadata !{i32 513, i32 0, metadata !541, null}
!1072 = metadata !{i32 409, i32 0, metadata !209, null}
!1073 = metadata !{i32 410, i32 0, metadata !1074, null}
!1074 = metadata !{i32 589835, metadata !209, i32 409, i32 0, metadata !12, i32 40} ; [ DW_TAG_lexical_block ]
!1075 = metadata !{i32 141, i32 0, metadata !210, null}
!1076 = metadata !{i32 143, i32 0, metadata !551, null}
!1077 = metadata !{i32 145, i32 0, metadata !551, null}
!1078 = metadata !{i32 146, i32 0, metadata !554, null}
!1079 = metadata !{i32 147, i32 0, metadata !554, null}
!1080 = metadata !{i32 148, i32 0, metadata !554, null}
!1081 = metadata !{i32 149, i32 0, metadata !554, null}
!1082 = metadata !{i32 150, i32 0, metadata !554, null}
!1083 = metadata !{i32 153, i32 0, metadata !554, null}
!1084 = metadata !{i32 154, i32 0, metadata !554, null}
!1085 = metadata !{i32 155, i32 0, metadata !554, null}
!1086 = metadata !{i32 156, i32 0, metadata !554, null}
!1087 = metadata !{i32 157, i32 0, metadata !554, null}
!1088 = metadata !{i32 159, i32 0, metadata !554, null}
!1089 = metadata !{i32 160, i32 0, metadata !554, null}
!1090 = metadata !{i32 161, i32 0, metadata !554, null}
!1091 = metadata !{i32 163, i32 0, metadata !554, null}
!1092 = metadata !{i32 166, i32 0, metadata !551, null}
!1093 = metadata !{i32 171, i32 0, metadata !551, null}
!1094 = metadata !{i32 174, i32 0, metadata !551, null}
!1095 = metadata !{i32 175, i32 0, metadata !551, null}
!1096 = metadata !{i32 176, i32 0, metadata !551, null}
!1097 = metadata !{i32 178, i32 0, metadata !551, null}
!1098 = metadata !{i32 179, i32 0, metadata !551, null}
!1099 = metadata !{i32 180, i32 0, metadata !551, null}
!1100 = metadata !{i32 181, i32 0, metadata !551, null}
!1101 = metadata !{i32 184, i32 0, metadata !551, null}
!1102 = metadata !{i32 185, i32 0, metadata !551, null}
!1103 = metadata !{i32 186, i32 0, metadata !551, null}
!1104 = metadata !{i32 187, i32 0, metadata !551, null}
!1105 = metadata !{i32 188, i32 0, metadata !551, null}
!1106 = metadata !{i32 189, i32 0, metadata !551, null}
!1107 = metadata !{i32 192, i32 0, metadata !551, null}
!1108 = metadata !{i32 193, i32 0, metadata !551, null}
!1109 = metadata !{i32 194, i32 0, metadata !551, null}
!1110 = metadata !{i32 195, i32 0, metadata !551, null}
!1111 = metadata !{i32 196, i32 0, metadata !551, null}
!1112 = metadata !{i32 197, i32 0, metadata !551, null}
!1113 = metadata !{i32 200, i32 0, metadata !551, null}
!1114 = metadata !{i32 201, i32 0, metadata !551, null}
!1115 = metadata !{i32 204, i32 0, metadata !551, null}
!1116 = metadata !{i32 211, i32 0, metadata !551, null}
!1117 = metadata !{i32 212, i32 0, metadata !551, null}
!1118 = metadata !{i32 213, i32 0, metadata !551, null}
!1119 = metadata !{i32 215, i32 0, metadata !551, null}
!1120 = metadata !{i32 216, i32 0, metadata !551, null}
!1121 = metadata !{i32 217, i32 0, metadata !551, null}
!1122 = metadata !{i32 218, i32 0, metadata !551, null}
!1123 = metadata !{i32 221, i32 0, metadata !551, null}
!1124 = metadata !{i32 222, i32 0, metadata !551, null}
!1125 = metadata !{i32 223, i32 0, metadata !551, null}
!1126 = metadata !{i32 224, i32 0, metadata !551, null}
!1127 = metadata !{i32 225, i32 0, metadata !551, null}
!1128 = metadata !{i32 226, i32 0, metadata !551, null}
!1129 = metadata !{i32 229, i32 0, metadata !551, null}
!1130 = metadata !{i32 230, i32 0, metadata !551, null}
!1131 = metadata !{i32 231, i32 0, metadata !551, null}
!1132 = metadata !{i32 232, i32 0, metadata !551, null}
!1133 = metadata !{i32 233, i32 0, metadata !551, null}
!1134 = metadata !{i32 234, i32 0, metadata !551, null}
!1135 = metadata !{i32 237, i32 0, metadata !551, null}
!1136 = metadata !{i32 238, i32 0, metadata !551, null}
!1137 = metadata !{i32 243, i32 0, metadata !551, null}
!1138 = metadata !{i32 244, i32 0, metadata !551, null}
!1139 = metadata !{i32 245, i32 0, metadata !551, null}
!1140 = metadata !{i32 251, i32 0, metadata !551, null}
!1141 = metadata !{i32 252, i32 0, metadata !551, null}
!1142 = metadata !{i32 253, i32 0, metadata !551, null}
!1143 = metadata !{i32 132, i32 0, metadata !213, null}
!1144 = metadata !{i32 134, i32 0, metadata !557, null}
!1145 = metadata !{i32 135, i32 0, metadata !557, null}
!1146 = metadata !{i32 136, i32 0, metadata !557, null}
!1147 = metadata !{i32 138, i32 0, metadata !557, null}
!1148 = metadata !{i32 25, i32 0, metadata !214, null}
!1149 = metadata !{i32 26, i32 0, metadata !1150, null}
!1150 = metadata !{i32 589835, metadata !214, i32 25, i32 0, metadata !12, i32 44} ; [ DW_TAG_lexical_block ]
!1151 = metadata !{i32 132, i32 0, metadata !213, metadata !1152}
!1152 = metadata !{i32 28, i32 0, metadata !1150, null}
!1153 = metadata !{i32 134, i32 0, metadata !557, metadata !1152}
!1154 = metadata !{i32 135, i32 0, metadata !557, metadata !1152}
!1155 = metadata !{i32 136, i32 0, metadata !557, metadata !1152}
!1156 = metadata !{i32 138, i32 0, metadata !557, metadata !1152}
!1157 = metadata !{i32 259, i32 0, metadata !201, metadata !1158}
!1158 = metadata !{i32 30, i32 0, metadata !1150, null}
!1159 = metadata !{i32 260, i32 0, metadata !524, metadata !1158}
!1160 = metadata !{i32 261, i32 0, metadata !524, metadata !1158}
!1161 = metadata !{i32 262, i32 0, metadata !524, metadata !1158}
!1162 = metadata !{i32 264, i32 0, metadata !524, metadata !1158}
!1163 = metadata !{i32 312, i32 0, metadata !199, metadata !1164}
!1164 = metadata !{i32 32, i32 0, metadata !1150, null}
!1165 = metadata !{i32 313, i32 0, metadata !513, metadata !1164}
!1166 = metadata !{i32 314, i32 0, metadata !513, metadata !1164}
!1167 = metadata !{i32 315, i32 0, metadata !513, metadata !1164}
!1168 = metadata !{i32 316, i32 0, metadata !513, metadata !1164}
!1169 = metadata !{i32 368, i32 0, metadata !195, metadata !1170}
!1170 = metadata !{i32 34, i32 0, metadata !1150, null}
!1171 = metadata !{i32 369, i32 0, metadata !503, metadata !1170}
!1172 = metadata !{i32 370, i32 0, metadata !503, metadata !1170}
!1173 = metadata !{i32 372, i32 0, metadata !503, metadata !1170}
!1174 = metadata !{i32 36, i32 0, metadata !1150, null}
!1175 = metadata !{i32 518, i32 0, metadata !193, metadata !1176}
!1176 = metadata !{i32 38, i32 0, metadata !1150, null}
!1177 = metadata !{i32 520, i32 0, metadata !493, metadata !1176}
!1178 = metadata !{i32 521, i32 0, metadata !493, metadata !1176}
!1179 = metadata !{i32 522, i32 0, metadata !493, metadata !1176}
!1180 = metadata !{i32 524, i32 0, metadata !493, metadata !1176}
!1181 = metadata !{i32 563, i32 0, metadata !191, metadata !1182}
!1182 = metadata !{i32 40, i32 0, metadata !1150, null}
!1183 = metadata !{i32 565, i32 0, metadata !482, metadata !1182}
!1184 = metadata !{i32 566, i32 0, metadata !482, metadata !1182}
!1185 = metadata !{i32 567, i32 0, metadata !482, metadata !1182}
!1186 = metadata !{i32 568, i32 0, metadata !482, metadata !1182}
!1187 = metadata !{i32 44, i32 0, metadata !1150, null}
!1188 = metadata !{i32 662, i32 0, metadata !179, metadata !1187}
!1189 = metadata !{i32 681, i32 0, metadata !173, metadata !1190}
!1190 = metadata !{i32 664, i32 0, metadata !821, metadata !1187}
!1191 = metadata !{i32 683, i32 0, metadata !448, metadata !1190}
!1192 = metadata !{i32 684, i32 0, metadata !448, metadata !1190}
!1193 = metadata !{i32 686, i32 0, metadata !448, metadata !1190}
!1194 = metadata !{i32 687, i32 0, metadata !448, metadata !1190}
!1195 = metadata !{i32 689, i32 0, metadata !448, metadata !1190}
!1196 = metadata !{i32 690, i32 0, metadata !448, metadata !1190}
!1197 = metadata !{i32 691, i32 0, metadata !448, metadata !1190}
!1198 = metadata !{i32 692, i32 0, metadata !448, metadata !1190}
!1199 = metadata !{i32 693, i32 0, metadata !448, metadata !1190}
!1200 = metadata !{i32 694, i32 0, metadata !448, metadata !1190}
!1201 = metadata !{i32 695, i32 0, metadata !448, metadata !1190}
!1202 = metadata !{i32 697, i32 0, metadata !448, metadata !1190}
!1203 = metadata !{i32 46, i32 0, metadata !1150, null}
!1204 = metadata !{i32 671, i32 0, metadata !163, metadata !1203}
!1205 = metadata !{i32 705, i32 0, metadata !151, metadata !1206}
!1206 = metadata !{i32 673, i32 0, metadata !724, metadata !1203}
!1207 = metadata !{i32 707, i32 0, metadata !416, metadata !1206}
!1208 = metadata !{i32 708, i32 0, metadata !416, metadata !1206}
!1209 = metadata !{i32 716, i32 0, metadata !416, metadata !1206}
!1210 = metadata !{i32 717, i32 0, metadata !416, metadata !1206}
!1211 = metadata !{i32 719, i32 0, metadata !416, metadata !1206}
!1212 = metadata !{i32 720, i32 0, metadata !416, metadata !1206}
!1213 = metadata !{i32 721, i32 0, metadata !416, metadata !1206}
!1214 = metadata !{i32 722, i32 0, metadata !416, metadata !1206}
!1215 = metadata !{i32 723, i32 0, metadata !416, metadata !1206}
!1216 = metadata !{i32 724, i32 0, metadata !416, metadata !1206}
!1217 = metadata !{i32 725, i32 0, metadata !416, metadata !1206}
!1218 = metadata !{i32 727, i32 0, metadata !416, metadata !1206}
!1219 = metadata !{i32 48, i32 0, metadata !1150, null}
!1220 = metadata !{i32 681, i32 0, metadata !173, metadata !1219}
!1221 = metadata !{i32 683, i32 0, metadata !448, metadata !1219}
!1222 = metadata !{i32 684, i32 0, metadata !448, metadata !1219}
!1223 = metadata !{i32 686, i32 0, metadata !448, metadata !1219}
!1224 = metadata !{i32 687, i32 0, metadata !448, metadata !1219}
!1225 = metadata !{i32 689, i32 0, metadata !448, metadata !1219}
!1226 = metadata !{i32 690, i32 0, metadata !448, metadata !1219}
!1227 = metadata !{i32 691, i32 0, metadata !448, metadata !1219}
!1228 = metadata !{i32 692, i32 0, metadata !448, metadata !1219}
!1229 = metadata !{i32 693, i32 0, metadata !448, metadata !1219}
!1230 = metadata !{i32 694, i32 0, metadata !448, metadata !1219}
!1231 = metadata !{i32 695, i32 0, metadata !448, metadata !1219}
!1232 = metadata !{i32 697, i32 0, metadata !448, metadata !1219}
!1233 = metadata !{i32 51, i32 0, metadata !1150, null}
!1234 = metadata !{i32 705, i32 0, metadata !151, metadata !1233}
!1235 = metadata !{i32 707, i32 0, metadata !416, metadata !1233}
!1236 = metadata !{i32 708, i32 0, metadata !416, metadata !1233}
!1237 = metadata !{i32 711, i32 0, metadata !416, metadata !1233}
!1238 = metadata !{i32 712, i32 0, metadata !416, metadata !1233}
!1239 = metadata !{i32 713, i32 0, metadata !416, metadata !1233}
!1240 = metadata !{i32 716, i32 0, metadata !416, metadata !1233}
!1241 = metadata !{i32 717, i32 0, metadata !416, metadata !1233}
!1242 = metadata !{i32 719, i32 0, metadata !416, metadata !1233}
!1243 = metadata !{i32 720, i32 0, metadata !416, metadata !1233}
!1244 = metadata !{i32 721, i32 0, metadata !416, metadata !1233}
!1245 = metadata !{i32 722, i32 0, metadata !416, metadata !1233}
!1246 = metadata !{i32 723, i32 0, metadata !416, metadata !1233}
!1247 = metadata !{i32 724, i32 0, metadata !416, metadata !1233}
!1248 = metadata !{i32 725, i32 0, metadata !416, metadata !1233}
!1249 = metadata !{i32 727, i32 0, metadata !416, metadata !1233}
!1250 = metadata !{i32 729, i32 0, metadata !416, metadata !1233}
!1251 = metadata !{i32 609, i32 0, metadata !184, metadata !1252}
!1252 = metadata !{i32 54, i32 0, metadata !1150, null}
!1253 = metadata !{i32 610, i32 0, metadata !472, metadata !1252}
!1254 = metadata !{i32 611, i32 0, metadata !472, metadata !1252}
!1255 = metadata !{i32 612, i32 0, metadata !472, metadata !1252}
!1256 = metadata !{i32 56, i32 0, metadata !1150, null}
!1257 = metadata !{i32 57, i32 0, metadata !1150, null}
!1258 = metadata !{i32 59, i32 0, metadata !1150, null}
!1259 = metadata !{i32 60, i32 0, metadata !1150, null}
!1260 = metadata !{i32 62, i32 0, metadata !1150, null}
!1261 = metadata !{i32 64, i32 0, metadata !1150, null}
!1262 = metadata !{i32 66, i32 0, metadata !1150, null}
!1263 = metadata !{i32 67, i32 0, metadata !1150, null}
!1264 = metadata !{i32 68, i32 0, metadata !1150, null}
!1265 = metadata !{i32 270, i32 0, metadata !217, null}
!1266 = metadata !{i32 271, i32 0, metadata !564, null}
!1267 = metadata !{i32 272, i32 0, metadata !564, null}
!1268 = metadata !{i32 273, i32 0, metadata !564, null}
!1269 = metadata !{i32 274, i32 0, metadata !564, null}
!1270 = metadata !{i32 275, i32 0, metadata !564, null}
