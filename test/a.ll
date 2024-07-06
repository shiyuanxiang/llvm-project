; ModuleID = 'oob.cc'
source_filename = "oob.cc"
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
@.str = private unnamed_addr constant [27 x i8] c"Out-of-bounds char_value: \00", align 1
@llvm.used = appending global [1 x ptr] [ptr @msan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_oob.cc, ptr null }, { i32, ptr, ptr } { i32 0, ptr @msan.module_ctor, ptr null }]
@__msan_retval_tls = external thread_local(initialexec) global [100 x i64]
@__msan_retval_origin_tls = external thread_local(initialexec) global i32
@__msan_param_tls = external thread_local(initialexec) global [100 x i64]
@__msan_param_origin_tls = external thread_local(initialexec) global [200 x i32]
@__msan_va_arg_tls = external thread_local(initialexec) global [100 x i64]
@__msan_va_arg_origin_tls = external thread_local(initialexec) global [200 x i32]
@__msan_va_arg_overflow_size_tls = external thread_local(initialexec) global i64

; Function Attrs: noinline sanitize_memory uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @llvm.donothing()
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
  %char_array = alloca ptr, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %char_value = alloca i8, align 1
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
  %call = call noalias noundef ptr @malloc(i64 noundef 20) #10
  %9 = ptrtoint ptr %array to i64
  %10 = xor i64 %9, 87960930222080
  %11 = inttoptr i64 %10 to ptr
  store i64 0, ptr %11, align 8
  store ptr %call, ptr %array, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %char_array) #3
  %12 = ptrtoint ptr %char_array to i64
  %13 = xor i64 %12, 87960930222080
  %14 = inttoptr i64 %13 to ptr
  call void @llvm.memset.p0.i64(ptr align 8 %14, i8 -1, i64 8, i1 false)
  %call1 = call noalias noundef ptr @malloc(i64 noundef 10) #10
  %15 = ptrtoint ptr %char_array to i64
  %16 = xor i64 %15, 87960930222080
  %17 = inttoptr i64 %16 to ptr
  store i64 0, ptr %17, align 8
  store ptr %call1, ptr %char_array, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %18 = ptrtoint ptr %i to i64
  %19 = xor i64 %18, 87960930222080
  %20 = inttoptr i64 %19 to ptr
  call void @llvm.memset.p0.i64(ptr align 4 %20, i8 -1, i64 4, i1 false)
  %21 = ptrtoint ptr %i to i64
  %22 = xor i64 %21, 87960930222080
  %23 = inttoptr i64 %22 to ptr
  store i32 0, ptr %23, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, ptr %i, align 4
  %25 = ptrtoint ptr %i to i64
  %26 = xor i64 %25, 87960930222080
  %27 = inttoptr i64 %26 to ptr
  %_msld = load i32, ptr %27, align 4
  %_msprop = or i32 %_msld, 0
  %28 = icmp ne i32 %_msprop, 0
  %cmp = icmp slt i32 %24, 5
  br i1 %28, label %29, label %30, !prof !6

29:                                               ; preds = %for.cond
  call void @__msan_warning_noreturn() #11
  unreachable

30:                                               ; preds = %for.cond
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  br label %for.end

for.body:                                         ; preds = %30
  %31 = load i32, ptr %i, align 4
  %32 = ptrtoint ptr %i to i64
  %33 = xor i64 %32, 87960930222080
  %34 = inttoptr i64 %33 to ptr
  %_msld16 = load i32, ptr %34, align 4
  %35 = load ptr, ptr %array, align 8
  %36 = ptrtoint ptr %array to i64
  %37 = xor i64 %36, 87960930222080
  %38 = inttoptr i64 %37 to ptr
  %_msld17 = load i64, ptr %38, align 8
  %39 = load i32, ptr %i, align 4
  %40 = ptrtoint ptr %i to i64
  %41 = xor i64 %40, 87960930222080
  %42 = inttoptr i64 %41 to ptr
  %_msld18 = load i32, ptr %42, align 4
  %_msprop19 = sext i32 %_msld18 to i64
  %idxprom = sext i32 %39 to i64
  %_msprop20 = or i64 %_msld17, %_msprop19
  %arrayidx = getelementptr inbounds i32, ptr %35, i64 %idxprom
  %_mscmp = icmp ne i64 %_msprop20, 0
  br i1 %_mscmp, label %43, label %44, !prof !6

43:                                               ; preds = %for.body
  call void @__msan_warning_noreturn() #11
  unreachable

