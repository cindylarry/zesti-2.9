; ModuleID = '/home/klee/zesti-2.9/runtime/POSIX/fd_64.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.__fsid_t = type { [2 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.timespec = type { i64, i64 }

@__getdents64 = alias i32 (i32, %struct.dirent*, i32)* @getdents64

define i32 @"\01open64"(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !149), !dbg !169
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !150), !dbg !169
  call void @llvm.dbg.value(metadata !170, i64 0, metadata !151), !dbg !171
  %0 = and i32 %flags, 64, !dbg !172
  %1 = icmp eq i32 %0, 0, !dbg !172
  br i1 %1, label %bb8, label %bb, !dbg !172

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !154), !dbg !173
  %ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !174
  call void @llvm.va_start(i8* %ap12), !dbg !174
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !175
  %3 = load i32* %2, align 8, !dbg !175
  %4 = icmp ugt i32 %3, 47, !dbg !175
  br i1 %4, label %bb4, label %bb3, !dbg !175

bb3:                                              ; preds = %bb
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !175
  %6 = load i8** %5, align 8, !dbg !175
  %tmp = zext i32 %3 to i64
  %7 = ptrtoint i8* %6 to i64, !dbg !175
  %8 = add i64 %7, %tmp, !dbg !175
  %9 = inttoptr i64 %8 to i8*, !dbg !175
  %10 = add i32 %3, 8, !dbg !175
  store i32 %10, i32* %2, align 8, !dbg !175
  br label %bb5, !dbg !175

bb4:                                              ; preds = %bb
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !175
  %12 = load i8** %11, align 8, !dbg !175
  %13 = getelementptr inbounds i8* %12, i64 8, !dbg !175
  store i8* %13, i8** %11, align 8, !dbg !175
  br label %bb5, !dbg !175

bb5:                                              ; preds = %bb4, %bb3
  %addr.27.0 = phi i8* [ %12, %bb4 ], [ %9, %bb3 ]
  %14 = bitcast i8* %addr.27.0 to i32*, !dbg !175
  %15 = load i32* %14, align 4, !dbg !175
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !151), !dbg !175
  call void @llvm.va_end(i8* %ap12), !dbg !176
  br label %bb8, !dbg !176

bb8:                                              ; preds = %entry, %bb5
  %mode.0 = phi i32 [ %15, %bb5 ], [ 0, %entry ]
  %16 = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) nounwind, !dbg !177
  ret i32 %16, !dbg !177
}

define i32 @getdents64(i32 %fd, %struct.dirent* %dirp, i32 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !124), !dbg !178
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %dirp}, i64 0, metadata !125), !dbg !178
  tail call void @llvm.dbg.value(metadata !{i32 %count}, i64 0, metadata !126), !dbg !178
  %0 = tail call i32 @__fd_getdents(i32 %fd, %struct.dirent* %dirp, i32 %count) nounwind, !dbg !179
  ret i32 %0, !dbg !179
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @__fd_getdents(i32, %struct.dirent*, i32)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i32 @"\01statfs64"(i8* %path, %struct.statfs* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !127), !dbg !181
  tail call void @llvm.dbg.value(metadata !{%struct.statfs* %buf}, i64 0, metadata !128), !dbg !181
  %0 = tail call i32 @__fd_statfs(i8* %path, %struct.statfs* %buf) nounwind, !dbg !182
  ret i32 %0, !dbg !182
}

declare i32 @__fd_statfs(i8*, %struct.statfs*)

define i32 @ftruncate64(i32 %fd, i64 %length) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !129), !dbg !184
  tail call void @llvm.dbg.value(metadata !{i64 %length}, i64 0, metadata !130), !dbg !184
  %0 = tail call i32 @__fd_ftruncate(i32 %fd, i64 %length) nounwind, !dbg !185
  ret i32 %0, !dbg !185
}

declare i32 @__fd_ftruncate(i32, i64)

define i32 @"\01fstat64"(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !131), !dbg !187
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !132), !dbg !187
  %0 = tail call i32 @__fd_fstat(i32 %fd, %struct.stat* %buf) nounwind, !dbg !188
  ret i32 %0, !dbg !188
}

declare i32 @__fd_fstat(i32, %struct.stat*)

define i32 @"\01__fxstat64"(i32 %vers, i32 %fd, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !133), !dbg !190
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !134), !dbg !190
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !135), !dbg !190
  %0 = tail call i32 @__fd_fstat(i32 %fd, %struct.stat* %buf) nounwind, !dbg !191
  ret i32 %0, !dbg !191
}

