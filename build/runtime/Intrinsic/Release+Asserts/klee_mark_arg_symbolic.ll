; ModuleID = '/home/klee/zesti-2.9/runtime/Intrinsic/klee_mark_arg_symbolic.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"argv\00", align 1

define void @klee_mark_arg_symbolic(i32 %argc, i8** nocapture %argv) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !15), !dbg !20
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !16), !dbg !20
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !17), !dbg !22
  %0 = icmp sgt i32 %argc, 1, !dbg !22
  br i1 %0, label %bb.lr.ph, label %return, !dbg !22

bb.lr.ph:                                         ; preds = %entry
  %tmp = add i32 %argc, -2
  %tmp4 = zext i32 %tmp to i64
  %tmp5 = add i64 %tmp4, 1
  br label %bb

bb:                                               ; preds = %my_strlen.exit, %bb.lr.ph
  %indvar = phi i64 [ 0, %bb.lr.ph ], [ %tmp6, %my_strlen.exit ]
  %tmp6 = add i64 %indvar, 1
  %scevgep = getelementptr i8** %argv, i64 %tmp6
  %1 = load i8** %scevgep, align 8, !dbg !23
  br label %bb.i, !dbg !24

bb.i:                                             ; preds = %bb.i, %bb
  %2 = phi i64 [ %indvar.next.i, %bb.i ], [ 0, %bb ]
  %scevgep.i = getelementptr i8* %1, i64 %2
  %3 = load i8* %scevgep.i, align 1, !dbg !25
  %4 = icmp eq i8 %3, 0, !dbg !25
  %indvar.next.i = add i64 %2, 1
  br i1 %4, label %my_strlen.exit, label %bb.i, !dbg !25

my_strlen.exit:                                   ; preds = %bb.i
  %i.0.i = trunc i64 %2 to i32
  %5 = add nsw i32 %i.0.i, 1, !dbg !26
  %6 = sext i32 %5 to i64, !dbg !26
  tail call void @klee_make_symbolic(i8* %1, i64 %6, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !26
  %7 = load i8** %scevgep, align 8, !dbg !27
  %8 = sext i32 %i.0.i to i64, !dbg !27
  %9 = getelementptr inbounds i8* %7, i64 %8, !dbg !27
  %10 = load i8* %9, align 1, !dbg !27
  %11 = icmp eq i8 %10, 0, !dbg !27
  %12 = zext i1 %11 to i64, !dbg !27
  tail call void @klee_assume(i64 %12) nounwind, !dbg !27
  %exitcond = icmp eq i64 %tmp6, %tmp5
  br i1 %exitcond, label %return, label %bb, !dbg !22

return:                                           ; preds = %my_strlen.exit, %entry
  ret void, !dbg !28
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @klee_make_symbolic(i8*, i64, i8*)

declare void @klee_assume(i64)

!llvm.dbg.sp = !{!0, !8}
!llvm.dbg.lv.my_strlen = !{!12, !13}
!llvm.dbg.lv.klee_mark_arg_symbolic = !{!15, !16, !17, !19}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"my_strlen", metadata !"my_strlen", metadata !"", metadata !1, i32 13, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"klee_mark_arg_symbolic.c", metadata !"/home/klee/zesti-2.9/runtime/Intrinsic", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_mark_arg_symbolic.c", metadata !"/home/klee/zesti-2.9/runtime/Intrinsic", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!8 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_mark_arg_symbolic", metadata !"klee_mark_arg_symbolic", metadata !"klee_mark_arg_symbolic", metadata !1, i32 19, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8**)* @klee_mark_arg_symbolic} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{null, metadata !5, metadata !11}
!11 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 590081, metadata !0, metadata !"s", metadata !1, i32 13, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 590080, metadata !14, metadata !"i", metadata !1, i32 14, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!14 = metadata !{i32 589835, metadata !0, i32 13, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!15 = metadata !{i32 590081, metadata !8, metadata !"argc", metadata !1, i32 19, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 590081, metadata !8, metadata !"argv", metadata !1, i32 19, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 590080, metadata !18, metadata !"i", metadata !1, i32 20, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!18 = metadata !{i32 589835, metadata !8, i32 19, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 590080, metadata !18, metadata !"len", metadata !1, i32 20, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!20 = metadata !{i32 19, i32 0, metadata !8, null}
!21 = metadata !{i32 1}
!22 = metadata !{i32 21, i32 0, metadata !18, null}
!23 = metadata !{i32 22, i32 0, metadata !18, null}
!24 = metadata !{i32 14, i32 0, metadata !14, metadata !23}
!25 = metadata !{i32 15, i32 0, metadata !14, metadata !23}
!26 = metadata !{i32 23, i32 0, metadata !18, null}
!27 = metadata !{i32 24, i32 0, metadata !18, null}
!28 = metadata !{i32 26, i32 0, metadata !18, null}
