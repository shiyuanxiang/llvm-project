; ModuleID = 'test.cc'
source_filename = "test.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Buffer = type <{ ptr, i32, [4 x i8] }>

@str = private unnamed_addr constant [27 x i8] c"data does not start with A\00", align 1
@str.2 = private unnamed_addr constant [19 x i8] c"data starts with A\00", align 1
@llvm.used = appending global [1 x ptr] [ptr @msan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @msan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind sanitize_memory willreturn uwtable
define dso_local void @_Z9read_dataPci(ptr nocapture noundef %str, i32 noundef %size) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sanitize_memory willreturn uwtable
define dso_local noundef i32 @_Z9read_sizev() local_unnamed_addr #0 {
entry:
  ret i32 12
}

; Function Attrs: mustprogress sanitize_memory uwtable
define dso_local void @_Z3fooR6Buffer(ptr nocapture noundef nonnull align 8 dereferenceable(12) %buf) local_unnamed_addr #2 {
entry:
  %len.i = getelementptr inbounds %class.Buffer, ptr %buf, i64 0, i32 1
  %0 = ptrtoint ptr %len.i to i64
  %1 = xor i64 %0, 87960930222080
  %2 = inttoptr i64 %1 to ptr
  %_msld = load i32, ptr %2, align 8
  %.not = icmp eq i32 %_msld, 0
  br i1 %.not, label %4, label %3, !prof !6

3:                                                ; preds = %entry
  call void @__msan_warning_noreturn() #10
  unreachable

4:                                                ; preds = %entry
  %5 = load i32, ptr %len.i, align 8, !tbaa !7
  %cmp.i = icmp slt i32 %5, 12
  br i1 %cmp.i, label %if.then.i, label %_ZN6Buffer5writeEPKci.exit

if.then.i:                                        ; preds = %4
  %6 = load ptr, ptr %buf, align 8, !tbaa !13
  %7 = ptrtoint ptr %buf to i64
  %8 = xor i64 %7, 87960930222080
  %9 = inttoptr i64 %8 to ptr
  %_msld3 = load i64, ptr %9, align 8
  %10 = ptrtoint ptr %6 to i64
  %11 = icmp ne i64 %_msld3, 0
  %12 = xor i64 %_msld3, -1
  %13 = and i64 %12, %10
  %14 = icmp eq i64 %13, 0
  %_msprop_icmp = and i1 %11, %14
  br i1 %_msprop_icmp, label %15, label %16, !prof !14

15:                                               ; preds = %if.then.i
  call void @__msan_warning_noreturn() #10
  unreachable

16:                                               ; preds = %if.then.i
  %isnull.i = icmp eq ptr %6, null
  br i1 %isnull.i, label %delete.end.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %16
  br i1 %11, label %17, label %18, !prof !14

17:                                               ; preds = %delete.notnull.i
  call void @__msan_warning_noreturn() #10
  unreachable

18:                                               ; preds = %delete.notnull.i
  tail call void @_ZdaPv(ptr noundef %6) #11
  br label %delete.end.i

delete.end.i:                                     ; preds = %18, %16
  %call.i = tail call noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #12
  store i64 0, ptr %9, align 8
  store ptr %call.i, ptr %buf, align 8, !tbaa !13
  store i32 0, ptr %2, align 8
  store i32 12, ptr %len.i, align 8, !tbaa !7
  br label %_ZN6Buffer5writeEPKci.exit

_ZN6Buffer5writeEPKci.exit:                       ; preds = %4, %delete.end.i
  ret void
}

; Function Attrs: sanitize_memory uwtable
define dso_local void @_Z3barv() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
entry:
  %buf = alloca %class.Buffer, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #13
  %0 = ptrtoint ptr %buf to i64
  %1 = xor i64 %0, 87960930222080
  %2 = inttoptr i64 %1 to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 -1, i64 16, i1 false)
  %call.i = tail call noundef nonnull dereferenceable(100) ptr @_Znam(i64 noundef 100) #12
  store i64 0, ptr %2, align 8
  store ptr %call.i, ptr %buf, align 8, !tbaa !13
  %len.i = getelementptr inbounds %class.Buffer, ptr %buf, i64 0, i32 1
  %3 = ptrtoint ptr %len.i to i64
  %4 = xor i64 %3, 87960930222080
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 8
  store i32 100, ptr %len.i, align 8, !tbaa !7
  %6 = load i8, ptr %call.i, align 1, !tbaa !15
  %7 = ptrtoint ptr %call.i to i64
  %8 = xor i64 %7, 87960930222080
  %9 = inttoptr i64 %8 to ptr
  %_msld = load i8, ptr %9, align 1
  %10 = xor i8 %6, 65
  %11 = icmp eq i8 %_msld, 0
  %12 = xor i8 %_msld, -1
  %13 = and i8 %10, %12
  %14 = icmp ne i8 %13, 0
  %_msprop_icmp.not = or i1 %11, %14
  %_mscmp.not = or i1 %_msprop_icmp.not, icmp eq (i64 xor (i64 ptrtoint (ptr @str.2 to i64), i64 ptrtoint (ptr @str to i64)), i64 0)
  br i1 %_mscmp.not, label %16, label %15, !prof !6

15:                                               ; preds = %entry
  call void @__msan_warning_noreturn() #10
  unreachable