define i32 @"\01lstat64"(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !136), !dbg !193
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !137), !dbg !193
  %0 = tail call i32 @__fd_lstat(i8* %path, %struct.stat* %buf) nounwind, !dbg !194
  ret i32 %0, !dbg !194
}

declare i32 @__fd_lstat(i8*, %struct.stat*)

define i32 @"\01__lxstat64"(i32 %vers, i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !138), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !139), !dbg !196
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !140), !dbg !196
  %0 = tail call i32 @__fd_lstat(i8* %path, %struct.stat* %buf) nounwind, !dbg !197
  ret i32 %0, !dbg !197
}

define i32 @"\01stat64"(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !141), !dbg !199
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !142), !dbg !199
  %0 = tail call i32 @__fd_stat(i8* %path, %struct.stat* %buf) nounwind, !dbg !200
  ret i32 %0, !dbg !200
}

declare i32 @__fd_stat(i8*, %struct.stat*)

define i32 @"\01__xstat64"(i32 %vers, i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !143), !dbg !202
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !144), !dbg !202
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !145), !dbg !202
  %0 = tail call i32 @__fd_stat(i8* %path, %struct.stat* %buf) nounwind, !dbg !203
  ret i32 %0, !dbg !203
}

define i64 @"\01lseek64"(i32 %fd, i64 %offset, i32 %whence) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !146), !dbg !205
  tail call void @llvm.dbg.value(metadata !{i64 %offset}, i64 0, metadata !147), !dbg !205
  tail call void @llvm.dbg.value(metadata !{i32 %whence}, i64 0, metadata !148), !dbg !205
  %0 = tail call i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) nounwind, !dbg !206
  ret i64 %0, !dbg !206
}

declare i64 @__fd_lseek(i32, i64, i32)

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare i32 @__fd_open(i8*, i32, i32)

