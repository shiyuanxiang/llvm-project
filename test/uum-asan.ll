; ModuleID = 'uum.cc'
source_filename = "uum.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZStL8__ioinit = internal global { %"class.std::ios_base::Init", [31 x i8] } zeroinitializer, sanitize_address_dyninit, align 32
@__dso_handle = external hidden global i8
@array_global = dso_local global { ptr, [24 x i8] } zeroinitializer, sanitize_address_dyninit, align 32
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ok, no uum\0A\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [7 x i8] c"uum.cc\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"std::__ioinit\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"array_global\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [5 x i8] c".str\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @_ZStL8__ioinit, ptr @array_global, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i64, i64, i64, i64, i64, i64, i64, i64 }] [{ i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @_ZStL8__ioinit to i64), i64 1, i64 32, i64 ptrtoint (ptr @___asan_gen_.2 to i64), i64 ptrtoint (ptr @___asan_gen_ to i64), i64 1, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @array_global to i64), i64 8, i64 32, i64 ptrtoint (ptr @___asan_gen_.3 to i64), i64 ptrtoint (ptr @___asan_gen_ to i64), i64 1, i64 0, i64 0 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @.str to i64), i64 12, i64 32, i64 ptrtoint (ptr @___asan_gen_.4 to i64), i64 ptrtoint (ptr @___asan_gen_ to i64), i64 0, i64 0, i64 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_uum.cc, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noinline sanitize_address uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline sanitize_address uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
entry:
  %call = call noalias ptr @malloc(i64 noundef 492) #9
  %0 = load i8, ptr inttoptr (i64 add (i64 lshr (i64 ptrtoint (ptr @array_global to i64), i64 3), i64 2147450880) to ptr), align 1
  %1 = icmp ne i8 %0, 0
  br i1 %1, label %2, label %3

2:                                                ; preds = %entry
  call void @__asan_report_store8(i64 ptrtoint (ptr @array_global to i64)) #10
  unreachable

3:                                                ; preds = %entry
  store ptr %call, ptr @array_global, align 8
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: mustprogress noinline norecurse optnone sanitize_address uwtable
define dso_local noundef i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %array = alloca ptr, align 8
  %value = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #3
  %call = call noalias ptr @malloc(i64 noundef 132) #9
  store ptr %call, ptr %array, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #3
  %0 = load ptr, ptr %array, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 10000
  %1 = ptrtoint ptr %arrayidx to i64
  %2 = lshr i64 %1, 3
  %3 = add i64 %2, 2147450880
  %4 = inttoptr i64 %3 to ptr
  %5 = load i8, ptr %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %13, !prof !6

7:                                                ; preds = %entry
  %8 = and i64 %1, 7
  %9 = add i64 %8, 3
  %10 = trunc i64 %9 to i8
  %11 = icmp sge i8 %10, %5
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @__asan_report_load4(i64 %1) #10
  unreachable

13:                                               ; preds = %7, %entry
  %14 = load i32, ptr %arrayidx, align 4
  store i32 %14, ptr %value, align 4
  %15 = load i32, ptr %value, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %13
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %13
  %16 = load ptr, ptr %array, align 8
  call void @free(ptr noundef %16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noinline sanitize_address uwtable
define internal void @_GLOBAL__sub_I_uum.cc() #0 section ".text.startup" {
entry:
  call void @__asan_before_dynamic_init(i64 ptrtoint (ptr @___asan_gen_ to i64))
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__asan_after_dynamic_init()
  ret void
}

declare void @__asan_report_load_n(i64, i64)

declare void @__asan_loadN(i64, i64)

declare void @__asan_report_load1(i64)

declare void @__asan_load1(i64)

declare void @__asan_report_load2(i64)

declare void @__asan_load2(i64)

declare void @__asan_report_load4(i64)

declare void @__asan_load4(i64)

declare void @__asan_report_load8(i64)

declare void @__asan_load8(i64)

declare void @__asan_report_load16(i64)

declare void @__asan_load16(i64)

declare void @__asan_report_store_n(i64, i64)

declare void @__asan_storeN(i64, i64)

declare void @__asan_report_store1(i64)

declare void @__asan_store1(i64)

declare void @__asan_report_store2(i64)

declare void @__asan_store2(i64)

declare void @__asan_report_store4(i64)

declare void @__asan_store4(i64)

declare void @__asan_report_store8(i64)

declare void @__asan_store8(i64)

declare void @__asan_report_store16(i64)

declare void @__asan_store16(i64)

declare void @__asan_report_exp_load_n(i64, i64, i32)

declare void @__asan_exp_loadN(i64, i64, i32)

declare void @__asan_report_exp_load1(i64, i32)

declare void @__asan_exp_load1(i64, i32)

declare void @__asan_report_exp_load2(i64, i32)

declare void @__asan_exp_load2(i64, i32)

declare void @__asan_report_exp_load4(i64, i32)

declare void @__asan_exp_load4(i64, i32)

declare void @__asan_report_exp_load8(i64, i32)

declare void @__asan_exp_load8(i64, i32)

declare void @__asan_report_exp_load16(i64, i32)

declare void @__asan_exp_load16(i64, i32)

declare void @__asan_report_exp_store_n(i64, i64, i32)

declare void @__asan_exp_storeN(i64, i64, i32)

declare void @__asan_report_exp_store1(i64, i32)

declare void @__asan_exp_store1(i64, i32)

declare void @__asan_report_exp_store2(i64, i32)

declare void @__asan_exp_store2(i64, i32)

declare void @__asan_report_exp_store4(i64, i32)

declare void @__asan_exp_store4(i64, i32)

declare void @__asan_report_exp_store8(i64, i32)

declare void @__asan_exp_store8(i64, i32)

declare void @__asan_report_exp_store16(i64, i32)

declare void @__asan_exp_store16(i64, i32)

declare ptr @__asan_memmove(ptr, ptr, i64)

declare ptr @__asan_memcpy(ptr, ptr, i64)

declare ptr @__asan_memset(ptr, i32, i64)

declare void @__asan_handle_no_return()

declare void @__sanitizer_ptr_cmp(i64, i64)

declare void @__sanitizer_ptr_sub(i64, i64)

; Function Attrs: nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.is.shared(ptr nocapture) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.is.private(ptr nocapture) #7

declare void @__asan_before_dynamic_init(i64)

declare void @__asan_after_dynamic_init()

declare void @__asan_register_globals(i64, i64)

declare void @__asan_unregister_globals(i64, i64)

declare void @__asan_register_image_globals(i64)

declare void @__asan_unregister_image_globals(i64)

declare void @__asan_register_elf_globals(i64, i64, i64)

declare void @__asan_unregister_elf_globals(i64, i64, i64)

declare void @__asan_init()

; Function Attrs: nounwind uwtable
define internal void @asan.module_ctor() #8 {
  call void @__asan_init()
  call void @__asan_version_mismatch_check_v8()
  call void @__asan_register_globals(i64 ptrtoint (ptr @0 to i64), i64 3)
  ret void
}

declare void @__asan_version_mismatch_check_v8()

; Function Attrs: nounwind uwtable
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i64 ptrtoint (ptr @0 to i64), i64 3)
  ret void
}

attributes #0 = { noinline sanitize_address uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone sanitize_address uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readnone speculatable willreturn }
attributes #8 = { nounwind uwtable "frame-pointer"="all" }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git c82e0d0f5b2b538e954f35a56aa551392e60f4ca)"}
!6 = !{!"branch_weights", i32 1, i32 100000}
