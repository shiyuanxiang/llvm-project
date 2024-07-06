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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@array_global = dso_local global ptr null, align 8, !dbg !7
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [12 x i8] c"ok, no uum\0A\00", align 1, !dbg !15
@llvm.used = appending global [1 x ptr] [ptr @msan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_uum.cc, ptr null }, { i32, ptr, ptr } { i32 0, ptr @msan.module_ctor, ptr null }]
@__msan_retval_tls = external thread_local(initialexec) global [100 x i64]
@__msan_retval_origin_tls = external thread_local(initialexec) global i32
@__msan_param_tls = external thread_local(initialexec) global [100 x i64]
@__msan_param_origin_tls = external thread_local(initialexec) global [200 x i32]
@__msan_va_arg_tls = external thread_local(initialexec) global [100 x i64]
@__msan_va_arg_origin_tls = external thread_local(initialexec) global [200 x i32]
@__msan_va_arg_overflow_size_tls = external thread_local(initialexec) global i64
@.str.2 = private constant [47 x i8] c"  *_msprop = or i64 *_msld, 0, !dbg !881 : %x\0A\00"
@.str.3 = private constant [53 x i8] c"  *_mscmp = icmp ne i64 *_msprop, 0, !dbg !881 : %x\0A\00"
@.str.4 = private constant [51 x i8] c"  *_msprop_icmp = and i1 *30, *29, !dbg !883 : %x\0A\00"

; Function Attrs: noinline sanitize_memory uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !872 {
entry:
  call void @llvm.donothing(), !dbg !874
  store i64 0, ptr @__msan_param_tls, align 8, !dbg !874
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !874
  store i64 0, ptr @__msan_param_tls, align 8, !dbg !876
  store i64 0, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 8) to ptr), align 8, !dbg !876
  store i64 0, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 16) to ptr), align 8, !dbg !876
  store i32 0, ptr @__msan_retval_tls, align 8, !dbg !876
  %0 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !876
  %_msret = load i32, ptr @__msan_retval_tls, align 8, !dbg !874
  ret void, !dbg !874
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline sanitize_memory uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" !dbg !877 {
entry:
  call void @llvm.donothing(), !dbg !878
  store i64 0, ptr @__msan_param_tls, align 8, !dbg !878
  store i64 0, ptr @__msan_retval_tls, align 8, !dbg !878
  %call = call noalias ptr @malloc(i64 noundef 492) #11, !dbg !878
  %_msret = load i64, ptr @__msan_retval_tls, align 8, !dbg !880
  store i64 %_msret, ptr inttoptr (i64 xor (i64 ptrtoint (ptr @array_global to i64), i64 87960930222080) to ptr), align 8, !dbg !880
  store ptr %call, ptr @array_global, align 8, !dbg !880
  ret void, !dbg !881
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: mustprogress noinline norecurse optnone sanitize_memory uwtable
define dso_local noundef i32 @main() #5 !dbg !882 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #3, !dbg !883
  %6 = ptrtoint ptr %array to i64, !dbg !884
  %7 = xor i64 %6, 87960930222080, !dbg !884
  %8 = inttoptr i64 %7 to ptr, !dbg !884
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 -1, i64 8, i1 false), !dbg !884
  call void @llvm.dbg.declare(metadata ptr %array, metadata !885, metadata !DIExpression()), !dbg !884
  store i64 0, ptr @__msan_param_tls, align 8, !dbg !886
  store i64 0, ptr @__msan_retval_tls, align 8, !dbg !886
  %call = call noalias ptr @malloc(i64 noundef 132) #11, !dbg !886
  %_msret = load i64, ptr @__msan_retval_tls, align 8, !dbg !884
  %9 = ptrtoint ptr %array to i64, !dbg !884
  %10 = xor i64 %9, 87960930222080, !dbg !884
  %11 = inttoptr i64 %10 to ptr, !dbg !884
  store i64 %_msret, ptr %11, align 8, !dbg !884
  store ptr %call, ptr %array, align 8, !dbg !884
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #3, !dbg !887
  %12 = ptrtoint ptr %value to i64, !dbg !888
  %13 = xor i64 %12, 87960930222080, !dbg !888
  %14 = inttoptr i64 %13 to ptr, !dbg !888
  call void @llvm.memset.p0.i64(ptr align 4 %14, i8 -1, i64 4, i1 false), !dbg !888
  call void @llvm.dbg.declare(metadata ptr %value, metadata !889, metadata !DIExpression()), !dbg !888
  %15 = load ptr, ptr %array, align 8, !dbg !890
  %16 = ptrtoint ptr %array to i64, !dbg !890
  %17 = xor i64 %16, 87960930222080, !dbg !890
  %18 = inttoptr i64 %17 to ptr, !dbg !890
  %_msld = load i64, ptr %18, align 8, !dbg !890
  %_msprop = or i64 %_msld, 0, !dbg !890
  %arrayidx = getelementptr inbounds i32, ptr %15, i64 10000, !dbg !890
  %19 = call i8 (ptr, ...) @printf(ptr @.str.2, i64 %_msprop), !dbg !890
  %_mscmp = icmp ne i64 %_msprop, 0, !dbg !890
  %20 = call i8 (ptr, ...) @printf(ptr @.str.3, i1 %_mscmp), !dbg !890
  br i1 %_mscmp, label %21, label %22, !dbg !890, !prof !891

21:                                               ; preds = %entry
  call void @__msan_warning_with_origin_noreturn(i32 0) #12, !dbg !890
  unreachable, !dbg !890

22:                                               ; preds = %entry
  %23 = load i32, ptr %arrayidx, align 4, !dbg !890
  %24 = ptrtoint ptr %arrayidx to i64, !dbg !888
  %25 = xor i64 %24, 87960930222080, !dbg !888
  %26 = inttoptr i64 %25 to ptr, !dbg !888
  %_msld2 = load i32, ptr %26, align 4, !dbg !888
  %27 = ptrtoint ptr %value to i64, !dbg !888
  %28 = xor i64 %27, 87960930222080, !dbg !888
  %29 = inttoptr i64 %28 to ptr, !dbg !888
  store i32 %_msld2, ptr %29, align 4, !dbg !888
  store i32 %23, ptr %value, align 4, !dbg !888
  %30 = load i32, ptr %value, align 4, !dbg !892
  %31 = ptrtoint ptr %value to i64, !dbg !892
  %32 = xor i64 %31, 87960930222080, !dbg !892
  %33 = inttoptr i64 %32 to ptr, !dbg !892
  %_msld3 = load i32, ptr %33, align 4, !dbg !892
  %34 = xor i32 %30, 0, !dbg !892
  %35 = or i32 %_msld3, 0, !dbg !892
  %36 = xor i32 %35, -1, !dbg !892
  %37 = and i32 %36, %34, !dbg !892
  %38 = icmp eq i32 %37, 0, !dbg !892
  %39 = icmp ne i32 %35, 0, !dbg !892
  %_msprop_icmp = and i1 %39, %38, !dbg !892
  %tobool = icmp ne i32 %30, 0, !dbg !892
  %40 = call i8 (ptr, ...) @printf(ptr @.str.4, i1 %_msprop_icmp), !dbg !894
  br i1 %_msprop_icmp, label %41, label %42, !dbg !894, !prof !891