44:                                               ; preds = %for.body
  %45 = ptrtoint ptr %arrayidx to i64
  %46 = xor i64 %45, 87960930222080
  %47 = inttoptr i64 %46 to ptr
  store i32 %_msld16, ptr %47, align 4
  store i32 %31, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %44
  %48 = load i32, ptr %i, align 4
  %49 = ptrtoint ptr %i to i64
  %50 = xor i64 %49, 87960930222080
  %51 = inttoptr i64 %50 to ptr
  %_msld21 = load i32, ptr %51, align 4
  %_msprop22 = or i32 %_msld21, 0
  %inc = add nsw i32 %48, 1
  %52 = ptrtoint ptr %i to i64
  %53 = xor i64 %52, 87960930222080
  %54 = inttoptr i64 %53 to ptr
  store i32 %_msprop22, ptr %54, align 4
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #3
  %55 = ptrtoint ptr %i2 to i64
  %56 = xor i64 %55, 87960930222080
  %57 = inttoptr i64 %56 to ptr
  call void @llvm.memset.p0.i64(ptr align 4 %57, i8 -1, i64 4, i1 false)
  %58 = ptrtoint ptr %i2 to i64
  %59 = xor i64 %58, 87960930222080
  %60 = inttoptr i64 %59 to ptr
  store i32 0, ptr %60, align 4
  store i32 0, ptr %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %61 = load i32, ptr %i2, align 4
  %62 = ptrtoint ptr %i2 to i64
  %63 = xor i64 %62, 87960930222080
  %64 = inttoptr i64 %63 to ptr
  %_msld23 = load i32, ptr %64, align 4
  %_msprop24 = or i32 %_msld23, 0
  %65 = icmp ne i32 %_msprop24, 0
  %cmp4 = icmp slt i32 %61, 5
  br i1 %65, label %66, label %67, !prof !6

66:                                               ; preds = %for.cond3
  call void @__msan_warning_noreturn() #11
  unreachable

67:                                               ; preds = %for.cond3
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %67
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #3
  br label %for.end11

for.body6:                                        ; preds = %67
  %68 = load i32, ptr %i2, align 4
  %69 = ptrtoint ptr %i2 to i64
  %70 = xor i64 %69, 87960930222080
  %71 = inttoptr i64 %70 to ptr
  %_msld25 = load i32, ptr %71, align 4
  %_msprop26 = or i32 %_msld25, 0
  %add = add nsw i32 %68, 97
  %_msprop27 = trunc i32 %_msprop26 to i8
  %conv = trunc i32 %add to i8
  %72 = load ptr, ptr %char_array, align 8
  %73 = ptrtoint ptr %char_array to i64
  %74 = xor i64 %73, 87960930222080
  %75 = inttoptr i64 %74 to ptr
  %_msld28 = load i64, ptr %75, align 8
  %76 = load i32, ptr %i2, align 4
  %77 = ptrtoint ptr %i2 to i64
  %78 = xor i64 %77, 87960930222080
  %79 = inttoptr i64 %78 to ptr
  %_msld29 = load i32, ptr %79, align 4
  %_msprop30 = sext i32 %_msld29 to i64
  %idxprom7 = sext i32 %76 to i64
  %_msprop31 = or i64 %_msld28, %_msprop30
  %arrayidx8 = getelementptr inbounds i8, ptr %72, i64 %idxprom7
  %_mscmp40 = icmp ne i64 %_msprop31, 0
  br i1 %_mscmp40, label %80, label %81, !prof !6

80:                                               ; preds = %for.body6
  call void @__msan_warning_noreturn() #11
  unreachable

81:                                               ; preds = %for.body6
  %82 = ptrtoint ptr %arrayidx8 to i64
  %83 = xor i64 %82, 87960930222080
  %84 = inttoptr i64 %83 to ptr
  store i8 %_msprop27, ptr %84, align 1
  store i8 %conv, ptr %arrayidx8, align 1
  br label %for.inc9

for.inc9:                                         ; preds = %81
  %85 = load i32, ptr %i2, align 4
  %86 = ptrtoint ptr %i2 to i64
  %87 = xor i64 %86, 87960930222080
  %88 = inttoptr i64 %87 to ptr
  %_msld32 = load i32, ptr %88, align 4
  %_msprop33 = or i32 %_msld32, 0
  %inc10 = add nsw i32 %85, 1
  %89 = ptrtoint ptr %i2 to i64
  %90 = xor i64 %89, 87960930222080
  %91 = inttoptr i64 %90 to ptr
  store i32 %_msprop33, ptr %91, align 4
  store i32 %inc10, ptr %i2, align 4
  br label %for.cond3, !llvm.loop !9

