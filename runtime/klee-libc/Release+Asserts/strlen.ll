; ModuleID = 'strlen.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i64 @strlen(i8* %str) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !11), !dbg !14
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !12), !dbg !15
  %0 = load i8* %str, align 1, !dbg !16
  %1 = icmp eq i8 %0, 0, !dbg !16
  br i1 %1, label %bb2, label %bb, !dbg !16

bb:                                               ; preds = %entry, %bb
  %indvar = phi i64 [ %tmp, %bb ], [ 0, %entry ]
  %tmp = add i64 %indvar, 1
  %scevgep = getelementptr i8* %str, i64 %tmp
  %2 = load i8* %scevgep, align 1, !dbg !16
  %3 = icmp eq i8 %2, 0, !dbg !16
  br i1 %3, label %bb2, label %bb, !dbg !16

bb2:                                              ; preds = %bb, %entry
  %s.0.lcssa = phi i8* [ %str, %entry ], [ %scevgep, %bb ]
  %4 = ptrtoint i8* %s.0.lcssa to i64, !dbg !17
  %5 = ptrtoint i8* %str to i64, !dbg !17
  %6 = sub nsw i64 %4, %5, !dbg !17
  ret i64 %6, !dbg !17
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}
!llvm.dbg.lv.strlen = !{!11, !12}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"strlen", metadata !"strlen", metadata !"strlen", metadata !1, i32 12, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*)* @strlen} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"strlen.c", metadata !"/home/klee/zesti-2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"strlen.c", metadata !"/home/klee/zesti-2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !8}
!5 = metadata !{i32 589846, metadata !6, metadata !"size_t", metadata !6, i32 28, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!6 = metadata !{i32 589865, metadata !"xlocale.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!8 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!10 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 590081, metadata !0, metadata !"str", metadata !1, i32 12, metadata !8, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 590080, metadata !13, metadata !"s", metadata !1, i32 13, metadata !8, i32 0} ; [ DW_TAG_auto_variable ]
!13 = metadata !{i32 589835, metadata !0, i32 12, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!14 = metadata !{i32 12, i32 0, metadata !0, null}
!15 = metadata !{i32 13, i32 0, metadata !13, null}
!16 = metadata !{i32 14, i32 0, metadata !13, null}
!17 = metadata !{i32 16, i32 0, metadata !13, null}