41:                                               ; preds = %22
  call void @__msan_warning_with_origin_noreturn(i32 0) #12, !dbg !894
  unreachable, !dbg !894

42:                                               ; preds = %22
  br i1 %tobool, label %if.then, label %if.end, !dbg !894

if.then:                                          ; preds = %42
  store i64 0, ptr @__msan_param_tls, align 8, !dbg !895
  store i64 0, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 8) to ptr), align 8, !dbg !895
  store i64 0, ptr @__msan_retval_tls, align 8, !dbg !895
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !895
  %_msret4 = load i64, ptr @__msan_retval_tls, align 8, !dbg !897
  br label %if.end, !dbg !897

if.end:                                           ; preds = %if.then, %42
  %43 = load ptr, ptr %array, align 8, !dbg !898
  %44 = ptrtoint ptr %array to i64, !dbg !899
  %45 = xor i64 %44, 87960930222080, !dbg !899
  %46 = inttoptr i64 %45 to ptr, !dbg !899
  %_msld5 = load i64, ptr %46, align 8, !dbg !899
  store i64 %_msld5, ptr @__msan_param_tls, align 8, !dbg !899
  call void @free(ptr noundef %43) #3, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #3, !dbg !900
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #3, !dbg !900
  store i32 0, ptr @__msan_retval_tls, align 8, !dbg !901
  ret i32 0, !dbg !901
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noinline sanitize_memory uwtable
define internal void @_GLOBAL__sub_I_uum.cc() #0 section ".text.startup" !dbg !902 {
entry:
  call void @llvm.donothing(), !dbg !904
  call void @__cxx_global_var_init(), !dbg !904
  call void @__cxx_global_var_init.1(), !dbg !904
  ret void
}

declare void @__msan_init()

; Function Attrs: nounwind uwtable
define internal void @msan.module_ctor() #8 {
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

declare void @__msan_warning_oob_with_origin(i32)

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
declare void @llvm.donothing() #9

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare i8 @printf(ptr, ...)

