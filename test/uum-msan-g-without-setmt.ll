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
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [12 x i8] c"ok, no uum\0A\00", align 1, !dbg !7
@llvm.used = appending global [1 x ptr] [ptr @msan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_uum.cc, ptr null }, { i32, ptr, ptr } { i32 0, ptr @msan.module_ctor, ptr null }]
@__msan_retval_tls = external thread_local(initialexec) global [100 x i64]
@__msan_retval_origin_tls = external thread_local(initialexec) global i32
@__msan_param_tls = external thread_local(initialexec) global [100 x i64]
@__msan_param_origin_tls = external thread_local(initialexec) global [200 x i32]
@__msan_va_arg_tls = external thread_local(initialexec) global [100 x i64]
@__msan_va_arg_origin_tls = external thread_local(initialexec) global [200 x i32]
@__msan_va_arg_overflow_size_tls = external thread_local(initialexec) global i64
@.str.1 = private constant [48 x i8] c"  *_msprop = or i64 *_msld2, 0, !dbg !881 : %x\0A\00"
@.str.2 = private constant [55 x i8] c"  *_mscmp = icmp ne i64 *_msprop, 250, !dbg !881 : %x\0A\00"
@.str.3 = private constant [51 x i8] c"  *_msprop_icmp = and i1 *35, *34, !dbg !883 : %x\0A\00"

; Function Attrs: noinline sanitize_memory uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !870 {
entry:
  call void @llvm.donothing(), !dbg !872
  store i64 0, ptr @__msan_param_tls, align 8, !dbg !872
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !872
  store i64 0, ptr @__msan_param_tls, align 8, !dbg !874
  store i64 0, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 8) to ptr), align 8, !dbg !874
  store i64 0, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 16) to ptr), align 8, !dbg !874
  store i32 0, ptr @__msan_retval_tls, align 8, !dbg !874
  %0 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !874
  %_msret = load i32, ptr @__msan_retval_tls, align 8, !dbg !872
  ret void, !dbg !872
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline norecurse optnone sanitize_memory uwtable
define dso_local noundef i32 @main() #4 !dbg !875 {
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
  store i64 250, ptr %5, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #3, !dbg !876
  %6 = ptrtoint ptr %array to i64, !dbg !877
  %7 = xor i64 %6, 87960930222080, !dbg !877
  %8 = inttoptr i64 %7 to ptr, !dbg !877
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 -1, i64 8, i1 false), !dbg !877
  call void @llvm.dbg.declare(metadata ptr %array, metadata !878, metadata !DIExpression()), !dbg !877
  store i64 0, ptr @__msan_param_tls, align 8, !dbg !879
  store i64 0, ptr @__msan_retval_tls, align 8, !dbg !879
  %call = call noalias ptr @malloc(i64 noundef 48) #11, !dbg !879
  %_msret = load i64, ptr @__msan_retval_tls, align 8, !dbg !877
  %9 = ptrtoint ptr %array to i64, !dbg !877
  %10 = xor i64 %9, 87960930222080, !dbg !877
  %11 = inttoptr i64 %10 to ptr, !dbg !877
  store i64 %_msret, ptr %11, align 8, !dbg !877
  store ptr %call, ptr %array, align 8, !dbg !877
  %12 = load ptr, ptr %array, align 8, !dbg !880
  %13 = ptrtoint ptr %array to i64, !dbg !881
  %14 = xor i64 %13, 87960930222080, !dbg !881
  %15 = inttoptr i64 %14 to ptr, !dbg !881
  %_msld = load i64, ptr %15, align 8, !dbg !881
  %16 = call ptr @__msan_memset(ptr %12, i32 15, i64 20), !dbg !881
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #3, !dbg !882
  %17 = ptrtoint ptr %value to i64, !dbg !883
  %18 = xor i64 %17, 87960930222080, !dbg !883
  %19 = inttoptr i64 %18 to ptr, !dbg !883
  call void @llvm.memset.p0.i64(ptr align 4 %19, i8 -1, i64 4, i1 false), !dbg !883
  call void @llvm.dbg.declare(metadata ptr %value, metadata !884, metadata !DIExpression()), !dbg !883
  %20 = load ptr, ptr %array, align 8, !dbg !885
  %21 = ptrtoint ptr %array to i64, !dbg !885
  %22 = xor i64 %21, 87960930222080, !dbg !885
  %23 = inttoptr i64 %22 to ptr, !dbg !885
  %_msld2 = load i64, ptr %23, align 8, !dbg !885
  %_msprop = or i64 %_msld2, 0, !dbg !885
  %arrayidx = getelementptr inbounds i32, ptr %20, i64 3, !dbg !885
  %24 = call i8 (ptr, ...) @printf(ptr @.str.1, i64 %_msprop), !dbg !885
  %_mscmp = icmp ne i64 %_msprop, 250, !dbg !885
  %25 = call i8 (ptr, ...) @printf(ptr @.str.2, i1 %_mscmp), !dbg !885
  br i1 %_mscmp, label %26, label %27, !dbg !885, !prof !886

26:                                               ; preds = %entry
  call void @__msan_warning_with_origin_noreturn(i32 0) #12, !dbg !885
  unreachable, !dbg !885

27:                                               ; preds = %entry
  %28 = load i32, ptr %arrayidx, align 4, !dbg !885
  %29 = ptrtoint ptr %arrayidx to i64, !dbg !883
  %30 = xor i64 %29, 87960930222080, !dbg !883
  %31 = inttoptr i64 %30 to ptr, !dbg !883
  %_msld3 = load i32, ptr %31, align 4, !dbg !883
  %32 = ptrtoint ptr %value to i64, !dbg !883
  %33 = xor i64 %32, 87960930222080, !dbg !883
  %34 = inttoptr i64 %33 to ptr, !dbg !883
  store i32 %_msld3, ptr %34, align 4, !dbg !883
  store i32 %28, ptr %value, align 4, !dbg !883
  %35 = load i32, ptr %value, align 4, !dbg !887
  %36 = ptrtoint ptr %value to i64, !dbg !887
  %37 = xor i64 %36, 87960930222080, !dbg !887
  %38 = inttoptr i64 %37 to ptr, !dbg !887
  %_msld4 = load i32, ptr %38, align 4, !dbg !887
  %39 = xor i32 %35, 0, !dbg !887
  %40 = or i32 %_msld4, 0, !dbg !887
  %41 = xor i32 %40, -1, !dbg !887
  %42 = and i32 %41, %39, !dbg !887
  %43 = icmp eq i32 %42, 0, !dbg !887
  %44 = icmp ne i32 %40, 0, !dbg !887
  %_msprop_icmp = and i1 %44, %43, !dbg !887
  %tobool = icmp ne i32 %35, 0, !dbg !887
  %45 = call i8 (ptr, ...) @printf(ptr @.str.3, i1 %_msprop_icmp), !dbg !889
  br i1 %_msprop_icmp, label %46, label %47, !dbg !889, !prof !886