16:                                               ; preds = %entry
  %cmp = icmp eq i8 %6, 65
  %str.2.str = select i1 %cmp, ptr @str.2, ptr @str
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.str)
  %17 = load ptr, ptr %buf, align 8, !tbaa !13
  %_msld11 = load i64, ptr %2, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = icmp ne i64 %_msld11, 0
  %20 = xor i64 %_msld11, -1
  %21 = and i64 %20, %18
  %22 = icmp eq i64 %21, 0
  %_msprop_icmp12 = and i1 %19, %22
  br i1 %_msprop_icmp12, label %23, label %24, !prof !14

23:                                               ; preds = %16
  call void @__msan_warning_noreturn() #10
  unreachable

24:                                               ; preds = %16
  %isnull.i = icmp eq ptr %17, null
  br i1 %isnull.i, label %_ZN6BufferD2Ev.exit, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %24
  br i1 %19, label %25, label %26, !prof !14

25:                                               ; preds = %delete.notnull.i
  call void @__msan_warning_noreturn() #10
  unreachable

26:                                               ; preds = %delete.notnull.i
  tail call void @_ZdaPv(ptr noundef %17) #11
  br label %_ZN6BufferD2Ev.exit

_ZN6BufferD2Ev.exit:                              ; preds = %24, %26
  call void @__sanitizer_dtor_callback_fields(ptr nonnull %buf, i64 12) #13, !nosanitize !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: norecurse sanitize_memory uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
entry:
  %buf.i = alloca %class.Buffer, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #13
  %0 = ptrtoint ptr %buf.i to i64
  %1 = xor i64 %0, 87960930222080
  %2 = inttoptr i64 %1 to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 -1, i64 16, i1 false)
  %call.i.i = tail call noundef nonnull dereferenceable(100) ptr @_Znam(i64 noundef 100) #12
  store i64 0, ptr %2, align 8
  store ptr %call.i.i, ptr %buf.i, align 8, !tbaa !13
  %len.i.i = getelementptr inbounds %class.Buffer, ptr %buf.i, i64 0, i32 1
  %3 = ptrtoint ptr %len.i.i to i64
  %4 = xor i64 %3, 87960930222080
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 8
  store i32 100, ptr %len.i.i, align 8, !tbaa !7
  %6 = load i8, ptr %call.i.i, align 1, !tbaa !15
  %7 = ptrtoint ptr %call.i.i to i64
  %8 = xor i64 %7, 87960930222080
  %9 = inttoptr i64 %8 to ptr
  %_msld = load i8, ptr %9, align 1
  %10 = xor i8 %6, 65
  %11 = icmp eq i8 %_msld, 0
  %12 = xor i8 %_msld, -1
  %13 = and i8 %10, %12
  %14 = icmp ne i8 %13, 0
  %_msprop_icmp.not = or i1 %11, %14
  %_mscmp3.not = or i1 %_msprop_icmp.not, icmp eq (i64 xor (i64 ptrtoint (ptr @str.2 to i64), i64 ptrtoint (ptr @str to i64)), i64 0)
  br i1 %_mscmp3.not, label %16, label %15, !prof !6

15:                                               ; preds = %entry
  call void @__msan_warning_noreturn() #10
  unreachable

16:                                               ; preds = %entry
  %cmp.i = icmp eq i8 %6, 65
  %str.2.str = select i1 %cmp.i, ptr @str.2, ptr @str
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.str)
  %17 = load ptr, ptr %buf.i, align 8, !tbaa !13
  %_msld1 = load i64, ptr %2, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = icmp ne i64 %_msld1, 0
  %20 = xor i64 %_msld1, -1
  %21 = and i64 %20, %18
  %22 = icmp eq i64 %21, 0
  %_msprop_icmp2 = and i1 %19, %22
  br i1 %_msprop_icmp2, label %23, label %24, !prof !14

23:                                               ; preds = %16
  call void @__msan_warning_noreturn() #10
  unreachable

24:                                               ; preds = %16
  %isnull.i.i = icmp eq ptr %17, null
  br i1 %isnull.i.i, label %_Z3barv.exit, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %24
  br i1 %19, label %25, label %26, !prof !14

25:                                               ; preds = %delete.notnull.i.i
  call void @__msan_warning_noreturn() #10
  unreachable

26:                                               ; preds = %delete.notnull.i.i
  tail call void @_ZdaPv(ptr noundef %17) #11
  br label %_Z3barv.exit

_Z3barv.exit:                                     ; preds = %24, %26
  call void @__sanitizer_dtor_callback_fields(ptr nonnull %buf.i, i64 12) #13, !nosanitize !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #13
  ret i32 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare void @__sanitizer_dtor_callback_fields(ptr, i64) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

declare void @__msan_init()

; Function Attrs: nounwind uwtable
define internal void @msan.module_ctor() #8 {
  call void @__msan_init() #13
  ret void
}

declare void @__msan_warning_noreturn()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind sanitize_memory willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { norecurse sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind uwtable "frame-pointer"="all" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nomerge }
attributes #11 = { builtin nounwind }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"}
!6 = !{!"branch_weights", i32 1000, i32 1}
!7 = !{!8, !12, i64 8}
!8 = !{!"_ZTS6Buffer", !9, i64 0, !12, i64 8}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!8, !9, i64 0}
!14 = !{!"branch_weights", i32 1, i32 1000}
!15 = !{!10, !10, i64 0}
!16 = !{}
