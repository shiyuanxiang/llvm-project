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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [12 x i8] c"ok, no uum\0A\00", align 1
@llvm.used = appending global [1 x ptr] [ptr @msan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_uum.cc, ptr null }, { i32, ptr, ptr } { i32 0, ptr @msan.module_ctor, ptr null }]
@__msan_retval_tls = external thread_local(initialexec) global [100 x i64]
@__msan_retval_origin_tls = external thread_local(initialexec) global i32
@__msan_param_tls = external thread_local(initialexec) global [100 x i64]
@__msan_param_origin_tls = external thread_local(initialexec) global [200 x i32]
@__msan_va_arg_tls = external thread_local(initialexec) global [100 x i64]
@__msan_va_arg_origin_tls = external thread_local(initialexec) global [200 x i32]
@__msan_va_arg_overflow_size_tls = external thread_local(initialexec) global i64
@.str.1 = private constant [36 x i8] c"  *_msprop = or i64 *_msld, 0 : %d\0A\00"
@.str.2 = private constant [38 x i8] c"  *_msprop4 = or i64 *_msld3, 0 : %d\0A\00"
@.str.3 = private constant [40 x i8] c"  *_msprop_icmp = and i1 *36, *35 : %d\0A\00"

; Function Attrs: noinline sanitize_memory uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @llvm.donothing()
  store i64 0, ptr @__msan_param_tls, align 8
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  store i64 0, ptr @__msan_param_tls, align 8
  store i64 0, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 8) to ptr), align 8
  store i64 0, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 16) to ptr), align 8
  store i32 0, ptr @__msan_retval_tls, align 8
  %0 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  %_msret = load i32, ptr @__msan_retval_tls, align 8
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline norecurse optnone sanitize_memory uwtable
define dso_local noundef i32 @main() #4 {
entry:
  call void @llvm.donothing()
  %retval = alloca i32, align 4
  %0 = ptrtoint ptr %retval to i64
  %1 = xor i64 %0, 87960930222080
  %2 = inttoptr i64 %1 to ptr
  call void @llvm.memset.p0.i64(ptr align 4 %2, i8 -1, i64 4, i1 false)
  %array = alloca ptr, align 8
  %value = alloca i32, align 4
  %3 = ptrtoint ptr %retval to i64
  %4 = xor i64 %3, 87960930222080
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #3
  %6 = ptrtoint ptr %array to i64
  %7 = xor i64 %6, 87960930222080
  %8 = inttoptr i64 %7 to ptr
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 -1, i64 8, i1 false)
  store i64 0, ptr @__msan_param_tls, align 8
  store i64 0, ptr @__msan_retval_tls, align 8
  %call = call noalias ptr @malloc(i64 noundef 48) #10
  %_msret = load i64, ptr @__msan_retval_tls, align 8
  %9 = ptrtoint ptr %array to i64
  %10 = xor i64 %9, 87960930222080
  %11 = inttoptr i64 %10 to ptr
  store i64 %_msret, ptr %11, align 8
  store ptr %call, ptr %array, align 8
  %12 = load ptr, ptr %array, align 8
  %13 = ptrtoint ptr %array to i64
  %14 = xor i64 %13, 87960930222080
  %15 = inttoptr i64 %14 to ptr
  %_msld = load i64, ptr %15, align 8
  %_msprop = or i64 %_msld, 0
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 16
  %16 = call i32 (ptr, ...) @printf(ptr @.str.1, i64 %_msprop)
  %_mscmp = icmp ne i64 %_msprop, 0
  br i1 %_mscmp, label %17, label %18, !prof !6

17:                                               ; preds = %entry
  call void @__msan_warning_with_origin_noreturn(i32 0) #11
  unreachable

18:                                               ; preds = %entry
  %19 = ptrtoint ptr %arrayidx to i64
  %20 = xor i64 %19, 87960930222080
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  store i32 10086, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #3
  %22 = ptrtoint ptr %value to i64
  %23 = xor i64 %22, 87960930222080
  %24 = inttoptr i64 %23 to ptr
  call void @llvm.memset.p0.i64(ptr align 4 %24, i8 -1, i64 4, i1 false)
  %25 = load ptr, ptr %array, align 8
  %26 = ptrtoint ptr %array to i64
  %27 = xor i64 %26, 87960930222080
  %28 = inttoptr i64 %27 to ptr
  %_msld3 = load i64, ptr %28, align 8
  %_msprop4 = or i64 %_msld3, 0
  %arrayidx1 = getelementptr inbounds i32, ptr %25, i64 11
  %29 = call i32 (ptr, ...) @printf(ptr @.str.2, i64 %_msprop4)
  %_mscmp9 = icmp ne i64 %_msprop4, 0
  br i1 %_mscmp9, label %30, label %31, !prof !6