attributes #0 = { noinline sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind uwtable "frame-pointer"="all" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nomerge }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!864, !865, !866, !867, !868, !869, !870}
!llvm.ident = !{!871}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 608, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "array_global", scope: !9, file: !10, line: 5, type: !12, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !10, producer: "clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git c82e0d0f5b2b538e954f35a56aa551392e60f4ca)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !14, imports: !22, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "uum.cc", directory: "/home/syx/sanitizer/tmp/test", checksumkind: CSK_MD5, checksum: "83c3cbeea4d029b3ab8b11da6786f333")
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!0, !7, !15}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !10, line: 31, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !20)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 12)
!22 = !{!23, !41, !44, !49, !57, !65, !69, !76, !80, !84, !86, !88, !92, !103, !107, !113, !119, !121, !125, !129, !133, !137, !150, !152, !156, !160, !164, !166, !172, !176, !180, !182, !184, !188, !196, !200, !204, !208, !210, !216, !218, !225, !230, !234, !239, !243, !247, !251, !253, !255, !259, !263, !267, !269, !273, !277, !279, !281, !285, !291, !296, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !315, !319, !323, !330, !334, !337, !340, !343, !345, !347, !349, !352, !355, !358, !361, !364, !366, !371, !375, !378, !381, !383, !385, !387, !389, !392, !395, !398, !401, !404, !406, !410, !414, !419, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !455, !457, !461, !465, !471, !475, !480, !482, !486, !490, !494, !504, !508, !512, !516, !520, !524, !528, !532, !536, !540, !544, !548, !552, !554, !558, !562, !566, !572, !576, !580, !582, !586, !590, !596, !598, !602, !606, !610, !614, !618, !622, !626, !627, !628, !629, !631, !632, !633, !634, !635, !636, !637, !641, !647, !652, !656, !658, !660, !662, !664, !671, !675, !679, !683, !687, !691, !696, !700, !702, !706, !712, !716, !721, !723, !725, !729, !733, !735, !737, !739, !741, !745, !747, !749, !753, !757, !761, !765, !769, !773, !775, !779, !783, !787, !791, !793, !795, !799, !803, !804, !805, !806, !807, !808, !814, !817, !818, !820, !822, !824, !826, !830, !832, !834, !836, !838, !840, !842, !844, !846, !850, !854, !856, !860}
!23 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !24, file: !40, line: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !25, line: 6, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !27, line: 21, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !29, identifier: "_ZTS11__mbstate_t")
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !28, file: !27, line: 15, baseType: !13, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !28, file: !27, line: 20, baseType: !32, size: 32, offset: 32)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !28, file: !27, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !33, identifier: "_ZTSN11__mbstate_tUt_E")
!33 = !{!34, !36}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !32, file: !27, line: 18, baseType: !35, size: 32)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !32, file: !27, line: 19, baseType: !37, size: 32)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 4)
!40 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwchar", directory: "")
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !42, file: !40, line: 141)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !43, line: 20, baseType: !35)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !45, file: !40, line: 143)
!45 = !DISubprogram(name: "btowc", scope: !46, file: !46, line: 284, type: !47, flags: DIFlagPrototyped, spFlags: 0)
!46 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!47 = !DISubroutineType(types: !48)
!48 = !{!42, !13}
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !50, file: !40, line: 144)
!50 = !DISubprogram(name: "fgetwc", scope: !46, file: !46, line: 726, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!51 = !DISubroutineType(types: !52)
!52 = !{!42, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !55, line: 5, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !55, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !58, file: !40, line: 145)
!58 = !DISubprogram(name: "fgetws", scope: !46, file: !46, line: 755, type: !59, flags: DIFlagPrototyped, spFlags: 0)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !63, !13, !64}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !66, file: !40, line: 146)
!66 = !DISubprogram(name: "fputwc", scope: !46, file: !46, line: 740, type: !67, flags: DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{!42, !62, !53}
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !70, file: !40, line: 147)
!70 = !DISubprogram(name: "fputws", scope: !46, file: !46, line: 762, type: !71, flags: DIFlagPrototyped, spFlags: 0)
!71 = !DISubroutineType(types: !72)
!72 = !{!13, !73, !64}
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !77, file: !40, line: 148)
!77 = !DISubprogram(name: "fwide", scope: !46, file: !46, line: 573, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{!13, !53, !13}
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !81, file: !40, line: 149)
!81 = !DISubprogram(name: "fwprintf", scope: !46, file: !46, line: 580, type: !82, flags: DIFlagPrototyped, spFlags: 0)
!82 = !DISubroutineType(types: !83)
!83 = !{!13, !64, !73, null}
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !85, file: !40, line: 150)
!85 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !46, file: !46, line: 640, type: !82, flags: DIFlagPrototyped, spFlags: 0)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !87, file: !40, line: 151)
!87 = !DISubprogram(name: "getwc", scope: !46, file: !46, line: 727, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !89, file: !40, line: 152)
!89 = !DISubprogram(name: "getwchar", scope: !46, file: !46, line: 733, type: !90, flags: DIFlagPrototyped, spFlags: 0)
!90 = !DISubroutineType(types: !91)
!91 = !{!42}
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !93, file: !40, line: 153)
!93 = !DISubprogram(name: "mbrlen", scope: !46, file: !46, line: 307, type: !94, flags: DIFlagPrototyped, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !99, !96, !101}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/usr/local/lib/clang/15.0.4/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "b76978376d35d5cd171876ac58ac1256")
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !104, file: !40, line: 154)
!104 = !DISubprogram(name: "mbrtowc", scope: !46, file: !46, line: 296, type: !105, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{!96, !63, !99, !96, !101}
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !108, file: !40, line: 155)
!108 = !DISubprogram(name: "mbsinit", scope: !46, file: !46, line: 292, type: !109, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{!13, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !114, file: !40, line: 156)
!114 = !DISubprogram(name: "mbsrtowcs", scope: !46, file: !46, line: 337, type: !115, flags: DIFlagPrototyped, spFlags: 0)
!115 = !DISubroutineType(types: !116)
!116 = !{!96, !63, !117, !96, !101}
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !120, file: !40, line: 157)
!120 = !DISubprogram(name: "putwc", scope: !46, file: !46, line: 741, type: !67, flags: DIFlagPrototyped, spFlags: 0)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !122, file: !40, line: 158)
!122 = !DISubprogram(name: "putwchar", scope: !46, file: !46, line: 747, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{!42, !62}
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !126, file: !40, line: 160)
!126 = !DISubprogram(name: "swprintf", scope: !46, file: !46, line: 590, type: !127, flags: DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!13, !63, !96, !73, null}
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !130, file: !40, line: 162)
!130 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !46, file: !46, line: 647, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!13, !73, !73, null}
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !134, file: !40, line: 163)
!134 = !DISubprogram(name: "ungetwc", scope: !46, file: !46, line: 770, type: !135, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{!42, !42, !53}
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !138, file: !40, line: 164)
!138 = !DISubprogram(name: "vfwprintf", scope: !46, file: !46, line: 598, type: !139, flags: DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{!13, !64, !73, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !143, identifier: "_ZTS13__va_list_tag")
!143 = !{!144, !146, !147, !149}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !142, file: !145, baseType: !35, size: 32)
!145 = !DIFile(filename: "uum.cc", directory: "/home/syx/sanitizer/tmp/test")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !142, file: !145, baseType: !35, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !142, file: !145, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !142, file: !145, baseType: !148, size: 64, offset: 128)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !151, file: !40, line: 166)
!151 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !46, file: !46, line: 693, type: !139, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !153, file: !40, line: 169)
!153 = !DISubprogram(name: "vswprintf", scope: !46, file: !46, line: 611, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!13, !63, !96, !73, !141}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !157, file: !40, line: 172)
!157 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !46, file: !46, line: 700, type: !158, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!13, !73, !73, !141}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !161, file: !40, line: 174)
!161 = !DISubprogram(name: "vwprintf", scope: !46, file: !46, line: 606, type: !162, flags: DIFlagPrototyped, spFlags: 0)
!162 = !DISubroutineType(types: !163)
!163 = !{!13, !73, !141}
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !165, file: !40, line: 176)
!165 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !46, file: !46, line: 697, type: !162, flags: DIFlagPrototyped, spFlags: 0)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !167, file: !40, line: 178)
!167 = !DISubprogram(name: "wcrtomb", scope: !46, file: !46, line: 301, type: !168, flags: DIFlagPrototyped, spFlags: 0)
!168 = !DISubroutineType(types: !169)
!169 = !{!96, !170, !62, !101}
!170 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !173, file: !40, line: 179)
!173 = !DISubprogram(name: "wcscat", scope: !46, file: !46, line: 97, type: !174, flags: DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!61, !63, !73}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !177, file: !40, line: 180)
!177 = !DISubprogram(name: "wcscmp", scope: !46, file: !46, line: 106, type: !178, flags: DIFlagPrototyped, spFlags: 0)
!178 = !DISubroutineType(types: !179)
!179 = !{!13, !74, !74}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !40, line: 181)
!181 = !DISubprogram(name: "wcscoll", scope: !46, file: !46, line: 131, type: !178, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !183, file: !40, line: 182)
!183 = !DISubprogram(name: "wcscpy", scope: !46, file: !46, line: 87, type: !174, flags: DIFlagPrototyped, spFlags: 0)
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !185, file: !40, line: 183)
!185 = !DISubprogram(name: "wcscspn", scope: !46, file: !46, line: 187, type: !186, flags: DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{!96, !74, !74}
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !189, file: !40, line: 184)
!189 = !DISubprogram(name: "wcsftime", scope: !46, file: !46, line: 834, type: !190, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!96, !63, !96, !73, !192}
!192 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !46, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !197, file: !40, line: 185)
!197 = !DISubprogram(name: "wcslen", scope: !46, file: !46, line: 222, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!96, !74}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !201, file: !40, line: 186)
!201 = !DISubprogram(name: "wcsncat", scope: !46, file: !46, line: 101, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DISubroutineType(types: !203)
!203 = !{!61, !63, !73, !96}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !205, file: !40, line: 187)
!205 = !DISubprogram(name: "wcsncmp", scope: !46, file: !46, line: 109, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!13, !74, !74, !96}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !209, file: !40, line: 188)
!209 = !DISubprogram(name: "wcsncpy", scope: !46, file: !46, line: 92, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !211, file: !40, line: 189)
!211 = !DISubprogram(name: "wcsrtombs", scope: !46, file: !46, line: 343, type: !212, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DISubroutineType(types: !213)
!213 = !{!96, !170, !214, !96, !101}
!214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !217, file: !40, line: 190)
!217 = !DISubprogram(name: "wcsspn", scope: !46, file: !46, line: 191, type: !186, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !219, file: !40, line: 191)
!219 = !DISubprogram(name: "wcstod", scope: !46, file: !46, line: 377, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !73, !223}
!222 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!223 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !226, file: !40, line: 193)
!226 = !DISubprogram(name: "wcstof", scope: !46, file: !46, line: 382, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !73, !223}
!229 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !231, file: !40, line: 195)
!231 = !DISubprogram(name: "wcstok", scope: !46, file: !46, line: 217, type: !232, flags: DIFlagPrototyped, spFlags: 0)
!232 = !DISubroutineType(types: !233)
!233 = !{!61, !63, !73, !223}
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !235, file: !40, line: 196)
!235 = !DISubprogram(name: "wcstol", scope: !46, file: !46, line: 428, type: !236, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !73, !223, !13}
!238 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !240, file: !40, line: 197)
!240 = !DISubprogram(name: "wcstoul", scope: !46, file: !46, line: 433, type: !241, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{!98, !73, !223, !13}
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !244, file: !40, line: 198)
!244 = !DISubprogram(name: "wcsxfrm", scope: !46, file: !46, line: 135, type: !245, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!96, !63, !73, !96}
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !248, file: !40, line: 199)
!248 = !DISubprogram(name: "wctob", scope: !46, file: !46, line: 288, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DISubroutineType(types: !250)
!250 = !{!13, !42}
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !252, file: !40, line: 200)
!252 = !DISubprogram(name: "wmemcmp", scope: !46, file: !46, line: 258, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !254, file: !40, line: 201)
!254 = !DISubprogram(name: "wmemcpy", scope: !46, file: !46, line: 262, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !256, file: !40, line: 202)
!256 = !DISubprogram(name: "wmemmove", scope: !46, file: !46, line: 267, type: !257, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!61, !61, !74, !96}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !260, file: !40, line: 203)
!260 = !DISubprogram(name: "wmemset", scope: !46, file: !46, line: 271, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!61, !61, !62, !96}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !264, file: !40, line: 204)
!264 = !DISubprogram(name: "wprintf", scope: !46, file: !46, line: 587, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{!13, !73, null}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !268, file: !40, line: 205)
!268 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !46, file: !46, line: 644, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !270, file: !40, line: 206)
!270 = !DISubprogram(name: "wcschr", scope: !46, file: !46, line: 164, type: !271, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{!61, !74, !62}
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !274, file: !40, line: 207)
!274 = !DISubprogram(name: "wcspbrk", scope: !46, file: !46, line: 201, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!275 = !DISubroutineType(types: !276)
!276 = !{!61, !74, !74}
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !278, file: !40, line: 208)
!278 = !DISubprogram(name: "wcsrchr", scope: !46, file: !46, line: 174, type: !271, flags: DIFlagPrototyped, spFlags: 0)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !280, file: !40, line: 209)
!280 = !DISubprogram(name: "wcsstr", scope: !46, file: !46, line: 212, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !282, file: !40, line: 210)
!282 = !DISubprogram(name: "wmemchr", scope: !46, file: !46, line: 253, type: !283, flags: DIFlagPrototyped, spFlags: 0)
!283 = !DISubroutineType(types: !284)
!284 = !{!61, !74, !62, !96}
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !287, file: !40, line: 251)
!286 = !DINamespace(name: "__gnu_cxx", scope: null)
!287 = !DISubprogram(name: "wcstold", scope: !46, file: !46, line: 384, type: !288, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !73, !223}
!290 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !292, file: !40, line: 260)
!292 = !DISubprogram(name: "wcstoll", scope: !46, file: !46, line: 441, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!295, !73, !223, !13}
!295 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !297, file: !40, line: 261)
!297 = !DISubprogram(name: "wcstoull", scope: !46, file: !46, line: 448, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!300, !73, !223, !13}
!300 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !287, file: !40, line: 267)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !292, file: !40, line: 268)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !297, file: !40, line: 269)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !226, file: !40, line: 283)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !151, file: !40, line: 286)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !157, file: !40, line: 289)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !165, file: !40, line: 292)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !287, file: !40, line: 296)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !292, file: !40, line: 297)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !297, file: !40, line: 298)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !312, file: !313, line: 57)
!312 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !314, file: !313, line: 79, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!313 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ad32556413cf4ca6a852273de62d0a18")
!314 = !DINamespace(name: "__exception_ptr", scope: !2)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !314, entity: !316, file: !313, line: 73)
!316 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !313, line: 69, type: !317, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !312}
!319 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !320, entity: !321, file: !322, line: 58)
!320 = !DINamespace(name: "__gnu_debug", scope: null)
!321 = !DINamespace(name: "__debug", scope: !2)
!322 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "1e1a444391d862db9c9b259fde858dd4")
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !324, file: !329, line: 47)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !325, line: 24, baseType: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !327, line: 37, baseType: !328)
!327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!328 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!329 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdint", directory: "")
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !331, file: !329, line: 48)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !325, line: 25, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !327, line: 39, baseType: !333)
!333 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !329, line: 49)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !325, line: 26, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !327, line: 41, baseType: !13)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !338, file: !329, line: 50)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !325, line: 27, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !327, line: 44, baseType: !238)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !341, file: !329, line: 52)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !342, line: 58, baseType: !328)
!342 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !344, file: !329, line: 53)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !342, line: 60, baseType: !238)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !346, file: !329, line: 54)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !342, line: 61, baseType: !238)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !348, file: !329, line: 55)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !342, line: 62, baseType: !238)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !350, file: !329, line: 57)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !342, line: 43, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !327, line: 52, baseType: !326)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !353, file: !329, line: 58)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !342, line: 44, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !327, line: 54, baseType: !332)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !356, file: !329, line: 59)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !342, line: 45, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !327, line: 56, baseType: !336)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !359, file: !329, line: 60)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !342, line: 46, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !327, line: 58, baseType: !339)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !362, file: !329, line: 62)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !342, line: 101, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !327, line: 72, baseType: !238)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !365, file: !329, line: 63)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !342, line: 87, baseType: !238)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !367, file: !329, line: 65)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !368, line: 24, baseType: !369)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !327, line: 38, baseType: !370)
!370 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !372, file: !329, line: 66)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !368, line: 25, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !327, line: 40, baseType: !374)
!374 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !376, file: !329, line: 67)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !368, line: 26, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !327, line: 42, baseType: !35)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !379, file: !329, line: 68)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !368, line: 27, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !327, line: 45, baseType: !98)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !382, file: !329, line: 70)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !342, line: 71, baseType: !370)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !384, file: !329, line: 71)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !342, line: 73, baseType: !98)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !386, file: !329, line: 72)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !342, line: 74, baseType: !98)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !388, file: !329, line: 73)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !342, line: 75, baseType: !98)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !390, file: !329, line: 75)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !342, line: 49, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !327, line: 53, baseType: !369)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !393, file: !329, line: 76)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !342, line: 50, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !327, line: 55, baseType: !373)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !396, file: !329, line: 77)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !342, line: 51, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !327, line: 57, baseType: !377)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !399, file: !329, line: 78)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !342, line: 52, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !327, line: 59, baseType: !380)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !402, file: !329, line: 80)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !342, line: 102, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !327, line: 73, baseType: !98)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !405, file: !329, line: 81)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !342, line: 90, baseType: !98)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !407, file: !409, line: 53)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !408, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!408 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!409 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/clocale", directory: "")
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !411, file: !409, line: 54)
!411 = !DISubprogram(name: "setlocale", scope: !408, file: !408, line: 122, type: !412, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{!171, !13, !100}
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !415, file: !409, line: 55)
!415 = !DISubprogram(name: "localeconv", scope: !408, file: !408, line: 125, type: !416, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !420, file: !424, line: 64)
!420 = !DISubprogram(name: "isalnum", scope: !421, file: !421, line: 108, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!422 = !DISubroutineType(types: !423)
!423 = !{!13, !13}
!424 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cctype", directory: "")
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !426, file: !424, line: 65)
!426 = !DISubprogram(name: "isalpha", scope: !421, file: !421, line: 109, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !428, file: !424, line: 66)
!428 = !DISubprogram(name: "iscntrl", scope: !421, file: !421, line: 110, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !430, file: !424, line: 67)
!430 = !DISubprogram(name: "isdigit", scope: !421, file: !421, line: 111, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !424, line: 68)
!432 = !DISubprogram(name: "isgraph", scope: !421, file: !421, line: 113, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !434, file: !424, line: 69)
!434 = !DISubprogram(name: "islower", scope: !421, file: !421, line: 112, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !436, file: !424, line: 70)
!436 = !DISubprogram(name: "isprint", scope: !421, file: !421, line: 114, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !438, file: !424, line: 71)
!438 = !DISubprogram(name: "ispunct", scope: !421, file: !421, line: 115, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !440, file: !424, line: 72)
!440 = !DISubprogram(name: "isspace", scope: !421, file: !421, line: 116, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !442, file: !424, line: 73)
!442 = !DISubprogram(name: "isupper", scope: !421, file: !421, line: 117, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !444, file: !424, line: 74)
!444 = !DISubprogram(name: "isxdigit", scope: !421, file: !421, line: 118, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !424, line: 75)
!446 = !DISubprogram(name: "tolower", scope: !421, file: !421, line: 122, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !448, file: !424, line: 76)
!448 = !DISubprogram(name: "toupper", scope: !421, file: !421, line: 125, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !450, file: !424, line: 87)
!450 = !DISubprogram(name: "isblank", scope: !421, file: !421, line: 130, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !452, file: !454, line: 44)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !453, line: 258, baseType: !98)
!453 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "f271377c6e7185560bbbc0bac2bc77fa")
!454 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "d815d3ddb625b8849e2bd401d0f6b354")
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !456, file: !454, line: 45)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !453, line: 259, baseType: !238)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !458, file: !460, line: 52)
!458 = !DISubprogram(name: "abs", scope: !459, file: !459, line: 840, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!460 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h", directory: "")
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !462, file: !464, line: 127)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !459, line: 62, baseType: !463)
!463 = !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!464 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib", directory: "")
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !464, line: 128)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !459, line: 70, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !468, identifier: "_ZTS6ldiv_t")
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !467, file: !459, line: 68, baseType: !238, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !467, file: !459, line: 69, baseType: !238, size: 64, offset: 64)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !472, file: !464, line: 130)
!472 = !DISubprogram(name: "abort", scope: !459, file: !459, line: 591, type: !473, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{null}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !476, file: !464, line: 134)
!476 = !DISubprogram(name: "atexit", scope: !459, file: !459, line: 595, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!13, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !481, file: !464, line: 137)
!481 = !DISubprogram(name: "at_quick_exit", scope: !459, file: !459, line: 600, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !483, file: !464, line: 140)
!483 = !DISubprogram(name: "atof", scope: !459, file: !459, line: 101, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{!222, !100}
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !487, file: !464, line: 141)
!487 = !DISubprogram(name: "atoi", scope: !459, file: !459, line: 104, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{!13, !100}
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !491, file: !464, line: 142)
!491 = !DISubprogram(name: "atol", scope: !459, file: !459, line: 107, type: !492, flags: DIFlagPrototyped, spFlags: 0)
!492 = !DISubroutineType(types: !493)
!493 = !{!238, !100}
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !495, file: !464, line: 143)
!495 = !DISubprogram(name: "bsearch", scope: !459, file: !459, line: 820, type: !496, flags: DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{!148, !498, !498, !96, !96, !500}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !459, line: 808, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!13, !498, !498}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !505, file: !464, line: 144)
!505 = !DISubprogram(name: "calloc", scope: !459, file: !459, line: 542, type: !506, flags: DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{!148, !96, !96}
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !509, file: !464, line: 145)
!509 = !DISubprogram(name: "div", scope: !459, file: !459, line: 852, type: !510, flags: DIFlagPrototyped, spFlags: 0)
!510 = !DISubroutineType(types: !511)
!511 = !{!462, !13, !13}
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !513, file: !464, line: 146)
!513 = !DISubprogram(name: "exit", scope: !459, file: !459, line: 617, type: !514, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !13}
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !517, file: !464, line: 147)
!517 = !DISubprogram(name: "free", scope: !459, file: !459, line: 565, type: !518, flags: DIFlagPrototyped, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !148}
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !521, file: !464, line: 148)
!521 = !DISubprogram(name: "getenv", scope: !459, file: !459, line: 634, type: !522, flags: DIFlagPrototyped, spFlags: 0)
!522 = !DISubroutineType(types: !523)
!523 = !{!171, !100}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !525, file: !464, line: 149)
!525 = !DISubprogram(name: "labs", scope: !459, file: !459, line: 841, type: !526, flags: DIFlagPrototyped, spFlags: 0)
!526 = !DISubroutineType(types: !527)
!527 = !{!238, !238}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !529, file: !464, line: 150)
!529 = !DISubprogram(name: "ldiv", scope: !459, file: !459, line: 854, type: !530, flags: DIFlagPrototyped, spFlags: 0)
!530 = !DISubroutineType(types: !531)
!531 = !{!466, !238, !238}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !533, file: !464, line: 151)
!533 = !DISubprogram(name: "malloc", scope: !459, file: !459, line: 539, type: !534, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!148, !96}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !537, file: !464, line: 153)
!537 = !DISubprogram(name: "mblen", scope: !459, file: !459, line: 922, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{!13, !100, !96}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !541, file: !464, line: 154)
!541 = !DISubprogram(name: "mbstowcs", scope: !459, file: !459, line: 933, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!96, !63, !99, !96}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !545, file: !464, line: 155)
!545 = !DISubprogram(name: "mbtowc", scope: !459, file: !459, line: 925, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!13, !63, !99, !96}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !549, file: !464, line: 157)
!549 = !DISubprogram(name: "qsort", scope: !459, file: !459, line: 830, type: !550, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !148, !96, !96, !500}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !553, file: !464, line: 160)
!553 = !DISubprogram(name: "quick_exit", scope: !459, file: !459, line: 623, type: !514, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !555, file: !464, line: 163)
!555 = !DISubprogram(name: "rand", scope: !459, file: !459, line: 453, type: !556, flags: DIFlagPrototyped, spFlags: 0)
!556 = !DISubroutineType(types: !557)
!557 = !{!13}
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !559, file: !464, line: 164)
!559 = !DISubprogram(name: "realloc", scope: !459, file: !459, line: 550, type: !560, flags: DIFlagPrototyped, spFlags: 0)
!560 = !DISubroutineType(types: !561)
!561 = !{!148, !148, !96}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !563, file: !464, line: 165)
!563 = !DISubprogram(name: "srand", scope: !459, file: !459, line: 455, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !35}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !567, file: !464, line: 166)
!567 = !DISubprogram(name: "strtod", scope: !459, file: !459, line: 117, type: !568, flags: DIFlagPrototyped, spFlags: 0)
!568 = !DISubroutineType(types: !569)
!569 = !{!222, !99, !570}
!570 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !573, file: !464, line: 167)
!573 = !DISubprogram(name: "strtol", scope: !459, file: !459, line: 176, type: !574, flags: DIFlagPrototyped, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{!238, !99, !570, !13}
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !577, file: !464, line: 168)
!577 = !DISubprogram(name: "strtoul", scope: !459, file: !459, line: 180, type: !578, flags: DIFlagPrototyped, spFlags: 0)
!578 = !DISubroutineType(types: !579)
!579 = !{!98, !99, !570, !13}
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !581, file: !464, line: 169)
!581 = !DISubprogram(name: "system", scope: !459, file: !459, line: 784, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !583, file: !464, line: 171)
!583 = !DISubprogram(name: "wcstombs", scope: !459, file: !459, line: 936, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{!96, !170, !73, !96}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !587, file: !464, line: 172)
!587 = !DISubprogram(name: "wctomb", scope: !459, file: !459, line: 929, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{!13, !171, !62}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !591, file: !464, line: 200)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !459, line: 80, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !593, identifier: "_ZTS7lldiv_t")
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !592, file: !459, line: 78, baseType: !295, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !592, file: !459, line: 79, baseType: !295, size: 64, offset: 64)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !597, file: !464, line: 206)
!597 = !DISubprogram(name: "_Exit", scope: !459, file: !459, line: 629, type: !514, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !599, file: !464, line: 210)
!599 = !DISubprogram(name: "llabs", scope: !459, file: !459, line: 844, type: !600, flags: DIFlagPrototyped, spFlags: 0)
!600 = !DISubroutineType(types: !601)
!601 = !{!295, !295}
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !603, file: !464, line: 216)
!603 = !DISubprogram(name: "lldiv", scope: !459, file: !459, line: 858, type: !604, flags: DIFlagPrototyped, spFlags: 0)
!604 = !DISubroutineType(types: !605)
!605 = !{!591, !295, !295}
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !607, file: !464, line: 227)
!607 = !DISubprogram(name: "atoll", scope: !459, file: !459, line: 112, type: !608, flags: DIFlagPrototyped, spFlags: 0)
!608 = !DISubroutineType(types: !609)
!609 = !{!295, !100}
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !611, file: !464, line: 228)
!611 = !DISubprogram(name: "strtoll", scope: !459, file: !459, line: 200, type: !612, flags: DIFlagPrototyped, spFlags: 0)
!612 = !DISubroutineType(types: !613)
!613 = !{!295, !99, !570, !13}
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !615, file: !464, line: 229)
!615 = !DISubprogram(name: "strtoull", scope: !459, file: !459, line: 205, type: !616, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{!300, !99, !570, !13}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !619, file: !464, line: 231)
!619 = !DISubprogram(name: "strtof", scope: !459, file: !459, line: 123, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!229, !99, !570}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !623, file: !464, line: 232)
!623 = !DISubprogram(name: "strtold", scope: !459, file: !459, line: 126, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{!290, !99, !570}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !464, line: 240)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !597, file: !464, line: 242)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !599, file: !464, line: 244)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !630, file: !464, line: 245)
!630 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !286, file: !464, line: 213, type: !604, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !603, file: !464, line: 246)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !607, file: !464, line: 248)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !619, file: !464, line: 249)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !611, file: !464, line: 250)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !615, file: !464, line: 251)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !623, file: !464, line: 252)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !638, file: !640, line: 98)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !639, line: 7, baseType: !56)
!639 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!640 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdio", directory: "")
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !642, file: !640, line: 99)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !643, line: 84, baseType: !644)
!643 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !645, line: 14, baseType: !646)
!645 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !645, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !648, file: !640, line: 101)
!648 = !DISubprogram(name: "clearerr", scope: !643, file: !643, line: 757, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !653, file: !640, line: 102)
!653 = !DISubprogram(name: "fclose", scope: !643, file: !643, line: 213, type: !654, flags: DIFlagPrototyped, spFlags: 0)
!654 = !DISubroutineType(types: !655)
!655 = !{!13, !651}
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !657, file: !640, line: 103)
!657 = !DISubprogram(name: "feof", scope: !643, file: !643, line: 759, type: !654, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !659, file: !640, line: 104)
!659 = !DISubprogram(name: "ferror", scope: !643, file: !643, line: 761, type: !654, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !661, file: !640, line: 105)
!661 = !DISubprogram(name: "fflush", scope: !643, file: !643, line: 218, type: !654, flags: DIFlagPrototyped, spFlags: 0)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !663, file: !640, line: 106)
!663 = !DISubprogram(name: "fgetc", scope: !643, file: !643, line: 485, type: !654, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !665, file: !640, line: 107)
!665 = !DISubprogram(name: "fgetpos", scope: !643, file: !643, line: 731, type: !666, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{!13, !668, !669}
!668 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !651)
!669 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !672, file: !640, line: 108)
!672 = !DISubprogram(name: "fgets", scope: !643, file: !643, line: 564, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DISubroutineType(types: !674)
!674 = !{!171, !170, !13, !668}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !676, file: !640, line: 109)
!676 = !DISubprogram(name: "fopen", scope: !643, file: !643, line: 246, type: !677, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DISubroutineType(types: !678)
!678 = !{!651, !99, !99}
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !680, file: !640, line: 110)
!680 = !DISubprogram(name: "fprintf", scope: !643, file: !643, line: 326, type: !681, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DISubroutineType(types: !682)
!682 = !{!13, !668, !99, null}
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !684, file: !640, line: 111)
!684 = !DISubprogram(name: "fputc", scope: !643, file: !643, line: 521, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DISubroutineType(types: !686)
!686 = !{!13, !13, !651}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !688, file: !640, line: 112)
!688 = !DISubprogram(name: "fputs", scope: !643, file: !643, line: 626, type: !689, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DISubroutineType(types: !690)
!690 = !{!13, !99, !668}
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !692, file: !640, line: 113)
!692 = !DISubprogram(name: "fread", scope: !643, file: !643, line: 646, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{!96, !695, !96, !96, !668}
!695 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !148)
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !697, file: !640, line: 114)
!697 = !DISubprogram(name: "freopen", scope: !643, file: !643, line: 252, type: !698, flags: DIFlagPrototyped, spFlags: 0)
!698 = !DISubroutineType(types: !699)
!699 = !{!651, !99, !99, !668}
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !640, line: 115)
!701 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !643, file: !643, line: 407, type: !681, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !703, file: !640, line: 116)
!703 = !DISubprogram(name: "fseek", scope: !643, file: !643, line: 684, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{!13, !651, !238, !13}
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !707, file: !640, line: 117)
!707 = !DISubprogram(name: "fsetpos", scope: !643, file: !643, line: 736, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!13, !651, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !713, file: !640, line: 118)
!713 = !DISubprogram(name: "ftell", scope: !643, file: !643, line: 689, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!238, !651}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !717, file: !640, line: 119)
!717 = !DISubprogram(name: "fwrite", scope: !643, file: !643, line: 652, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!96, !720, !96, !96, !668}
!720 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !498)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !722, file: !640, line: 120)
!722 = !DISubprogram(name: "getc", scope: !643, file: !643, line: 486, type: !654, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !724, file: !640, line: 121)
!724 = !DISubprogram(name: "getchar", scope: !643, file: !643, line: 492, type: !556, flags: DIFlagPrototyped, spFlags: 0)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !726, file: !640, line: 126)
!726 = !DISubprogram(name: "perror", scope: !643, file: !643, line: 775, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !100}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !730, file: !640, line: 127)
!730 = !DISubprogram(name: "printf", scope: !643, file: !643, line: 332, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!13, !99, null}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !734, file: !640, line: 128)
!734 = !DISubprogram(name: "putc", scope: !643, file: !643, line: 522, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !736, file: !640, line: 129)
!736 = !DISubprogram(name: "putchar", scope: !643, file: !643, line: 528, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !738, file: !640, line: 130)
!738 = !DISubprogram(name: "puts", scope: !643, file: !643, line: 632, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !740, file: !640, line: 131)
!740 = !DISubprogram(name: "remove", scope: !643, file: !643, line: 146, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !640, line: 132)
!742 = !DISubprogram(name: "rename", scope: !643, file: !643, line: 148, type: !743, flags: DIFlagPrototyped, spFlags: 0)
!743 = !DISubroutineType(types: !744)
!744 = !{!13, !100, !100}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !640, line: 133)
!746 = !DISubprogram(name: "rewind", scope: !643, file: !643, line: 694, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !748, file: !640, line: 134)
!748 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !643, file: !643, line: 410, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !750, file: !640, line: 135)
!750 = !DISubprogram(name: "setbuf", scope: !643, file: !643, line: 304, type: !751, flags: DIFlagPrototyped, spFlags: 0)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !668, !170}
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !754, file: !640, line: 136)
!754 = !DISubprogram(name: "setvbuf", scope: !643, file: !643, line: 308, type: !755, flags: DIFlagPrototyped, spFlags: 0)
!755 = !DISubroutineType(types: !756)
!756 = !{!13, !668, !170, !13, !96}
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !758, file: !640, line: 137)
!758 = !DISubprogram(name: "sprintf", scope: !643, file: !643, line: 334, type: !759, flags: DIFlagPrototyped, spFlags: 0)
!759 = !DISubroutineType(types: !760)
!760 = !{!13, !170, !99, null}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !762, file: !640, line: 138)
!762 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !643, file: !643, line: 412, type: !763, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DISubroutineType(types: !764)
!764 = !{!13, !99, !99, null}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !766, file: !640, line: 139)
!766 = !DISubprogram(name: "tmpfile", scope: !643, file: !643, line: 173, type: !767, flags: DIFlagPrototyped, spFlags: 0)
!767 = !DISubroutineType(types: !768)
!768 = !{!651}
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !770, file: !640, line: 141)
!770 = !DISubprogram(name: "tmpnam", scope: !643, file: !643, line: 187, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DISubroutineType(types: !772)
!772 = !{!171, !171}
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !774, file: !640, line: 143)
!774 = !DISubprogram(name: "ungetc", scope: !643, file: !643, line: 639, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !776, file: !640, line: 144)
!776 = !DISubprogram(name: "vfprintf", scope: !643, file: !643, line: 341, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DISubroutineType(types: !778)
!778 = !{!13, !668, !99, !141}
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !780, file: !640, line: 145)
!780 = !DISubprogram(name: "vprintf", scope: !643, file: !643, line: 347, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!13, !99, !141}
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !784, file: !640, line: 146)
!784 = !DISubprogram(name: "vsprintf", scope: !643, file: !643, line: 349, type: !785, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DISubroutineType(types: !786)
!786 = !{!13, !170, !99, !141}
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !788, file: !640, line: 175)
!788 = !DISubprogram(name: "snprintf", scope: !643, file: !643, line: 354, type: !789, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DISubroutineType(types: !790)
!790 = !{!13, !170, !96, !99, null}
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !792, file: !640, line: 176)
!792 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !643, file: !643, line: 451, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !794, file: !640, line: 177)
!794 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !643, file: !643, line: 456, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !796, file: !640, line: 178)
!796 = !DISubprogram(name: "vsnprintf", scope: !643, file: !643, line: 358, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!13, !170, !96, !99, !141}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !286, entity: !800, file: !640, line: 179)
!800 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !643, file: !643, line: 459, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!13, !99, !99, !141}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !788, file: !640, line: 185)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !792, file: !640, line: 186)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !794, file: !640, line: 187)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !640, line: 188)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !800, file: !640, line: 189)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !809, file: !813, line: 82)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !810, line: 48, baseType: !811)
!810 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!813 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwctype", directory: "")
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !815, file: !813, line: 83)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !816, line: 38, baseType: !98)
!816 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !42, file: !813, line: 84)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !813, line: 86)
!819 = !DISubprogram(name: "iswalnum", scope: !816, file: !816, line: 95, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !821, file: !813, line: 87)
!821 = !DISubprogram(name: "iswalpha", scope: !816, file: !816, line: 101, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !823, file: !813, line: 89)
!823 = !DISubprogram(name: "iswblank", scope: !816, file: !816, line: 146, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !825, file: !813, line: 91)
!825 = !DISubprogram(name: "iswcntrl", scope: !816, file: !816, line: 104, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !827, file: !813, line: 92)
!827 = !DISubprogram(name: "iswctype", scope: !816, file: !816, line: 159, type: !828, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DISubroutineType(types: !829)
!829 = !{!13, !42, !815}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !831, file: !813, line: 93)
!831 = !DISubprogram(name: "iswdigit", scope: !816, file: !816, line: 108, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !813, line: 94)
!833 = !DISubprogram(name: "iswgraph", scope: !816, file: !816, line: 112, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !813, line: 95)
!835 = !DISubprogram(name: "iswlower", scope: !816, file: !816, line: 117, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !837, file: !813, line: 96)
!837 = !DISubprogram(name: "iswprint", scope: !816, file: !816, line: 120, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !813, line: 97)
!839 = !DISubprogram(name: "iswpunct", scope: !816, file: !816, line: 125, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !841, file: !813, line: 98)
!841 = !DISubprogram(name: "iswspace", scope: !816, file: !816, line: 130, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !843, file: !813, line: 99)
!843 = !DISubprogram(name: "iswupper", scope: !816, file: !816, line: 135, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !813, line: 100)
!845 = !DISubprogram(name: "iswxdigit", scope: !816, file: !816, line: 140, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !847, file: !813, line: 101)
!847 = !DISubprogram(name: "towctrans", scope: !810, file: !810, line: 55, type: !848, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DISubroutineType(types: !849)
!849 = !{!42, !42, !809}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !851, file: !813, line: 102)
!851 = !DISubprogram(name: "towlower", scope: !816, file: !816, line: 166, type: !852, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DISubroutineType(types: !853)
!853 = !{!42, !42}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !855, file: !813, line: 103)
!855 = !DISubprogram(name: "towupper", scope: !816, file: !816, line: 169, type: !852, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !857, file: !813, line: 104)
!857 = !DISubprogram(name: "wctrans", scope: !810, file: !810, line: 52, type: !858, flags: DIFlagPrototyped, spFlags: 0)
!858 = !DISubroutineType(types: !859)
!859 = !{!809, !100}
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !861, file: !813, line: 105)
!861 = !DISubprogram(name: "wctype", scope: !816, file: !816, line: 155, type: !862, flags: DIFlagPrototyped, spFlags: 0)
!862 = !DISubroutineType(types: !863)
!863 = !{!815, !100}
!864 = !{i32 7, !"Dwarf Version", i32 5}
!865 = !{i32 2, !"Debug Info Version", i32 3}
!866 = !{i32 1, !"wchar_size", i32 4}
!867 = !{i32 7, !"PIC Level", i32 2}
!868 = !{i32 7, !"PIE Level", i32 2}
!869 = !{i32 7, !"uwtable", i32 2}
!870 = !{i32 7, !"frame-pointer", i32 2}
!871 = !{!"clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git c82e0d0f5b2b538e954f35a56aa551392e60f4ca)"}
!872 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !145, file: !145, type: !473, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !873)
!873 = !{}
!874 = !DILocation(line: 74, column: 25, scope: !875)
!875 = !DILexicalBlockFile(scope: !872, file: !3, discriminator: 0)
!876 = !DILocation(line: 0, scope: !872)
!877 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !145, file: !145, type: !473, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !873)
!878 = !DILocation(line: 5, column: 28, scope: !879)
!879 = !DILexicalBlockFile(scope: !877, file: !10, discriminator: 0)
!880 = !DILocation(line: 0, scope: !877)
!881 = !DILocation(line: 5, column: 41, scope: !879)
!882 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 7, type: !556, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !873)
!883 = !DILocation(line: 9, column: 5, scope: !882)
!884 = !DILocation(line: 9, column: 10, scope: !882)
!885 = !DILocalVariable(name: "array", scope: !882, file: !10, line: 9, type: !12)
!886 = !DILocation(line: 9, column: 25, scope: !882)
!887 = !DILocation(line: 27, column: 5, scope: !882)
!888 = !DILocation(line: 27, column: 9, scope: !882)
!889 = !DILocalVariable(name: "value", scope: !882, file: !10, line: 27, type: !13)
!890 = !DILocation(line: 27, column: 17, scope: !882)
!891 = !{!"branch_weights", i32 1, i32 1000}
!892 = !DILocation(line: 29, column: 9, scope: !893)
!893 = distinct !DILexicalBlock(scope: !882, file: !10, line: 29, column: 9)
!894 = !DILocation(line: 29, column: 9, scope: !882)
!895 = !DILocation(line: 31, column: 19, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !10, line: 30, column: 5)
!897 = !DILocation(line: 32, column: 5, scope: !896)
!898 = !DILocation(line: 33, column: 10, scope: !882)
!899 = !DILocation(line: 33, column: 5, scope: !882)
!900 = !DILocation(line: 35, column: 1, scope: !882)
!901 = !DILocation(line: 34, column: 5, scope: !882)
!902 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_uum.cc", scope: !145, file: !145, type: !903, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !873)
!903 = !DISubroutineType(types: !873)
!904 = !DILocation(line: 0, scope: !902)