46:                                               ; preds = %27
  call void @__msan_warning_with_origin_noreturn(i32 0) #12, !dbg !889
  unreachable, !dbg !889

47:                                               ; preds = %27
  br i1 %tobool, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %47
  store i64 0, ptr @__msan_param_tls, align 8, !dbg !890
  store i64 0, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 8) to ptr), align 8, !dbg !890
  store i64 0, ptr @__msan_retval_tls, align 8, !dbg !890
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !890
  %_msret5 = load i64, ptr @__msan_retval_tls, align 8, !dbg !892
  br label %if.end, !dbg !892

if.end:                                           ; preds = %if.then, %47
  %48 = load ptr, ptr %array, align 8, !dbg !893
  %49 = ptrtoint ptr %array to i64, !dbg !894
  %50 = xor i64 %49, 87960930222080, !dbg !894
  %51 = inttoptr i64 %50 to ptr, !dbg !894
  %_msld6 = load i64, ptr %51, align 8, !dbg !894
  store i64 %_msld6, ptr @__msan_param_tls, align 8, !dbg !894
  call void @free(ptr noundef %48) #3, !dbg !894
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #3, !dbg !895
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #3, !dbg !895
  store i32 0, ptr @__msan_retval_tls, align 8, !dbg !896
  ret i32 0, !dbg !896
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline sanitize_memory uwtable
define internal void @_GLOBAL__sub_I_uum.cc() #0 section ".text.startup" !dbg !897 {
entry:
  call void @llvm.donothing(), !dbg !899
  call void @__cxx_global_var_init(), !dbg !899
  ret void
}

declare void @__msan_init()

; Function Attrs: nounwind uwtable
define internal void @msan.module_ctor() #9 {
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
declare void @llvm.donothing() #10

declare i8 @printf(ptr, ...)