30:                                               ; preds = %18
  call void @__msan_warning_with_origin_noreturn(i32 0) #11
  unreachable

31:                                               ; preds = %18
  %32 = load i32, ptr %arrayidx1, align 4
  %33 = ptrtoint ptr %arrayidx1 to i64
  %34 = xor i64 %33, 87960930222080
  %35 = inttoptr i64 %34 to ptr
  %_msld5 = load i32, ptr %35, align 4
  %36 = ptrtoint ptr %value to i64
  %37 = xor i64 %36, 87960930222080
  %38 = inttoptr i64 %37 to ptr
  store i32 %_msld5, ptr %38, align 4
  store i32 %32, ptr %value, align 4
  %39 = load i32, ptr %value, align 4
  %40 = ptrtoint ptr %value to i64
  %41 = xor i64 %40, 87960930222080
  %42 = inttoptr i64 %41 to ptr
  %_msld6 = load i32, ptr %42, align 4
  %43 = xor i32 %39, 0
  %44 = or i32 %_msld6, 0
  %45 = xor i32 %44, -1
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  %48 = icmp ne i32 %44, 0
  %_msprop_icmp = and i1 %48, %47
  %tobool = icmp ne i32 %39, 0
  %49 = call i32 (ptr, ...) @printf(ptr @.str.3, i1 %_msprop_icmp)
  br i1 %_msprop_icmp, label %50, label %51, !prof !6

50:                                               ; preds = %31
  call void @__msan_warning_with_origin_noreturn(i32 0) #11
  unreachable

51:                                               ; preds = %31
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %51
  store i64 0, ptr @__msan_param_tls, align 8
  store i64 0, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 8) to ptr), align 8
  store i64 0, ptr @__msan_retval_tls, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %_msret7 = load i64, ptr @__msan_retval_tls, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %51
  %52 = load ptr, ptr %array, align 8
  %53 = ptrtoint ptr %array to i64
  %54 = xor i64 %53, 87960930222080
  %55 = inttoptr i64 %54 to ptr
  %_msld8 = load i64, ptr %55, align 8
  store i64 %_msld8, ptr @__msan_param_tls, align 8
  call void @free(ptr noundef %52) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #3
  store i32 0, ptr @__msan_retval_tls, align 8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline sanitize_memory uwtable
define internal void @_GLOBAL__sub_I_uum.cc() #0 section ".text.startup" {
entry:
  call void @llvm.donothing()
  call void @__cxx_global_var_init()
  ret void
}

declare void @__msan_init()

; Function Attrs: nounwind uwtable
define internal void @msan.module_ctor() #7 {
  call void @__msan_init()
  ret void
}

declare i32 @__msan_chain_origin(i32)

declare void @__msan_set_origin(ptr, i64, i32)

declare ptr @__msan_memmove(ptr, ptr, i64)

declare ptr @__msan_memcpy(ptr, ptr, i64)

declare ptr @__msan_memset(ptr, i32, i64)

declare void @__msan_instrument_asm_store(ptr, i64)

declare void @__msan_warning_with_origin_noreturn(i32)

declare void @__msan_maybe_warning_1(i8 zeroext, i32 zeroext)

declare void @__msan_maybe_store_origin_1(i8 zeroext, ptr, i32 zeroext)

declare void @__msan_maybe_warning_2(i16 zeroext, i32 zeroext)

declare void @__msan_maybe_store_origin_2(i16 zeroext, ptr, i32 zeroext)

declare void @__msan_maybe_warning_4(i32 zeroext, i32 zeroext)

declare void @__msan_maybe_store_origin_4(i32 zeroext, ptr, i32 zeroext)

declare void @__msan_maybe_warning_8(i64 zeroext, i32 zeroext)

declare void @__msan_maybe_store_origin_8(i64 zeroext, ptr, i32 zeroext)

declare void @__msan_set_alloca_origin4(ptr, i64, ptr, i64)

declare void @__msan_poison_stack(ptr, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare void @llvm.donothing() #8

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare i32 @printf(ptr, ...)

attributes #0 = { noinline sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="all" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git c82e0d0f5b2b538e954f35a56aa551392e60f4ca)"}
!6 = !{!"branch_weights", i32 1, i32 1000}
