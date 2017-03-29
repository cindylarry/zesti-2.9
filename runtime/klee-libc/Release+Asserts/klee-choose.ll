; ModuleID = 'klee-choose.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"klee_choose\00", align 1

define i64 @klee_choose(i64 %n) nounwind {
entry:
  %x = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{i64 %n}, i64 0, metadata !8), !dbg !11
  call void @llvm.dbg.declare(metadata !{i64* %x}, metadata !9), !dbg !12
  %x1 = bitcast i64* %x to i8*, !dbg !13
  call void @klee_make_symbolic(i8* %x1, i64 8, i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !13
  %0 = load i64* %x, align 8, !dbg !14
  %1 = icmp ult i64 %0, %n, !dbg !14
  br i1 %1, label %bb2, label %bb, !dbg !14

bb:                                               ; preds = %entry
  call void @klee_silent_exit(i32 0) noreturn nounwind, !dbg !15
  unreachable, !dbg !15

bb2:                                              ; preds = %entry
  ret i64 %0, !dbg !16
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @klee_make_symbolic(i8*, i64, i8*)

declare void @klee_silent_exit(i32) noreturn

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}
!llvm.dbg.lv.klee_choose = !{!8, !9}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_choose", metadata !"klee_choose", metadata !"klee_choose", metadata !1, i32 12, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i64)* @klee_choose} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"klee-choose.c", metadata !"/home/klee/zesti-2.9/runtime/klee-libc/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee-choose.c", metadata !"/home/klee/zesti-2.9/runtime/klee-libc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !5}
!5 = metadata !{i32 589846, metadata !6, metadata !"uintptr_t", metadata !6, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!6 = metadata !{i32 589865, metadata !"stdint.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!8 = metadata !{i32 590081, metadata !0, metadata !"n", metadata !1, i32 12, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!9 = metadata !{i32 590080, metadata !10, metadata !"x", metadata !1, i32 13, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!10 = metadata !{i32 589835, metadata !0, i32 12, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!11 = metadata !{i32 12, i32 0, metadata !0, null}
!12 = metadata !{i32 13, i32 0, metadata !10, null}
!13 = metadata !{i32 14, i32 0, metadata !10, null}
!14 = metadata !{i32 17, i32 0, metadata !10, null}
!15 = metadata !{i32 18, i32 0, metadata !10, null}
!16 = metadata !{i32 19, i32 0, metadata !10, null}