!llvm.dbg.sp = !{!0, !27, !61, !66, !107, !110, !113, !116, !117, !118, !121}
!llvm.dbg.lv.getdents64 = !{!124, !125, !126}
!llvm.dbg.lv.statfs64 = !{!127, !128}
!llvm.dbg.lv.ftruncate64 = !{!129, !130}
!llvm.dbg.lv.fstat64 = !{!131, !132}
!llvm.dbg.lv.__fxstat64 = !{!133, !134, !135}
!llvm.dbg.lv.lstat64 = !{!136, !137}
!llvm.dbg.lv.__lxstat64 = !{!138, !139, !140}
!llvm.dbg.lv.stat64 = !{!141, !142}
!llvm.dbg.lv.__xstat64 = !{!143, !144, !145}
!llvm.dbg.lv.lseek64 = !{!146, !147, !148}
!llvm.dbg.lv.open64 = !{!149, !150, !151, !154}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getdents64", metadata !"getdents64", metadata !"getdents64", metadata !1, i32 86, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent*, i32)* @getdents64} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd_64.c", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd_64.c", metadata !"/home/klee/zesti-2.9/runtime/POSIX", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6, metadata !7, metadata !6}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 589843, metadata !1, metadata !"dirent", metadata !9, i32 23, i64 2240, i64 64, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_structure_type ]
!9 = metadata !{i32 589865, metadata !"dirent.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!10 = metadata !{metadata !11, metadata !15, metadata !18, metadata !20, metadata !22}
!11 = metadata !{i32 589837, metadata !8, metadata !"d_ino", metadata !9, i32 28, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ]
!12 = metadata !{i32 589846, metadata !13, metadata !"__ino64_t", metadata !13, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 589837, metadata !8, metadata !"d_off", metadata !9, i32 29, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 589846, metadata !13, metadata !"__off64_t", metadata !13, i32 133, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 589837, metadata !8, metadata !"d_reclen", metadata !9, i32 31, i64 16, i64 16, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ]
!19 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 589837, metadata !8, metadata !"d_type", metadata !9, i32 32, i64 8, i64 8, i64 144, i32 0, metadata !21} ; [ DW_TAG_member ]
!21 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 589837, metadata !8, metadata !"d_name", metadata !9, i32 33, i64 2048, i64 8, i64 152, i32 0, metadata !23} ; [ DW_TAG_member ]
!23 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !24, metadata !25, i32 0, null} ; [ DW_TAG_array_type ]
!24 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 589857, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!27 = metadata !{i32 589870, i32 0, metadata !1, metadata !"statfs", metadata !"statfs", metadata !"\01statfs64", metadata !1, i32 82, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @"\01statfs64"} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{metadata !5, metadata !30, metadata !32}
!30 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ]
!32 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 589843, metadata !1, metadata !"statfs", metadata !34, i32 25, i64 960, i64 64, i64 0, i32 0, null, metadata !35, i32 0, null} ; [ DW_TAG_structure_type ]
!34 = metadata !{i32 589865, metadata !"statfs.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!35 = metadata !{metadata !36, metadata !38, metadata !39, metadata !41, metadata !42, metadata !43, metadata !45, metadata !46, metadata !54, metadata !55, metadata !56, metadata !57}
!36 = metadata !{i32 589837, metadata !33, metadata !"f_type", metadata !34, i32 26, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ]
!37 = metadata !{i32 589846, metadata !13, metadata !"__fsword_t", metadata !13, i32 172, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!38 = metadata !{i32 589837, metadata !33, metadata !"f_bsize", metadata !34, i32 27, i64 64, i64 64, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ]
!39 = metadata !{i32 589837, metadata !33, metadata !"f_blocks", metadata !34, i32 35, i64 64, i64 64, i64 128, i32 0, metadata !40} ; [ DW_TAG_member ]
!40 = metadata !{i32 589846, metadata !13, metadata !"__fsblkcnt64_t", metadata !13, i32 166, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!41 = metadata !{i32 589837, metadata !33, metadata !"f_bfree", metadata !34, i32 36, i64 64, i64 64, i64 192, i32 0, metadata !40} ; [ DW_TAG_member ]
!42 = metadata !{i32 589837, metadata !33, metadata !"f_bavail", metadata !34, i32 37, i64 64, i64 64, i64 256, i32 0, metadata !40} ; [ DW_TAG_member ]
!43 = metadata !{i32 589837, metadata !33, metadata !"f_files", metadata !34, i32 38, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ]
!44 = metadata !{i32 589846, metadata !13, metadata !"__fsfilcnt64_t", metadata !13, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!45 = metadata !{i32 589837, metadata !33, metadata !"f_ffree", metadata !34, i32 39, i64 64, i64 64, i64 384, i32 0, metadata !44} ; [ DW_TAG_member ]
!46 = metadata !{i32 589837, metadata !33, metadata !"f_fsid", metadata !34, i32 41, i64 64, i64 32, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ]
!47 = metadata !{i32 589846, metadata !13, metadata !"__fsid_t", metadata !13, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ]
!48 = metadata !{i32 589843, metadata !1, metadata !"", metadata !13, i32 134, i64 64, i64 32, i64 0, i32 0, null, metadata !49, i32 0, null} ; [ DW_TAG_structure_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 589837, metadata !48, metadata !"__val", metadata !13, i32 134, i64 64, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ]
!51 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !5, metadata !52, i32 0, null} ; [ DW_TAG_array_type ]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 589857, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 589837, metadata !33, metadata !"f_namelen", metadata !34, i32 42, i64 64, i64 64, i64 512, i32 0, metadata !37} ; [ DW_TAG_member ]
!55 = metadata !{i32 589837, metadata !33, metadata !"f_frsize", metadata !34, i32 43, i64 64, i64 64, i64 576, i32 0, metadata !37} ; [ DW_TAG_member ]
!56 = metadata !{i32 589837, metadata !33, metadata !"f_flags", metadata !34, i32 44, i64 64, i64 64, i64 640, i32 0, metadata !37} ; [ DW_TAG_member ]
!57 = metadata !{i32 589837, metadata !33, metadata !"f_spare", metadata !34, i32 45, i64 256, i64 64, i64 704, i32 0, metadata !58} ; [ DW_TAG_member ]
!58 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 64, i64 0, i32 0, metadata !37, metadata !59, i32 0, null} ; [ DW_TAG_array_type ]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 589857, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!61 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ftruncate64", metadata !"ftruncate64", metadata !"ftruncate64", metadata !1, i32 77, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @ftruncate64} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, null} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{metadata !5, metadata !5, metadata !64}
!64 = metadata !{i32 589846, metadata !65, metadata !"off64_t", metadata !65, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/sys", metadata !2} ; [ DW_TAG_file_type ]
!66 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat", metadata !"fstat", metadata !"\01fstat64", metadata !1, i32 73, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @"\01fstat64"} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, null} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{metadata !5, metadata !5, metadata !69}
!69 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 589843, metadata !1, metadata !"stat", metadata !71, i32 47, i64 1152, i64 64, i64 0, i32 0, null, metadata !72, i32 0, null} ; [ DW_TAG_structure_type ]
!71 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/bits", metadata !2} ; [ DW_TAG_file_type ]
!72 = metadata !{metadata !73, metadata !75, metadata !77, metadata !79, metadata !81, metadata !83, metadata !85, metadata !86, metadata !87, metadata !89, metadata !91, metadata !93, metadata !101, metadata !102, metadata !103}
!73 = metadata !{i32 589837, metadata !70, metadata !"st_dev", metadata !71, i32 48, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ]
!74 = metadata !{i32 589846, metadata !13, metadata !"__dev_t", metadata !13, i32 125, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!75 = metadata !{i32 589837, metadata !70, metadata !"st_ino", metadata !71, i32 53, i64 64, i64 64, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ]
!76 = metadata !{i32 589846, metadata !13, metadata !"__ino_t", metadata !13, i32 128, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!77 = metadata !{i32 589837, metadata !70, metadata !"st_nlink", metadata !71, i32 61, i64 64, i64 64, i64 128, i32 0, metadata !78} ; [ DW_TAG_member ]
!78 = metadata !{i32 589846, metadata !13, metadata !"__nlink_t", metadata !13, i32 131, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!79 = metadata !{i32 589837, metadata !70, metadata !"st_mode", metadata !71, i32 62, i64 32, i64 32, i64 192, i32 0, metadata !80} ; [ DW_TAG_member ]
!80 = metadata !{i32 589846, metadata !13, metadata !"__mode_t", metadata !13, i32 130, i64 0, i64 0, i64 0, i32 0, metadata !6} ; [ DW_TAG_typedef ]
!81 = metadata !{i32 589837, metadata !70, metadata !"st_uid", metadata !71, i32 64, i64 32, i64 32, i64 224, i32 0, metadata !82} ; [ DW_TAG_member ]
!82 = metadata !{i32 589846, metadata !13, metadata !"__uid_t", metadata !13, i32 126, i64 0, i64 0, i64 0, i32 0, metadata !6} ; [ DW_TAG_typedef ]
!83 = metadata !{i32 589837, metadata !70, metadata !"st_gid", metadata !71, i32 65, i64 32, i64 32, i64 256, i32 0, metadata !84} ; [ DW_TAG_member ]
!84 = metadata !{i32 589846, metadata !13, metadata !"__gid_t", metadata !13, i32 127, i64 0, i64 0, i64 0, i32 0, metadata !6} ; [ DW_TAG_typedef ]
!85 = metadata !{i32 589837, metadata !70, metadata !"__pad0", metadata !71, i32 67, i64 32, i64 32, i64 288, i32 0, metadata !5} ; [ DW_TAG_member ]
!86 = metadata !{i32 589837, metadata !70, metadata !"st_rdev", metadata !71, i32 69, i64 64, i64 64, i64 320, i32 0, metadata !74} ; [ DW_TAG_member ]
!87 = metadata !{i32 589837, metadata !70, metadata !"st_size", metadata !71, i32 74, i64 64, i64 64, i64 384, i32 0, metadata !88} ; [ DW_TAG_member ]
!88 = metadata !{i32 589846, metadata !13, metadata !"__off_t", metadata !13, i32 132, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!89 = metadata !{i32 589837, metadata !70, metadata !"st_blksize", metadata !71, i32 78, i64 64, i64 64, i64 448, i32 0, metadata !90} ; [ DW_TAG_member ]
!90 = metadata !{i32 589846, metadata !13, metadata !"__blksize_t", metadata !13, i32 158, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!91 = metadata !{i32 589837, metadata !70, metadata !"st_blocks", metadata !71, i32 80, i64 64, i64 64, i64 512, i32 0, metadata !92} ; [ DW_TAG_member ]
!92 = metadata !{i32 589846, metadata !13, metadata !"__blkcnt_t", metadata !13, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!93 = metadata !{i32 589837, metadata !70, metadata !"st_atim", metadata !71, i32 91, i64 128, i64 64, i64 576, i32 0, metadata !94} ; [ DW_TAG_member ]
!94 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !95, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !96, i32 0, null} ; [ DW_TAG_structure_type ]
!95 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!96 = metadata !{metadata !97, metadata !99}
!97 = metadata !{i32 589837, metadata !94, metadata !"tv_sec", metadata !95, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_member ]
!98 = metadata !{i32 589846, metadata !13, metadata !"__time_t", metadata !13, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!99 = metadata !{i32 589837, metadata !94, metadata !"tv_nsec", metadata !95, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !100} ; [ DW_TAG_member ]
!100 = metadata !{i32 589846, metadata !13, metadata !"__syscall_slong_t", metadata !13, i32 177, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!101 = metadata !{i32 589837, metadata !70, metadata !"st_mtim", metadata !71, i32 92, i64 128, i64 64, i64 704, i32 0, metadata !94} ; [ DW_TAG_member ]
!102 = metadata !{i32 589837, metadata !70, metadata !"st_ctim", metadata !71, i32 93, i64 128, i64 64, i64 832, i32 0, metadata !94} ; [ DW_TAG_member ]
!103 = metadata !{i32 589837, metadata !70, metadata !"__glibc_reserved", metadata !71, i32 106, i64 192, i64 64, i64 960, i32 0, metadata !104} ; [ DW_TAG_member ]
!104 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !100, metadata !105, i32 0, null} ; [ DW_TAG_array_type ]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 589857, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!107 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fxstat", metadata !"__fxstat", metadata !"\01__fxstat64", metadata !1, i32 69, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.stat*)* @"\01__fxstat64"} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{metadata !5, metadata !5, metadata !5, metadata !69}
!110 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat", metadata !"lstat", metadata !"\01lstat64", metadata !1, i32 65, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @"\01lstat64"} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, null} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !5, metadata !30, metadata !69}
!113 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__lxstat", metadata !"__lxstat", metadata !"\01__lxstat64", metadata !1, i32 61, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @"\01__lxstat64"} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, null} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !5, metadata !5, metadata !30, metadata !69}
!116 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat", metadata !"stat", metadata !"\01stat64", metadata !1, i32 57, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @"\01stat64"} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__xstat", metadata !"__xstat", metadata !"\01__xstat64", metadata !1, i32 53, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @"\01__xstat64"} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek", metadata !"lseek", metadata !"\01lseek64", metadata !1, i32 49, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @"\01lseek64"} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, null} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{metadata !64, metadata !5, metadata !64, metadata !5}
!121 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open", metadata !"open", metadata !"\01open64", metadata !1, i32 35, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @"\01open64"} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, null} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{metadata !5, metadata !30, metadata !5}
!124 = metadata !{i32 590081, metadata !0, metadata !"fd", metadata !1, i32 86, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 590081, metadata !0, metadata !"dirp", metadata !1, i32 86, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 590081, metadata !0, metadata !"count", metadata !1, i32 86, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 590081, metadata !27, metadata !"path", metadata !1, i32 82, metadata !30, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 590081, metadata !27, metadata !"buf", metadata !1, i32 82, metadata !32, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 590081, metadata !61, metadata !"fd", metadata !1, i32 77, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 590081, metadata !61, metadata !"length", metadata !1, i32 77, metadata !64, i32 0} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 590081, metadata !66, metadata !"fd", metadata !1, i32 73, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 590081, metadata !66, metadata !"buf", metadata !1, i32 73, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 590081, metadata !107, metadata !"vers", metadata !1, i32 69, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 590081, metadata !107, metadata !"fd", metadata !1, i32 69, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 590081, metadata !107, metadata !"buf", metadata !1, i32 69, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 590081, metadata !110, metadata !"path", metadata !1, i32 65, metadata !30, i32 0} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 590081, metadata !110, metadata !"buf", metadata !1, i32 65, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 590081, metadata !113, metadata !"vers", metadata !1, i32 61, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 590081, metadata !113, metadata !"path", metadata !1, i32 61, metadata !30, i32 0} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 590081, metadata !113, metadata !"buf", metadata !1, i32 61, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!141 = metadata !{i32 590081, metadata !116, metadata !"path", metadata !1, i32 57, metadata !30, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 590081, metadata !116, metadata !"buf", metadata !1, i32 57, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 590081, metadata !117, metadata !"vers", metadata !1, i32 53, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 590081, metadata !117, metadata !"path", metadata !1, i32 53, metadata !30, i32 0} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 590081, metadata !117, metadata !"buf", metadata !1, i32 53, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 590081, metadata !118, metadata !"fd", metadata !1, i32 49, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 590081, metadata !118, metadata !"offset", metadata !1, i32 49, metadata !64, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 590081, metadata !118, metadata !"whence", metadata !1, i32 49, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 590081, metadata !121, metadata !"pathname", metadata !1, i32 35, metadata !30, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 590081, metadata !121, metadata !"flags", metadata !1, i32 35, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 590080, metadata !152, metadata !"mode", metadata !1, i32 36, metadata !153, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 589835, metadata !121, i32 35, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 589846, metadata !65, metadata !"mode_t", metadata !65, i32 75, i64 0, i64 0, i64 0, i32 0, metadata !6} ; [ DW_TAG_typedef ]
!154 = metadata !{i32 590080, metadata !155, metadata !"ap", metadata !1, i32 40, metadata !156, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 589835, metadata !152, i32 41, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 589846, metadata !157, metadata !"va_list", metadata !157, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ]
!157 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!158 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !159, metadata !167, i32 0, null} ; [ DW_TAG_array_type ]
!159 = metadata !{i32 589843, metadata !1, metadata !"__va_list_tag", metadata !160, i32 0, i64 192, i64 64, i64 0, i32 0, null, metadata !161, i32 0, null} ; [ DW_TAG_structure_type ]
!160 = metadata !{i32 589865, metadata !"<built-in>", metadata !"/home/klee/zesti-2.9/build/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !166}
!162 = metadata !{i32 589837, metadata !159, metadata !"gp_offset", metadata !160, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !6} ; [ DW_TAG_member ]
!163 = metadata !{i32 589837, metadata !159, metadata !"fp_offset", metadata !160, i32 0, i64 32, i64 32, i64 32, i32 0, metadata !6} ; [ DW_TAG_member ]
!164 = metadata !{i32 589837, metadata !159, metadata !"overflow_arg_area", metadata !160, i32 0, i64 64, i64 64, i64 64, i32 0, metadata !165} ; [ DW_TAG_member ]
!165 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!166 = metadata !{i32 589837, metadata !159, metadata !"reg_save_area", metadata !160, i32 0, i64 64, i64 64, i64 128, i32 0, metadata !165} ; [ DW_TAG_member ]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!169 = metadata !{i32 35, i32 0, metadata !121, null}
!170 = metadata !{i32 0}
!171 = metadata !{i32 36, i32 0, metadata !152, null}
!172 = metadata !{i32 38, i32 0, metadata !152, null}
!173 = metadata !{i32 40, i32 0, metadata !155, null}
!174 = metadata !{i32 41, i32 0, metadata !155, null}
!175 = metadata !{i32 42, i32 0, metadata !155, null}
!176 = metadata !{i32 43, i32 0, metadata !155, null}
!177 = metadata !{i32 46, i32 0, metadata !152, null}
!178 = metadata !{i32 86, i32 0, metadata !0, null}
!179 = metadata !{i32 87, i32 0, metadata !180, null}
!180 = metadata !{i32 589835, metadata !0, i32 86, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 82, i32 0, metadata !27, null}
!182 = metadata !{i32 83, i32 0, metadata !183, null}
!183 = metadata !{i32 589835, metadata !27, i32 82, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 77, i32 0, metadata !61, null}
!185 = metadata !{i32 78, i32 0, metadata !186, null}
!186 = metadata !{i32 589835, metadata !61, i32 77, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 73, i32 0, metadata !66, null}
!188 = metadata !{i32 74, i32 0, metadata !189, null}
!189 = metadata !{i32 589835, metadata !66, i32 73, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 69, i32 0, metadata !107, null}
!191 = metadata !{i32 70, i32 0, metadata !192, null}
!192 = metadata !{i32 589835, metadata !107, i32 69, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 65, i32 0, metadata !110, null}
!194 = metadata !{i32 66, i32 0, metadata !195, null}
!195 = metadata !{i32 589835, metadata !110, i32 65, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 61, i32 0, metadata !113, null}
!197 = metadata !{i32 62, i32 0, metadata !198, null}
!198 = metadata !{i32 589835, metadata !113, i32 61, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 57, i32 0, metadata !116, null}
!200 = metadata !{i32 58, i32 0, metadata !201, null}
!201 = metadata !{i32 589835, metadata !116, i32 57, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 53, i32 0, metadata !117, null}
!203 = metadata !{i32 54, i32 0, metadata !204, null}
!204 = metadata !{i32 589835, metadata !117, i32 53, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 49, i32 0, metadata !118, null}
!206 = metadata !{i32 50, i32 0, metadata !207, null}
!207 = metadata !{i32 589835, metadata !118, i32 49, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