attributes #0 = { noinline sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone sanitize_memory uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #9 = { nounwind uwtable "frame-pointer"="all" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nomerge }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!862, !863, !864, !865, !866, !867, !868}
!llvm.ident = !{!869}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 608, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 22, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "uum.cc", directory: "/home/syx/sanitizer/tmp/test", checksumkind: CSK_MD5, checksum: "2bd48a546074891ae14eb7226dc32ad2")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 96, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 12)
!15 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !9, producer: "clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git c82e0d0f5b2b538e954f35a56aa551392e60f4ca)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !16, globals: !19, imports: !20, splitDebugInlining: false, nameTableKind: None)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!0, !7}
!20 = !{!21, !39, !42, !47, !55, !63, !67, !74, !78, !82, !84, !86, !90, !101, !105, !111, !117, !119, !123, !127, !131, !135, !148, !150, !154, !158, !162, !164, !170, !174, !178, !180, !182, !186, !194, !198, !202, !206, !208, !214, !216, !223, !228, !232, !237, !241, !245, !249, !251, !253, !257, !261, !265, !267, !271, !275, !277, !279, !283, !289, !294, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !313, !317, !321, !328, !332, !335, !338, !341, !343, !345, !347, !350, !353, !356, !359, !362, !364, !369, !373, !376, !379, !381, !383, !385, !387, !390, !393, !396, !399, !402, !404, !408, !412, !417, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !453, !455, !459, !463, !469, !473, !478, !480, !484, !488, !492, !502, !506, !510, !514, !518, !522, !526, !530, !534, !538, !542, !546, !550, !552, !556, !560, !564, !570, !574, !578, !580, !584, !588, !594, !596, !600, !604, !608, !612, !616, !620, !624, !625, !626, !627, !629, !630, !631, !632, !633, !634, !635, !639, !645, !650, !654, !656, !658, !660, !662, !669, !673, !677, !681, !685, !689, !694, !698, !700, !704, !710, !714, !719, !721, !723, !727, !731, !733, !735, !737, !739, !743, !745, !747, !751, !755, !759, !763, !767, !771, !773, !777, !781, !785, !789, !791, !793, !797, !801, !802, !803, !804, !805, !806, !812, !815, !816, !818, !820, !822, !824, !828, !830, !832, !834, !836, !838, !840, !842, !844, !848, !852, !854, !858}
!21 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !22, file: !38, line: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !23, line: 6, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !27, identifier: "_ZTS11__mbstate_t")
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !26, file: !25, line: 15, baseType: !18, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !26, file: !25, line: 20, baseType: !30, size: 32, offset: 32)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !25, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !31, identifier: "_ZTSN11__mbstate_tUt_E")
!31 = !{!32, !34}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !30, file: !25, line: 18, baseType: !33, size: 32)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !30, file: !25, line: 19, baseType: !35, size: 32)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 4)
!38 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwchar", directory: "")
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !40, file: !38, line: 141)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !41, line: 20, baseType: !33)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !43, file: !38, line: 143)
!43 = !DISubprogram(name: "btowc", scope: !44, file: !44, line: 284, type: !45, flags: DIFlagPrototyped, spFlags: 0)
!44 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!45 = !DISubroutineType(types: !46)
!46 = !{!40, !18}
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !48, file: !38, line: 144)
!48 = !DISubprogram(name: "fgetwc", scope: !44, file: !44, line: 726, type: !49, flags: DIFlagPrototyped, spFlags: 0)
!49 = !DISubroutineType(types: !50)
!50 = !{!40, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !53, line: 5, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !56, file: !38, line: 145)
!56 = !DISubprogram(name: "fgetws", scope: !44, file: !44, line: 755, type: !57, flags: DIFlagPrototyped, spFlags: 0)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !61, !18, !62}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !64, file: !38, line: 146)
!64 = !DISubprogram(name: "fputwc", scope: !44, file: !44, line: 740, type: !65, flags: DIFlagPrototyped, spFlags: 0)
!65 = !DISubroutineType(types: !66)
!66 = !{!40, !60, !51}
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !68, file: !38, line: 147)
!68 = !DISubprogram(name: "fputws", scope: !44, file: !44, line: 762, type: !69, flags: DIFlagPrototyped, spFlags: 0)
!69 = !DISubroutineType(types: !70)
!70 = !{!18, !71, !62}
!71 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !75, file: !38, line: 148)
!75 = !DISubprogram(name: "fwide", scope: !44, file: !44, line: 573, type: !76, flags: DIFlagPrototyped, spFlags: 0)
!76 = !DISubroutineType(types: !77)
!77 = !{!18, !51, !18}
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !79, file: !38, line: 149)
!79 = !DISubprogram(name: "fwprintf", scope: !44, file: !44, line: 580, type: !80, flags: DIFlagPrototyped, spFlags: 0)
!80 = !DISubroutineType(types: !81)
!81 = !{!18, !62, !71, null}
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !83, file: !38, line: 150)
!83 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !44, file: !44, line: 640, type: !80, flags: DIFlagPrototyped, spFlags: 0)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !85, file: !38, line: 151)
!85 = !DISubprogram(name: "getwc", scope: !44, file: !44, line: 727, type: !49, flags: DIFlagPrototyped, spFlags: 0)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !87, file: !38, line: 152)
!87 = !DISubprogram(name: "getwchar", scope: !44, file: !44, line: 733, type: !88, flags: DIFlagPrototyped, spFlags: 0)
!88 = !DISubroutineType(types: !89)
!89 = !{!40}
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !91, file: !38, line: 153)
!91 = !DISubprogram(name: "mbrlen", scope: !44, file: !44, line: 307, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !97, !94, !99}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "/usr/local/lib/clang/15.0.4/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "b76978376d35d5cd171876ac58ac1256")
!96 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !102, file: !38, line: 154)
!102 = !DISubprogram(name: "mbrtowc", scope: !44, file: !44, line: 296, type: !103, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{!94, !61, !97, !94, !99}
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !106, file: !38, line: 155)
!106 = !DISubprogram(name: "mbsinit", scope: !44, file: !44, line: 292, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{!18, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !112, file: !38, line: 156)
!112 = !DISubprogram(name: "mbsrtowcs", scope: !44, file: !44, line: 337, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!94, !61, !115, !94, !99}
!115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !118, file: !38, line: 157)
!118 = !DISubprogram(name: "putwc", scope: !44, file: !44, line: 741, type: !65, flags: DIFlagPrototyped, spFlags: 0)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !120, file: !38, line: 158)
!120 = !DISubprogram(name: "putwchar", scope: !44, file: !44, line: 747, type: !121, flags: DIFlagPrototyped, spFlags: 0)
!121 = !DISubroutineType(types: !122)
!122 = !{!40, !60}
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !124, file: !38, line: 160)
!124 = !DISubprogram(name: "swprintf", scope: !44, file: !44, line: 590, type: !125, flags: DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{!18, !61, !94, !71, null}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !128, file: !38, line: 162)
!128 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !44, file: !44, line: 647, type: !129, flags: DIFlagPrototyped, spFlags: 0)
!129 = !DISubroutineType(types: !130)
!130 = !{!18, !71, !71, null}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !132, file: !38, line: 163)
!132 = !DISubprogram(name: "ungetwc", scope: !44, file: !44, line: 770, type: !133, flags: DIFlagPrototyped, spFlags: 0)
!133 = !DISubroutineType(types: !134)
!134 = !{!40, !40, !51}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !136, file: !38, line: 164)
!136 = !DISubprogram(name: "vfwprintf", scope: !44, file: !44, line: 598, type: !137, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{!18, !62, !71, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !141, identifier: "_ZTS13__va_list_tag")
!141 = !{!142, !144, !145, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !140, file: !143, baseType: !33, size: 32)
!143 = !DIFile(filename: "uum.cc", directory: "/home/syx/sanitizer/tmp/test")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !140, file: !143, baseType: !33, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !140, file: !143, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !140, file: !143, baseType: !146, size: 64, offset: 128)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !149, file: !38, line: 166)
!149 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !44, file: !44, line: 693, type: !137, flags: DIFlagPrototyped, spFlags: 0)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !151, file: !38, line: 169)
!151 = !DISubprogram(name: "vswprintf", scope: !44, file: !44, line: 611, type: !152, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!18, !61, !94, !71, !139}
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !155, file: !38, line: 172)
!155 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !44, file: !44, line: 700, type: !156, flags: DIFlagPrototyped, spFlags: 0)
!156 = !DISubroutineType(types: !157)
!157 = !{!18, !71, !71, !139}
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !159, file: !38, line: 174)
!159 = !DISubprogram(name: "vwprintf", scope: !44, file: !44, line: 606, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!18, !71, !139}
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !163, file: !38, line: 176)
!163 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !44, file: !44, line: 697, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !165, file: !38, line: 178)
!165 = !DISubprogram(name: "wcrtomb", scope: !44, file: !44, line: 301, type: !166, flags: DIFlagPrototyped, spFlags: 0)
!166 = !DISubroutineType(types: !167)
!167 = !{!94, !168, !60, !99}
!168 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !171, file: !38, line: 179)
!171 = !DISubprogram(name: "wcscat", scope: !44, file: !44, line: 97, type: !172, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DISubroutineType(types: !173)
!173 = !{!59, !61, !71}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !175, file: !38, line: 180)
!175 = !DISubprogram(name: "wcscmp", scope: !44, file: !44, line: 106, type: !176, flags: DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!18, !72, !72}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !179, file: !38, line: 181)
!179 = !DISubprogram(name: "wcscoll", scope: !44, file: !44, line: 131, type: !176, flags: DIFlagPrototyped, spFlags: 0)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !38, line: 182)
!181 = !DISubprogram(name: "wcscpy", scope: !44, file: !44, line: 87, type: !172, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !183, file: !38, line: 183)
!183 = !DISubprogram(name: "wcscspn", scope: !44, file: !44, line: 187, type: !184, flags: DIFlagPrototyped, spFlags: 0)
!184 = !DISubroutineType(types: !185)
!185 = !{!94, !72, !72}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !187, file: !38, line: 184)
!187 = !DISubprogram(name: "wcsftime", scope: !44, file: !44, line: 834, type: !188, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{!94, !61, !94, !71, !190}
!190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !44, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !195, file: !38, line: 185)
!195 = !DISubprogram(name: "wcslen", scope: !44, file: !44, line: 222, type: !196, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{!94, !72}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !199, file: !38, line: 186)
!199 = !DISubprogram(name: "wcsncat", scope: !44, file: !44, line: 101, type: !200, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DISubroutineType(types: !201)
!201 = !{!59, !61, !71, !94}
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !203, file: !38, line: 187)
!203 = !DISubprogram(name: "wcsncmp", scope: !44, file: !44, line: 109, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{!18, !72, !72, !94}
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !207, file: !38, line: 188)
!207 = !DISubprogram(name: "wcsncpy", scope: !44, file: !44, line: 92, type: !200, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !209, file: !38, line: 189)
!209 = !DISubprogram(name: "wcsrtombs", scope: !44, file: !44, line: 343, type: !210, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{!94, !168, !212, !94, !99}
!212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !215, file: !38, line: 190)
!215 = !DISubprogram(name: "wcsspn", scope: !44, file: !44, line: 191, type: !184, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !217, file: !38, line: 191)
!217 = !DISubprogram(name: "wcstod", scope: !44, file: !44, line: 377, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !71, !221}
!220 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!221 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !224, file: !38, line: 193)
!224 = !DISubprogram(name: "wcstof", scope: !44, file: !44, line: 382, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !71, !221}
!227 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !229, file: !38, line: 195)
!229 = !DISubprogram(name: "wcstok", scope: !44, file: !44, line: 217, type: !230, flags: DIFlagPrototyped, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{!59, !61, !71, !221}
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !233, file: !38, line: 196)
!233 = !DISubprogram(name: "wcstol", scope: !44, file: !44, line: 428, type: !234, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !71, !221, !18}
!236 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !238, file: !38, line: 197)
!238 = !DISubprogram(name: "wcstoul", scope: !44, file: !44, line: 433, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!96, !71, !221, !18}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !242, file: !38, line: 198)
!242 = !DISubprogram(name: "wcsxfrm", scope: !44, file: !44, line: 135, type: !243, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{!94, !61, !71, !94}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !246, file: !38, line: 199)
!246 = !DISubprogram(name: "wctob", scope: !44, file: !44, line: 288, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{!18, !40}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !250, file: !38, line: 200)
!250 = !DISubprogram(name: "wmemcmp", scope: !44, file: !44, line: 258, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !252, file: !38, line: 201)
!252 = !DISubprogram(name: "wmemcpy", scope: !44, file: !44, line: 262, type: !200, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !254, file: !38, line: 202)
!254 = !DISubprogram(name: "wmemmove", scope: !44, file: !44, line: 267, type: !255, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{!59, !59, !72, !94}
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !258, file: !38, line: 203)
!258 = !DISubprogram(name: "wmemset", scope: !44, file: !44, line: 271, type: !259, flags: DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{!59, !59, !60, !94}
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !262, file: !38, line: 204)
!262 = !DISubprogram(name: "wprintf", scope: !44, file: !44, line: 587, type: !263, flags: DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!18, !71, null}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !266, file: !38, line: 205)
!266 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !44, file: !44, line: 644, type: !263, flags: DIFlagPrototyped, spFlags: 0)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !268, file: !38, line: 206)
!268 = !DISubprogram(name: "wcschr", scope: !44, file: !44, line: 164, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{!59, !72, !60}
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !272, file: !38, line: 207)
!272 = !DISubprogram(name: "wcspbrk", scope: !44, file: !44, line: 201, type: !273, flags: DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{!59, !72, !72}
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !276, file: !38, line: 208)
!276 = !DISubprogram(name: "wcsrchr", scope: !44, file: !44, line: 174, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !278, file: !38, line: 209)
!278 = !DISubprogram(name: "wcsstr", scope: !44, file: !44, line: 212, type: !273, flags: DIFlagPrototyped, spFlags: 0)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !280, file: !38, line: 210)
!280 = !DISubprogram(name: "wmemchr", scope: !44, file: !44, line: 253, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!59, !72, !60, !94}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !285, file: !38, line: 251)
!284 = !DINamespace(name: "__gnu_cxx", scope: null)
!285 = !DISubprogram(name: "wcstold", scope: !44, file: !44, line: 384, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !71, !221}
!288 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !290, file: !38, line: 260)
!290 = !DISubprogram(name: "wcstoll", scope: !44, file: !44, line: 441, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !71, !221, !18}
!293 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !295, file: !38, line: 261)
!295 = !DISubprogram(name: "wcstoull", scope: !44, file: !44, line: 448, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !71, !221, !18}
!298 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !285, file: !38, line: 267)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !290, file: !38, line: 268)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !295, file: !38, line: 269)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !224, file: !38, line: 283)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !149, file: !38, line: 286)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !155, file: !38, line: 289)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !163, file: !38, line: 292)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !285, file: !38, line: 296)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !290, file: !38, line: 297)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !295, file: !38, line: 298)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !310, file: !311, line: 57)
!310 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !312, file: !311, line: 79, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!311 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ad32556413cf4ca6a852273de62d0a18")
!312 = !DINamespace(name: "__exception_ptr", scope: !2)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !314, file: !311, line: 73)
!314 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !311, line: 69, type: !315, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !310}
!317 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !318, entity: !319, file: !320, line: 58)
!318 = !DINamespace(name: "__gnu_debug", scope: null)
!319 = !DINamespace(name: "__debug", scope: !2)
!320 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "1e1a444391d862db9c9b259fde858dd4")
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !322, file: !327, line: 47)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !323, line: 24, baseType: !324)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !325, line: 37, baseType: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!326 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!327 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdint", directory: "")
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !329, file: !327, line: 48)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !323, line: 25, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !325, line: 39, baseType: !331)
!331 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !333, file: !327, line: 49)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !323, line: 26, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !325, line: 41, baseType: !18)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !336, file: !327, line: 50)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !323, line: 27, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !325, line: 44, baseType: !236)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !339, file: !327, line: 52)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !340, line: 58, baseType: !326)
!340 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !342, file: !327, line: 53)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !340, line: 60, baseType: !236)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !344, file: !327, line: 54)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !340, line: 61, baseType: !236)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !346, file: !327, line: 55)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !340, line: 62, baseType: !236)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !348, file: !327, line: 57)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !340, line: 43, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !325, line: 52, baseType: !324)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !351, file: !327, line: 58)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !340, line: 44, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !325, line: 54, baseType: !330)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !354, file: !327, line: 59)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !340, line: 45, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !325, line: 56, baseType: !334)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !357, file: !327, line: 60)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !340, line: 46, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !325, line: 58, baseType: !337)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !360, file: !327, line: 62)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !340, line: 101, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !325, line: 72, baseType: !236)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !363, file: !327, line: 63)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !340, line: 87, baseType: !236)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !365, file: !327, line: 65)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !366, line: 24, baseType: !367)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !325, line: 38, baseType: !368)
!368 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !370, file: !327, line: 66)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !366, line: 25, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !325, line: 40, baseType: !372)
!372 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !374, file: !327, line: 67)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !366, line: 26, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !325, line: 42, baseType: !33)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !377, file: !327, line: 68)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !366, line: 27, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !325, line: 45, baseType: !96)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !380, file: !327, line: 70)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !340, line: 71, baseType: !368)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !382, file: !327, line: 71)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !340, line: 73, baseType: !96)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !384, file: !327, line: 72)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !340, line: 74, baseType: !96)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !386, file: !327, line: 73)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !340, line: 75, baseType: !96)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !388, file: !327, line: 75)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !340, line: 49, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !325, line: 53, baseType: !367)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !391, file: !327, line: 76)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !340, line: 50, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !325, line: 55, baseType: !371)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !394, file: !327, line: 77)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !340, line: 51, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !325, line: 57, baseType: !375)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !397, file: !327, line: 78)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !340, line: 52, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !325, line: 59, baseType: !378)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !400, file: !327, line: 80)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !340, line: 102, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !325, line: 73, baseType: !96)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !403, file: !327, line: 81)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !340, line: 90, baseType: !96)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !405, file: !407, line: 53)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !406, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!406 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!407 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/clocale", directory: "")
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !409, file: !407, line: 54)
!409 = !DISubprogram(name: "setlocale", scope: !406, file: !406, line: 122, type: !410, flags: DIFlagPrototyped, spFlags: 0)
!410 = !DISubroutineType(types: !411)
!411 = !{!169, !18, !98}
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !413, file: !407, line: 55)
!413 = !DISubprogram(name: "localeconv", scope: !406, file: !406, line: 125, type: !414, flags: DIFlagPrototyped, spFlags: 0)
!414 = !DISubroutineType(types: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !418, file: !422, line: 64)
!418 = !DISubprogram(name: "isalnum", scope: !419, file: !419, line: 108, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!420 = !DISubroutineType(types: !421)
!421 = !{!18, !18}
!422 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cctype", directory: "")
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !424, file: !422, line: 65)
!424 = !DISubprogram(name: "isalpha", scope: !419, file: !419, line: 109, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !426, file: !422, line: 66)
!426 = !DISubprogram(name: "iscntrl", scope: !419, file: !419, line: 110, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !428, file: !422, line: 67)
!428 = !DISubprogram(name: "isdigit", scope: !419, file: !419, line: 111, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !430, file: !422, line: 68)
!430 = !DISubprogram(name: "isgraph", scope: !419, file: !419, line: 113, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !422, line: 69)
!432 = !DISubprogram(name: "islower", scope: !419, file: !419, line: 112, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !434, file: !422, line: 70)
!434 = !DISubprogram(name: "isprint", scope: !419, file: !419, line: 114, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !436, file: !422, line: 71)
!436 = !DISubprogram(name: "ispunct", scope: !419, file: !419, line: 115, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !438, file: !422, line: 72)
!438 = !DISubprogram(name: "isspace", scope: !419, file: !419, line: 116, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !440, file: !422, line: 73)
!440 = !DISubprogram(name: "isupper", scope: !419, file: !419, line: 117, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !442, file: !422, line: 74)
!442 = !DISubprogram(name: "isxdigit", scope: !419, file: !419, line: 118, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !444, file: !422, line: 75)
!444 = !DISubprogram(name: "tolower", scope: !419, file: !419, line: 122, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !422, line: 76)
!446 = !DISubprogram(name: "toupper", scope: !419, file: !419, line: 125, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !448, file: !422, line: 87)
!448 = !DISubprogram(name: "isblank", scope: !419, file: !419, line: 130, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !450, file: !452, line: 44)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !451, line: 258, baseType: !96)
!451 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "f271377c6e7185560bbbc0bac2bc77fa")
!452 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "d815d3ddb625b8849e2bd401d0f6b354")
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !454, file: !452, line: 45)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !451, line: 259, baseType: !236)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !456, file: !458, line: 52)
!456 = !DISubprogram(name: "abs", scope: !457, file: !457, line: 840, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!458 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h", directory: "")
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !460, file: !462, line: 127)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !457, line: 62, baseType: !461)
!461 = !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!462 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib", directory: "")
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !464, file: !462, line: 128)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !457, line: 70, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !466, identifier: "_ZTS6ldiv_t")
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !465, file: !457, line: 68, baseType: !236, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !465, file: !457, line: 69, baseType: !236, size: 64, offset: 64)
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !470, file: !462, line: 130)
!470 = !DISubprogram(name: "abort", scope: !457, file: !457, line: 591, type: !471, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{null}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !462, line: 134)
!474 = !DISubprogram(name: "atexit", scope: !457, file: !457, line: 595, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!18, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !479, file: !462, line: 137)
!479 = !DISubprogram(name: "at_quick_exit", scope: !457, file: !457, line: 600, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !481, file: !462, line: 140)
!481 = !DISubprogram(name: "atof", scope: !457, file: !457, line: 101, type: !482, flags: DIFlagPrototyped, spFlags: 0)
!482 = !DISubroutineType(types: !483)
!483 = !{!220, !98}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !485, file: !462, line: 141)
!485 = !DISubprogram(name: "atoi", scope: !457, file: !457, line: 104, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!486 = !DISubroutineType(types: !487)
!487 = !{!18, !98}
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !489, file: !462, line: 142)
!489 = !DISubprogram(name: "atol", scope: !457, file: !457, line: 107, type: !490, flags: DIFlagPrototyped, spFlags: 0)
!490 = !DISubroutineType(types: !491)
!491 = !{!236, !98}
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !493, file: !462, line: 143)
!493 = !DISubprogram(name: "bsearch", scope: !457, file: !457, line: 820, type: !494, flags: DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{!146, !496, !496, !94, !94, !498}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !457, line: 808, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!18, !496, !496}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !503, file: !462, line: 144)
!503 = !DISubprogram(name: "calloc", scope: !457, file: !457, line: 542, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!146, !94, !94}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !507, file: !462, line: 145)
!507 = !DISubprogram(name: "div", scope: !457, file: !457, line: 852, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DISubroutineType(types: !509)
!509 = !{!460, !18, !18}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !511, file: !462, line: 146)
!511 = !DISubprogram(name: "exit", scope: !457, file: !457, line: 617, type: !512, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !18}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !515, file: !462, line: 147)
!515 = !DISubprogram(name: "free", scope: !457, file: !457, line: 565, type: !516, flags: DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !146}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !519, file: !462, line: 148)
!519 = !DISubprogram(name: "getenv", scope: !457, file: !457, line: 634, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!520 = !DISubroutineType(types: !521)
!521 = !{!169, !98}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !523, file: !462, line: 149)
!523 = !DISubprogram(name: "labs", scope: !457, file: !457, line: 841, type: !524, flags: DIFlagPrototyped, spFlags: 0)
!524 = !DISubroutineType(types: !525)
!525 = !{!236, !236}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !527, file: !462, line: 150)
!527 = !DISubprogram(name: "ldiv", scope: !457, file: !457, line: 854, type: !528, flags: DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!464, !236, !236}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !531, file: !462, line: 151)
!531 = !DISubprogram(name: "malloc", scope: !457, file: !457, line: 539, type: !532, flags: DIFlagPrototyped, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{!146, !94}
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !535, file: !462, line: 153)
!535 = !DISubprogram(name: "mblen", scope: !457, file: !457, line: 922, type: !536, flags: DIFlagPrototyped, spFlags: 0)
!536 = !DISubroutineType(types: !537)
!537 = !{!18, !98, !94}
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !539, file: !462, line: 154)
!539 = !DISubprogram(name: "mbstowcs", scope: !457, file: !457, line: 933, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!540 = !DISubroutineType(types: !541)
!541 = !{!94, !61, !97, !94}
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !543, file: !462, line: 155)
!543 = !DISubprogram(name: "mbtowc", scope: !457, file: !457, line: 925, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{!18, !61, !97, !94}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !547, file: !462, line: 157)
!547 = !DISubprogram(name: "qsort", scope: !457, file: !457, line: 830, type: !548, flags: DIFlagPrototyped, spFlags: 0)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !146, !94, !94, !498}
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !551, file: !462, line: 160)
!551 = !DISubprogram(name: "quick_exit", scope: !457, file: !457, line: 623, type: !512, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !553, file: !462, line: 163)
!553 = !DISubprogram(name: "rand", scope: !457, file: !457, line: 453, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!18}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !557, file: !462, line: 164)
!557 = !DISubprogram(name: "realloc", scope: !457, file: !457, line: 550, type: !558, flags: DIFlagPrototyped, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{!146, !146, !94}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !561, file: !462, line: 165)
!561 = !DISubprogram(name: "srand", scope: !457, file: !457, line: 455, type: !562, flags: DIFlagPrototyped, spFlags: 0)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !33}
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !565, file: !462, line: 166)
!565 = !DISubprogram(name: "strtod", scope: !457, file: !457, line: 117, type: !566, flags: DIFlagPrototyped, spFlags: 0)
!566 = !DISubroutineType(types: !567)
!567 = !{!220, !97, !568}
!568 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !571, file: !462, line: 167)
!571 = !DISubprogram(name: "strtol", scope: !457, file: !457, line: 176, type: !572, flags: DIFlagPrototyped, spFlags: 0)
!572 = !DISubroutineType(types: !573)
!573 = !{!236, !97, !568, !18}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !575, file: !462, line: 168)
!575 = !DISubprogram(name: "strtoul", scope: !457, file: !457, line: 180, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!576 = !DISubroutineType(types: !577)
!577 = !{!96, !97, !568, !18}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !579, file: !462, line: 169)
!579 = !DISubprogram(name: "system", scope: !457, file: !457, line: 784, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !581, file: !462, line: 171)
!581 = !DISubprogram(name: "wcstombs", scope: !457, file: !457, line: 936, type: !582, flags: DIFlagPrototyped, spFlags: 0)
!582 = !DISubroutineType(types: !583)
!583 = !{!94, !168, !71, !94}
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !585, file: !462, line: 172)
!585 = !DISubprogram(name: "wctomb", scope: !457, file: !457, line: 929, type: !586, flags: DIFlagPrototyped, spFlags: 0)
!586 = !DISubroutineType(types: !587)
!587 = !{!18, !169, !60}
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !589, file: !462, line: 200)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !457, line: 80, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !591, identifier: "_ZTS7lldiv_t")
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !590, file: !457, line: 78, baseType: !293, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !590, file: !457, line: 79, baseType: !293, size: 64, offset: 64)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !595, file: !462, line: 206)
!595 = !DISubprogram(name: "_Exit", scope: !457, file: !457, line: 629, type: !512, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !597, file: !462, line: 210)
!597 = !DISubprogram(name: "llabs", scope: !457, file: !457, line: 844, type: !598, flags: DIFlagPrototyped, spFlags: 0)
!598 = !DISubroutineType(types: !599)
!599 = !{!293, !293}
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !601, file: !462, line: 216)
!601 = !DISubprogram(name: "lldiv", scope: !457, file: !457, line: 858, type: !602, flags: DIFlagPrototyped, spFlags: 0)
!602 = !DISubroutineType(types: !603)
!603 = !{!589, !293, !293}
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !605, file: !462, line: 227)
!605 = !DISubprogram(name: "atoll", scope: !457, file: !457, line: 112, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{!293, !98}
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !609, file: !462, line: 228)
!609 = !DISubprogram(name: "strtoll", scope: !457, file: !457, line: 200, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{!293, !97, !568, !18}
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !613, file: !462, line: 229)
!613 = !DISubprogram(name: "strtoull", scope: !457, file: !457, line: 205, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!298, !97, !568, !18}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !617, file: !462, line: 231)
!617 = !DISubprogram(name: "strtof", scope: !457, file: !457, line: 123, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!227, !97, !568}
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !621, file: !462, line: 232)
!621 = !DISubprogram(name: "strtold", scope: !457, file: !457, line: 126, type: !622, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!288, !97, !568}
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !589, file: !462, line: 240)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !595, file: !462, line: 242)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !597, file: !462, line: 244)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !628, file: !462, line: 245)
!628 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !284, file: !462, line: 213, type: !602, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !601, file: !462, line: 246)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !605, file: !462, line: 248)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !617, file: !462, line: 249)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !609, file: !462, line: 250)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !613, file: !462, line: 251)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !621, file: !462, line: 252)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !636, file: !638, line: 98)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !637, line: 7, baseType: !54)
!637 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!638 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdio", directory: "")
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !640, file: !638, line: 99)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !641, line: 84, baseType: !642)
!641 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !643, line: 14, baseType: !644)
!643 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !643, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !646, file: !638, line: 101)
!646 = !DISubprogram(name: "clearerr", scope: !641, file: !641, line: 757, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !651, file: !638, line: 102)
!651 = !DISubprogram(name: "fclose", scope: !641, file: !641, line: 213, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!652 = !DISubroutineType(types: !653)
!653 = !{!18, !649}
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !638, line: 103)
!655 = !DISubprogram(name: "feof", scope: !641, file: !641, line: 759, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !657, file: !638, line: 104)
!657 = !DISubprogram(name: "ferror", scope: !641, file: !641, line: 761, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !659, file: !638, line: 105)
!659 = !DISubprogram(name: "fflush", scope: !641, file: !641, line: 218, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !661, file: !638, line: 106)
!661 = !DISubprogram(name: "fgetc", scope: !641, file: !641, line: 485, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !663, file: !638, line: 107)
!663 = !DISubprogram(name: "fgetpos", scope: !641, file: !641, line: 731, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DISubroutineType(types: !665)
!665 = !{!18, !666, !667}
!666 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !649)
!667 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !670, file: !638, line: 108)
!670 = !DISubprogram(name: "fgets", scope: !641, file: !641, line: 564, type: !671, flags: DIFlagPrototyped, spFlags: 0)
!671 = !DISubroutineType(types: !672)
!672 = !{!169, !168, !18, !666}
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !674, file: !638, line: 109)
!674 = !DISubprogram(name: "fopen", scope: !641, file: !641, line: 246, type: !675, flags: DIFlagPrototyped, spFlags: 0)
!675 = !DISubroutineType(types: !676)
!676 = !{!649, !97, !97}
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !678, file: !638, line: 110)
!678 = !DISubprogram(name: "fprintf", scope: !641, file: !641, line: 326, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DISubroutineType(types: !680)
!680 = !{!18, !666, !97, null}
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !682, file: !638, line: 111)
!682 = !DISubprogram(name: "fputc", scope: !641, file: !641, line: 521, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{!18, !18, !649}
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !686, file: !638, line: 112)
!686 = !DISubprogram(name: "fputs", scope: !641, file: !641, line: 626, type: !687, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{!18, !97, !666}
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !690, file: !638, line: 113)
!690 = !DISubprogram(name: "fread", scope: !641, file: !641, line: 646, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{!94, !693, !94, !94, !666}
!693 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !695, file: !638, line: 114)
!695 = !DISubprogram(name: "freopen", scope: !641, file: !641, line: 252, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DISubroutineType(types: !697)
!697 = !{!649, !97, !97, !666}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !699, file: !638, line: 115)
!699 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !641, file: !641, line: 407, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !638, line: 116)
!701 = !DISubprogram(name: "fseek", scope: !641, file: !641, line: 684, type: !702, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DISubroutineType(types: !703)
!703 = !{!18, !649, !236, !18}
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !705, file: !638, line: 117)
!705 = !DISubprogram(name: "fsetpos", scope: !641, file: !641, line: 736, type: !706, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DISubroutineType(types: !707)
!707 = !{!18, !649, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !711, file: !638, line: 118)
!711 = !DISubprogram(name: "ftell", scope: !641, file: !641, line: 689, type: !712, flags: DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{!236, !649}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !715, file: !638, line: 119)
!715 = !DISubprogram(name: "fwrite", scope: !641, file: !641, line: 652, type: !716, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DISubroutineType(types: !717)
!717 = !{!94, !718, !94, !94, !666}
!718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !496)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !720, file: !638, line: 120)
!720 = !DISubprogram(name: "getc", scope: !641, file: !641, line: 486, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !722, file: !638, line: 121)
!722 = !DISubprogram(name: "getchar", scope: !641, file: !641, line: 492, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !724, file: !638, line: 126)
!724 = !DISubprogram(name: "perror", scope: !641, file: !641, line: 775, type: !725, flags: DIFlagPrototyped, spFlags: 0)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !98}
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !728, file: !638, line: 127)
!728 = !DISubprogram(name: "printf", scope: !641, file: !641, line: 332, type: !729, flags: DIFlagPrototyped, spFlags: 0)
!729 = !DISubroutineType(types: !730)
!730 = !{!18, !97, null}
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !732, file: !638, line: 128)
!732 = !DISubprogram(name: "putc", scope: !641, file: !641, line: 522, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !734, file: !638, line: 129)
!734 = !DISubprogram(name: "putchar", scope: !641, file: !641, line: 528, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !736, file: !638, line: 130)
!736 = !DISubprogram(name: "puts", scope: !641, file: !641, line: 632, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !738, file: !638, line: 131)
!738 = !DISubprogram(name: "remove", scope: !641, file: !641, line: 146, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !740, file: !638, line: 132)
!740 = !DISubprogram(name: "rename", scope: !641, file: !641, line: 148, type: !741, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DISubroutineType(types: !742)
!742 = !{!18, !98, !98}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !744, file: !638, line: 133)
!744 = !DISubprogram(name: "rewind", scope: !641, file: !641, line: 694, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !638, line: 134)
!746 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !641, file: !641, line: 410, type: !729, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !748, file: !638, line: 135)
!748 = !DISubprogram(name: "setbuf", scope: !641, file: !641, line: 304, type: !749, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !666, !168}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !752, file: !638, line: 136)
!752 = !DISubprogram(name: "setvbuf", scope: !641, file: !641, line: 308, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{!18, !666, !168, !18, !94}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !756, file: !638, line: 137)
!756 = !DISubprogram(name: "sprintf", scope: !641, file: !641, line: 334, type: !757, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DISubroutineType(types: !758)
!758 = !{!18, !168, !97, null}
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !760, file: !638, line: 138)
!760 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !641, file: !641, line: 412, type: !761, flags: DIFlagPrototyped, spFlags: 0)
!761 = !DISubroutineType(types: !762)
!762 = !{!18, !97, !97, null}
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !764, file: !638, line: 139)
!764 = !DISubprogram(name: "tmpfile", scope: !641, file: !641, line: 173, type: !765, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DISubroutineType(types: !766)
!766 = !{!649}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !768, file: !638, line: 141)
!768 = !DISubprogram(name: "tmpnam", scope: !641, file: !641, line: 187, type: !769, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DISubroutineType(types: !770)
!770 = !{!169, !169}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !772, file: !638, line: 143)
!772 = !DISubprogram(name: "ungetc", scope: !641, file: !641, line: 639, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !774, file: !638, line: 144)
!774 = !DISubprogram(name: "vfprintf", scope: !641, file: !641, line: 341, type: !775, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DISubroutineType(types: !776)
!776 = !{!18, !666, !97, !139}
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !778, file: !638, line: 145)
!778 = !DISubprogram(name: "vprintf", scope: !641, file: !641, line: 347, type: !779, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DISubroutineType(types: !780)
!780 = !{!18, !97, !139}
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !782, file: !638, line: 146)
!782 = !DISubprogram(name: "vsprintf", scope: !641, file: !641, line: 349, type: !783, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DISubroutineType(types: !784)
!784 = !{!18, !168, !97, !139}
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !786, file: !638, line: 175)
!786 = !DISubprogram(name: "snprintf", scope: !641, file: !641, line: 354, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{!18, !168, !94, !97, null}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !790, file: !638, line: 176)
!790 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !641, file: !641, line: 451, type: !775, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !792, file: !638, line: 177)
!792 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !641, file: !641, line: 456, type: !779, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !794, file: !638, line: 178)
!794 = !DISubprogram(name: "vsnprintf", scope: !641, file: !641, line: 358, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DISubroutineType(types: !796)
!796 = !{!18, !168, !94, !97, !139}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !798, file: !638, line: 179)
!798 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !641, file: !641, line: 459, type: !799, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DISubroutineType(types: !800)
!800 = !{!18, !97, !97, !139}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !786, file: !638, line: 185)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !790, file: !638, line: 186)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !792, file: !638, line: 187)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !794, file: !638, line: 188)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !798, file: !638, line: 189)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !807, file: !811, line: 82)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !808, line: 48, baseType: !809)
!808 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!811 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwctype", directory: "")
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !813, file: !811, line: 83)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !814, line: 38, baseType: !96)
!814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !40, file: !811, line: 84)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !817, file: !811, line: 86)
!817 = !DISubprogram(name: "iswalnum", scope: !814, file: !814, line: 95, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !811, line: 87)
!819 = !DISubprogram(name: "iswalpha", scope: !814, file: !814, line: 101, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !821, file: !811, line: 89)
!821 = !DISubprogram(name: "iswblank", scope: !814, file: !814, line: 146, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !823, file: !811, line: 91)
!823 = !DISubprogram(name: "iswcntrl", scope: !814, file: !814, line: 104, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !825, file: !811, line: 92)
!825 = !DISubprogram(name: "iswctype", scope: !814, file: !814, line: 159, type: !826, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DISubroutineType(types: !827)
!827 = !{!18, !40, !813}
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !829, file: !811, line: 93)
!829 = !DISubprogram(name: "iswdigit", scope: !814, file: !814, line: 108, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !831, file: !811, line: 94)
!831 = !DISubprogram(name: "iswgraph", scope: !814, file: !814, line: 112, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !811, line: 95)
!833 = !DISubprogram(name: "iswlower", scope: !814, file: !814, line: 117, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !811, line: 96)
!835 = !DISubprogram(name: "iswprint", scope: !814, file: !814, line: 120, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !837, file: !811, line: 97)
!837 = !DISubprogram(name: "iswpunct", scope: !814, file: !814, line: 125, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !811, line: 98)
!839 = !DISubprogram(name: "iswspace", scope: !814, file: !814, line: 130, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !841, file: !811, line: 99)
!841 = !DISubprogram(name: "iswupper", scope: !814, file: !814, line: 135, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !843, file: !811, line: 100)
!843 = !DISubprogram(name: "iswxdigit", scope: !814, file: !814, line: 140, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !811, line: 101)
!845 = !DISubprogram(name: "towctrans", scope: !808, file: !808, line: 55, type: !846, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DISubroutineType(types: !847)
!847 = !{!40, !40, !807}
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !849, file: !811, line: 102)
!849 = !DISubprogram(name: "towlower", scope: !814, file: !814, line: 166, type: !850, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DISubroutineType(types: !851)
!851 = !{!40, !40}
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !853, file: !811, line: 103)
!853 = !DISubprogram(name: "towupper", scope: !814, file: !814, line: 169, type: !850, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !855, file: !811, line: 104)
!855 = !DISubprogram(name: "wctrans", scope: !808, file: !808, line: 52, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DISubroutineType(types: !857)
!857 = !{!807, !98}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !859, file: !811, line: 105)
!859 = !DISubprogram(name: "wctype", scope: !814, file: !814, line: 155, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!860 = !DISubroutineType(types: !861)
!861 = !{!813, !98}
!862 = !{i32 7, !"Dwarf Version", i32 5}
!863 = !{i32 2, !"Debug Info Version", i32 3}
!864 = !{i32 1, !"wchar_size", i32 4}
!865 = !{i32 7, !"PIC Level", i32 2}
!866 = !{i32 7, !"PIE Level", i32 2}
!867 = !{i32 7, !"uwtable", i32 2}
!868 = !{i32 7, !"frame-pointer", i32 2}
!869 = !{!"clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git c82e0d0f5b2b538e954f35a56aa551392e60f4ca)"}
!870 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !143, file: !143, type: !471, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !871)
!871 = !{}
!872 = !DILocation(line: 74, column: 25, scope: !873)
!873 = !DILexicalBlockFile(scope: !870, file: !3, discriminator: 0)
!874 = !DILocation(line: 0, scope: !870)
!875 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 5, type: !554, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !871)
!876 = !DILocation(line: 7, column: 5, scope: !875)
!877 = !DILocation(line: 7, column: 10, scope: !875)
!878 = !DILocalVariable(name: "array", scope: !875, file: !9, line: 7, type: !17)
!879 = !DILocation(line: 7, column: 25, scope: !875)
!880 = !DILocation(line: 13, column: 12, scope: !875)
!881 = !DILocation(line: 13, column: 5, scope: !875)
!882 = !DILocation(line: 19, column: 5, scope: !875)
!883 = !DILocation(line: 19, column: 9, scope: !875)
!884 = !DILocalVariable(name: "value", scope: !875, file: !9, line: 19, type: !18)
!885 = !DILocation(line: 19, column: 17, scope: !875)
!886 = !{!"branch_weights", i32 1, i32 1000}
!887 = !DILocation(line: 20, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !875, file: !9, line: 20, column: 9)
!889 = !DILocation(line: 20, column: 9, scope: !875)
!890 = !DILocation(line: 22, column: 19, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !9, line: 21, column: 5)
!892 = !DILocation(line: 23, column: 5, scope: !891)
!893 = !DILocation(line: 24, column: 10, scope: !875)
!894 = !DILocation(line: 24, column: 5, scope: !875)
!895 = !DILocation(line: 26, column: 1, scope: !875)
!896 = !DILocation(line: 25, column: 5, scope: !875)
!897 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_uum.cc", scope: !143, file: !143, type: !898, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !871)
!898 = !DISubroutineType(types: !871)
!899 = !DILocation(line: 0, scope: !897)