for.end11:                                        ; preds = %for.cond.cleanup5
  call void @llvm.lifetime.start.p0(i64 1, ptr %char_value) #3
  %92 = ptrtoint ptr %char_value to i64
  %93 = xor i64 %92, 87960930222080
  %94 = inttoptr i64 %93 to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %94, i8 -1, i64 1, i1 false)
  %95 = load ptr, ptr %char_array, align 8
  %96 = ptrtoint ptr %char_array to i64
  %97 = xor i64 %96, 87960930222080
  %98 = inttoptr i64 %97 to ptr
  %_msld34 = load i64, ptr %98, align 8
  %_msprop35 = or i64 %_msld34, 0
  %arrayidx12 = getelementptr inbounds i8, ptr %95, i64 20
  %_mscmp41 = icmp ne i64 %_msprop35, 0
  br i1 %_mscmp41, label %99, label %100, !prof !6

99:                                               ; preds = %for.end11
  call void @__msan_warning_noreturn() #11
  unreachable

100:                                              ; preds = %for.end11
  %101 = load i8, ptr %arrayidx12, align 1
  %102 = ptrtoint ptr %arrayidx12 to i64
  %103 = xor i64 %102, 87960930222080
  %104 = inttoptr i64 %103 to ptr
  %_msld36 = load i8, ptr %104, align 1
  %105 = ptrtoint ptr %char_value to i64
  %106 = xor i64 %105, 87960930222080
  %107 = inttoptr i64 %106 to ptr
  store i8 %_msld36, ptr %107, align 1
  store i8 %101, ptr %char_value, align 1
  %call13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %108 = load i8, ptr %char_value, align 1
  %109 = ptrtoint ptr %char_value to i64
  %110 = xor i64 %109, 87960930222080
  %111 = inttoptr i64 %110 to ptr
  %_msld37 = load i8, ptr %111, align 1
  %_mscmp42 = icmp ne i8 %_msld37, 0
  br i1 %_mscmp42, label %112, label %113, !prof !6

112:                                              ; preds = %100
  call void @__msan_warning_noreturn() #11
  unreachable

113:                                              ; preds = %100
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call13, i8 noundef signext %108)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %114 = load ptr, ptr %array, align 8
  %115 = ptrtoint ptr %array to i64
  %116 = xor i64 %115, 87960930222080
  %117 = inttoptr i64 %116 to ptr
  %_msld38 = load i64, ptr %117, align 8
  %_mscmp43 = icmp ne i64 %_msld38, 0
  br i1 %_mscmp43, label %118, label %119, !prof !6

118:                                              ; preds = %113
  call void @__msan_warning_noreturn() #11
  unreachable

119:                                              ; preds = %113
  call void @free(ptr noundef %114) #3
  %120 = load ptr, ptr %char_array, align 8
  %121 = ptrtoint ptr %char_array to i64
  %122 = xor i64 %121, 87960930222080
  %123 = inttoptr i64 %122 to ptr
  %_msld39 = load i64, ptr %123, align 8
  %_mscmp44 = icmp ne i64 %_msld39, 0
  br i1 %_mscmp44, label %124, label %125, !prof !6

124:                                              ; preds = %119
  call void @__msan_warning_noreturn() #11
  unreachable

125:                                              ; preds = %119
  call void @free(ptr noundef %120) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %char_value) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %char_array) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline sanitize_memory uwtable
define internal void @_GLOBAL__sub_I_oob.cc() #0 section ".text.startup" {
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

declare void @__msan_warning_noreturn()

declare void @__msan_maybe_warning_1(i8, i32)

declare void @__msan_maybe_store_origin_1(i8, ptr, i32)

declare void @__msan_maybe_warning_2(i16, i32)

declare void @__msan_maybe_store_origin_2(i16, ptr, i32)

declare void @__msan_maybe_warning_4(i32, i32)

declare void @__msan_maybe_store_origin_4(i32, ptr, i32)

declare void @__msan_maybe_warning_8(i64, i32)

declare void @__msan_maybe_store_origin_8(i64, ptr, i32)

declare void @__msan_set_alloca_origin_with_descr(ptr, i64, ptr, ptr)

declare void @__msan_set_alloca_origin_no_descr(ptr, i64, ptr)

declare void @__msan_poison_stack(ptr, i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare void @llvm.donothing() #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { noinline sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="all" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.0 (https://github.com/shiyuanxiang/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"}
!6 = !{!"branch_weights", i32 1, i32 1000}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
