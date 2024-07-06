; ModuleID = 'test.cc'
source_filename = "test.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Buffer = type <{ ptr, i32, [4 x i8] }>

$asan.module_ctor = comdat any

$asan.module_dtor = comdat any

$str.ede155a1b0c04c423a290d881e5f0b48 = comdat any

$str.2.ede155a1b0c04c423a290d881e5f0b48 = comdat any

@str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data does not start with A\00", [37 x i8] zeroinitializer }, comdat($str.ede155a1b0c04c423a290d881e5f0b48), align 32
@str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data starts with A\00", [45 x i8] zeroinitializer }, comdat($str.2.ede155a1b0c04c423a290d881e5f0b48), align 32
@___asan_gen_ = private constant [8 x i8] c"test.cc\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"str.2\00", align 1
@__asan_global_str = private global { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @0 to i64), i64 27, i64 64, i64 ptrtoint (ptr @___asan_gen_.3 to i64), i64 ptrtoint (ptr @___asan_gen_ to i64), i64 0, i64 0, i64 -1 }, section "asan_globals", comdat($str.ede155a1b0c04c423a290d881e5f0b48), !associated !0
@__asan_global_str.2 = private global { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @1 to i64), i64 19, i64 64, i64 ptrtoint (ptr @___asan_gen_.4 to i64), i64 ptrtoint (ptr @___asan_gen_ to i64), i64 0, i64 0, i64 -1 }, section "asan_globals", comdat($str.2.ede155a1b0c04c423a290d881e5f0b48), !associated !1
@llvm.compiler.used = appending global [4 x ptr] [ptr @str, ptr @str.2, ptr @__asan_global_str, ptr @__asan_global_str.2], section "llvm.metadata"
@___asan_globals_registered = common hidden global i64 0
@__start_asan_globals = extern_weak hidden global i64
@__stop_asan_globals = extern_weak hidden global i64
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr @asan.module_ctor }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr @asan.module_dtor }]

@0 = private alias { [27 x i8], [37 x i8] }, ptr @str
@1 = private alias { [19 x i8], [45 x i8] }, ptr @str.2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sanitize_address willreturn memory(none) uwtable
define dso_local void @_Z9read_dataPci(ptr nocapture noundef %str, i32 noundef %size) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sanitize_address willreturn memory(none) uwtable
define dso_local noundef i32 @_Z9read_sizev() local_unnamed_addr #0 {
entry:
  ret i32 12
}

; Function Attrs: mustprogress sanitize_address uwtable
define dso_local void @_Z3fooR6Buffer(ptr nocapture noundef nonnull align 8 dereferenceable(12) %buf) local_unnamed_addr #1 {
entry:
  %len.i = getelementptr inbounds %class.Buffer, ptr %buf, i64 0, i32 1
  %0 = ptrtoint ptr %len.i to i64
  %1 = lshr i64 %0, 3
  %2 = add i64 %1, 2147450880
  %3 = inttoptr i64 %2 to ptr
  %4 = load i8, ptr %3, align 1
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %6, label %12, !prof !8

6:                                                ; preds = %entry
  %7 = and i64 %0, 7
  %8 = add i64 %7, 3
  %9 = trunc i64 %8 to i8
  %10 = icmp sge i8 %9, %4
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @__asan_report_load4(i64 %0) #8
  unreachable

12:                                               ; preds = %6, %entry
  %13 = load i32, ptr %len.i, align 8, !tbaa !9
  %cmp.i = icmp slt i32 %13, 12
  br i1 %cmp.i, label %if.then.i, label %_ZN6Buffer5writeEPKci.exit

if.then.i:                                        ; preds = %12
  %14 = ptrtoint ptr %buf to i64
  %15 = lshr i64 %14, 3
  %16 = add i64 %15, 2147450880
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %if.then.i
  call void @__asan_report_load8(i64 %14) #8
  unreachable

21:                                               ; preds = %if.then.i
  %22 = load ptr, ptr %buf, align 8, !tbaa !15
  %isnull.i = icmp eq ptr %22, null
  br i1 %isnull.i, label %delete.end.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %21
  tail call void @_ZdaPv(ptr noundef %22) #9
  br label %delete.end.i

delete.end.i:                                     ; preds = %delete.notnull.i, %21
  %call.i = tail call noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #10
  %23 = ptrtoint ptr %buf to i64
  %24 = lshr i64 %23, 3
  %25 = add i64 %24, 2147450880
  %26 = inttoptr i64 %25 to ptr
  %27 = load i8, ptr %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %delete.end.i
  call void @__asan_report_store8(i64 %23) #8
  unreachable

30:                                               ; preds = %delete.end.i
  store ptr %call.i, ptr %buf, align 8, !tbaa !15
  %31 = ptrtoint ptr %len.i to i64
  %32 = lshr i64 %31, 3
  %33 = add i64 %32, 2147450880
  %34 = inttoptr i64 %33 to ptr
  %35 = load i8, ptr %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %43, !prof !8

37:                                               ; preds = %30
  %38 = and i64 %31, 7
  %39 = add i64 %38, 3
  %40 = trunc i64 %39 to i8
  %41 = icmp sge i8 %40, %35
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  call void @__asan_report_store4(i64 %31) #8
  unreachable

43:                                               ; preds = %37, %30
  store i32 12, ptr %len.i, align 8, !tbaa !9
  br label %_ZN6Buffer5writeEPKci.exit

_ZN6Buffer5writeEPKci.exit:                       ; preds = %12, %43
  ret void
}

; Function Attrs: sanitize_address uwtable
define dso_local void @_Z3barv() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
entry:
  %call.i = tail call noundef nonnull dereferenceable(100) ptr @_Znam(i64 noundef 100) #10
  %0 = ptrtoint ptr %call.i to i64
  %1 = lshr i64 %0, 3
  %2 = add i64 %1, 2147450880
  %3 = inttoptr i64 %2 to ptr
  %4 = load i8, ptr %3, align 1
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %6, label %11, !prof !8

6:                                                ; preds = %entry
  %7 = and i64 %0, 7
  %8 = trunc i64 %7 to i8
  %9 = icmp sge i8 %8, %4
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @__asan_report_load1(i64 %0) #8
  unreachable

11:                                               ; preds = %6, %entry
  %12 = load i8, ptr %call.i, align 1, !tbaa !16
  %cmp = icmp eq i8 %12, 65
  %str.2.str = select i1 %cmp, ptr @str.2, ptr @str
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.str)
  tail call void @_ZdaPv(ptr noundef %call.i) #9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: norecurse sanitize_address uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
entry:
  %call.i.i = tail call noundef nonnull dereferenceable(100) ptr @_Znam(i64 noundef 100) #10
  %0 = ptrtoint ptr %call.i.i to i64
  %1 = lshr i64 %0, 3
  %2 = add i64 %1, 2147450880
  %3 = inttoptr i64 %2 to ptr
  %4 = load i8, ptr %3, align 1
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %6, label %11, !prof !8

6:                                                ; preds = %entry
  %7 = and i64 %0, 7
  %8 = trunc i64 %7 to i8
  %9 = icmp sge i8 %8, %4
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @__asan_report_load1(i64 %0) #8
  unreachable

11:                                               ; preds = %6, %entry
  %12 = load i8, ptr %call.i.i, align 1, !tbaa !16
  %cmp.i = icmp eq i8 %12, 65
  %str.2.str = select i1 %cmp.i, ptr @str.2, ptr @str
  %puts9.i = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.str)
  tail call void @_ZdaPv(ptr noundef %call.i.i) #9
  ret i32 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

declare void @__asan_report_load1(i64)

declare void @__asan_report_load4(i64)

declare void @__asan_report_load8(i64)

declare void @__asan_report_store4(i64)

declare void @__asan_report_store8(i64)

declare void @__asan_register_elf_globals(i64, i64, i64)

declare void @__asan_unregister_elf_globals(i64, i64, i64)

declare void @__asan_init()

; Function Attrs: nounwind uwtable
define internal void @asan.module_ctor() #7 comdat {
  call void @__asan_init()
  call void @__asan_version_mismatch_check_v8()
  call void @__asan_register_elf_globals(i64 ptrtoint (ptr @___asan_globals_registered to i64), i64 ptrtoint (ptr @__start_asan_globals to i64), i64 ptrtoint (ptr @__stop_asan_globals to i64))
  ret void
}

declare void @__asan_version_mismatch_check_v8()

; Function Attrs: nounwind uwtable
define internal void @asan.module_dtor() #7 comdat {
  call void @__asan_unregister_elf_globals(i64 ptrtoint (ptr @___asan_globals_registered to i64), i64 ptrtoint (ptr @__start_asan_globals to i64), i64 ptrtoint (ptr @__stop_asan_globals to i64))
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind sanitize_address willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress sanitize_address uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { sanitize_address uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { norecurse sanitize_address uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind uwtable "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { builtin nounwind }
attributes #10 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{ptr @str}
!1 = !{ptr @str.2}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"}
!8 = !{!"branch_weights", i32 1, i32 100000}
!9 = !{!10, !14, i64 8}
!10 = !{!"_ZTS6Buffer", !11, i64 0, !14, i64 8}
!11 = !{!"any pointer", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"int", !12, i64 0}
!15 = !{!10, !11, i64 0}
!16 = !{!12, !12, i64 0}
