; ModuleID = 'wasm.c'
source_filename = "wasm.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"P6\0A %zu %zu 255\0A\00", align 1
@_ZL6pixels = internal global [480000 x i32] zeroinitializer, align 16

; Function Attrs: minsize norecurse nounwind optsize
define hidden void @_Z11olivec_fillPjmmj(i32* nocapture, i32, i32, i32) local_unnamed_addr #0 {
  %5 = mul i32 %2, %1
  br label %6

; <label>:6:                                      ; preds = %10, %4
  %7 = phi i32 [ 0, %4 ], [ %12, %10 ]
  %8 = icmp eq i32 %7, %5
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %6
  ret void

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds i32, i32* %0, i32 %7
  store i32 %3, i32* %11, align 4, !tbaa !2
  %12 = add i32 %7, 1
  br label %6
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize norecurse nounwind optsize
define hidden void @_Z16olivec_fill_rectPjmmiiiij(i32* nocapture, i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 {
  %9 = icmp sgt i32 %5, 0
  %10 = zext i1 %9 to i32
  %11 = lshr i32 %5, 31
  %12 = sub nsw i32 %10, %11
  %13 = mul nsw i32 %12, %5
  %14 = add nsw i32 %13, -1
  %15 = mul nsw i32 %14, %12
  %16 = add nsw i32 %15, %3
  %17 = icmp slt i32 %15, 0
  %18 = select i1 %17, i32 %3, i32 %16
  %19 = select i1 %17, i32 %16, i32 %3
  %20 = icmp sgt i32 %6, 0
  %21 = zext i1 %20 to i32
  %22 = lshr i32 %6, 31
  %23 = sub nsw i32 %21, %22
  %24 = mul nsw i32 %23, %6
  %25 = add nsw i32 %24, -1
  %26 = mul nsw i32 %25, %23
  %27 = add nsw i32 %26, %4
  %28 = icmp slt i32 %26, 0
  %29 = select i1 %28, i32 %27, i32 %4
  %30 = select i1 %28, i32 %4, i32 %27
  br label %31

; <label>:31:                                     ; preds = %53, %8
  %32 = phi i32 [ %29, %8 ], [ %54, %53 ]
  %33 = icmp slt i32 %32, %30
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %31
  ret void

; <label>:35:                                     ; preds = %31
  %36 = icmp sgt i32 %32, -1
  %37 = icmp slt i32 %32, %2
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %53

; <label>:39:                                     ; preds = %35
  %40 = mul i32 %32, %1
  br label %41

; <label>:41:                                     ; preds = %39, %51
  %42 = phi i32 [ %52, %51 ], [ %19, %39 ]
  %43 = icmp slt i32 %42, %18
  br i1 %43, label %44, label %53

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1
  %46 = icmp slt i32 %42, %1
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %44
  %49 = add i32 %42, %40
  %50 = getelementptr inbounds i32, i32* %0, i32 %49
  store i32 %7, i32* %50, align 4, !tbaa !2
  br label %51

; <label>:51:                                     ; preds = %44, %48
  %52 = add nsw i32 %42, 1
  br label %41

; <label>:53:                                     ; preds = %41, %35
  %54 = add nsw i32 %32, 1
  br label %31
}

; Function Attrs: minsize norecurse nounwind optsize
define hidden void @_Z18olivec_fill_circlePjmmiiij(i32* nocapture, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 {
  %8 = sub nsw i32 %3, %5
  %9 = sub nsw i32 %4, %5
  %10 = add nsw i32 %5, %3
  %11 = add nsw i32 %5, %4
  %12 = mul nsw i32 %5, %5
  br label %13

; <label>:13:                                     ; preds = %42, %7
  %14 = phi i32 [ %9, %7 ], [ %43, %42 ]
  %15 = icmp slt i32 %14, %11
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %13
  ret void

; <label>:17:                                     ; preds = %13
  %18 = icmp sgt i32 %14, 0
  %19 = icmp slt i32 %14, %2
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %42

; <label>:21:                                     ; preds = %17
  %22 = sub nsw i32 %14, %4
  %23 = mul nsw i32 %22, %22
  %24 = mul i32 %14, %1
  br label %25

; <label>:25:                                     ; preds = %21, %40
  %26 = phi i32 [ %41, %40 ], [ %8, %21 ]
  %27 = icmp slt i32 %26, %10
  br i1 %27, label %28, label %42

; <label>:28:                                     ; preds = %25
  %29 = icmp sgt i32 %26, 0
  %30 = icmp slt i32 %26, %1
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %40

; <label>:32:                                     ; preds = %28
  %33 = sub nsw i32 %26, %3
  %34 = mul nsw i32 %33, %33
  %35 = add nuw nsw i32 %34, %23
  %36 = icmp ult i32 %35, %12
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %32
  %38 = add i32 %26, %24
  %39 = getelementptr inbounds i32, i32* %0, i32 %38
  store i32 %6, i32* %39, align 4, !tbaa !2
  br label %40

; <label>:40:                                     ; preds = %32, %37, %28
  %41 = add nsw i32 %26, 1
  br label %25

; <label>:42:                                     ; preds = %25, %17
  %43 = add nsw i32 %14, 1
  br label %13
}

; Function Attrs: minsize norecurse nounwind optsize
define hidden void @_Z8swap_intPiS_(i32* nocapture, i32* nocapture) local_unnamed_addr #0 {
  %3 = load i32, i32* %0, align 4, !tbaa !2
  %4 = load i32, i32* %1, align 4, !tbaa !2
  store i32 %4, i32* %0, align 4, !tbaa !2
  store i32 %3, i32* %1, align 4, !tbaa !2
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize
define hidden void @_Z32olivec_sort_triangle_points_by_yPiS_S_S_S_S_(i32* nocapture, i32* nocapture, i32* nocapture, i32* nocapture, i32* nocapture, i32* nocapture) local_unnamed_addr #0 {
  %7 = load i32, i32* %1, align 4, !tbaa !2
  %8 = load i32, i32* %3, align 4, !tbaa !2
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %6
  store i32 %8, i32* %1, align 4, !tbaa !2
  store i32 %7, i32* %3, align 4, !tbaa !2
  %11 = load i32, i32* %0, align 4, !tbaa !2
  %12 = load i32, i32* %2, align 4, !tbaa !2
  store i32 %12, i32* %0, align 4, !tbaa !2
  store i32 %11, i32* %2, align 4, !tbaa !2
  %13 = load i32, i32* %3, align 4, !tbaa !2
  br label %14

; <label>:14:                                     ; preds = %10, %6
  %15 = phi i32 [ %13, %10 ], [ %8, %6 ]
  %16 = load i32, i32* %5, align 4, !tbaa !2
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %14
  store i32 %16, i32* %3, align 4, !tbaa !2
  store i32 %15, i32* %5, align 4, !tbaa !2
  %19 = load i32, i32* %2, align 4, !tbaa !2
  %20 = load i32, i32* %4, align 4, !tbaa !2
  store i32 %20, i32* %2, align 4, !tbaa !2
  store i32 %19, i32* %4, align 4, !tbaa !2
  %21 = load i32, i32* %3, align 4, !tbaa !2
  br label %22

; <label>:22:                                     ; preds = %18, %14
  %23 = phi i32 [ %21, %18 ], [ %15, %14 ]
  %24 = load i32, i32* %1, align 4, !tbaa !2
  %25 = icmp sgt i32 %24, %23
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %22
  store i32 %23, i32* %1, align 4, !tbaa !2
  store i32 %24, i32* %3, align 4, !tbaa !2
  %27 = load i32, i32* %0, align 4, !tbaa !2
  %28 = load i32, i32* %2, align 4, !tbaa !2
  store i32 %28, i32* %0, align 4, !tbaa !2
  store i32 %27, i32* %2, align 4, !tbaa !2
  br label %29

; <label>:29:                                     ; preds = %26, %22
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize
define hidden zeroext i1 @_Z22olivec_line_of_segmentiiiiPiS_(i32, i32, i32, i32, i32* nocapture, i32* nocapture) local_unnamed_addr #0 {
  %7 = sub nsw i32 %2, %0
  %8 = sub nsw i32 %3, %1
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %15, label %10

; <label>:10:                                     ; preds = %6
  %11 = sdiv i32 %8, %7
  store i32 %11, i32* %4, align 4, !tbaa !2
  %12 = mul nsw i32 %8, %0
  %13 = sdiv i32 %12, %7
  %14 = sub nsw i32 %1, %13
  store i32 %14, i32* %5, align 4, !tbaa !2
  br label %15

; <label>:15:                                     ; preds = %6, %10
  %16 = phi i1 [ true, %10 ], [ false, %6 ]
  ret i1 %16
}

; Function Attrs: minsize norecurse nounwind optsize
define hidden void @_Z20olivec_fill_trianglePjmmiiiiiij(i32* nocapture, i32, i32, i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 {
  %11 = icmp sgt i32 %4, %6
  %12 = select i1 %11, i32 %5, i32 %3
  %13 = select i1 %11, i32 %6, i32 %4
  %14 = select i1 %11, i32 %3, i32 %5
  %15 = select i1 %11, i32 %4, i32 %6
  %16 = icmp sgt i32 %15, %8
  %17 = select i1 %16, i32 %7, i32 %14
  %18 = select i1 %16, i32 %8, i32 %15
  %19 = select i1 %16, i32 %14, i32 %7
  %20 = select i1 %16, i32 %15, i32 %8
  %21 = icmp sgt i32 %13, %18
  %22 = select i1 %21, i32 %17, i32 %12
  %23 = select i1 %21, i32 %18, i32 %13
  %24 = select i1 %21, i32 %12, i32 %17
  %25 = select i1 %21, i32 %13, i32 %18
  %26 = sub nsw i32 %24, %22
  %27 = sub nsw i32 %25, %23
  %28 = sub nsw i32 %19, %22
  %29 = sub nsw i32 %20, %23
  %30 = icmp eq i32 %27, 0
  %31 = icmp eq i32 %29, 0
  br label %32

; <label>:32:                                     ; preds = %77, %10
  %33 = phi i32 [ %23, %10 ], [ %78, %77 ]
  %34 = icmp sgt i32 %33, %25
  br i1 %34, label %35, label %42

; <label>:35:                                     ; preds = %32
  %36 = sub nsw i32 %24, %19
  %37 = sub nsw i32 %25, %20
  %38 = sub nsw i32 %22, %19
  %39 = sub nsw i32 %23, %20
  %40 = icmp eq i32 %37, 0
  %41 = icmp eq i32 %39, 0
  br label %79

; <label>:42:                                     ; preds = %32
  %43 = icmp sgt i32 %33, -1
  %44 = icmp ult i32 %33, %2
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %77

; <label>:46:                                     ; preds = %42
  br i1 %30, label %52, label %47

; <label>:47:                                     ; preds = %46
  %48 = sub nsw i32 %33, %23
  %49 = mul nsw i32 %48, %26
  %50 = sdiv i32 %49, %27
  %51 = add nsw i32 %50, %22
  br label %52

; <label>:52:                                     ; preds = %46, %47
  %53 = phi i32 [ %51, %47 ], [ %22, %46 ]
  br i1 %31, label %59, label %54

; <label>:54:                                     ; preds = %52
  %55 = sub nsw i32 %33, %23
  %56 = mul nsw i32 %55, %28
  %57 = sdiv i32 %56, %29
  %58 = add nsw i32 %57, %22
  br label %59

; <label>:59:                                     ; preds = %52, %54
  %60 = phi i32 [ %58, %54 ], [ %22, %52 ]
  %61 = icmp sgt i32 %53, %60
  %62 = select i1 %61, i32 %53, i32 %60
  %63 = select i1 %61, i32 %60, i32 %53
  %64 = mul i32 %33, %1
  br label %65

; <label>:65:                                     ; preds = %75, %59
  %66 = phi i32 [ %63, %59 ], [ %76, %75 ]
  %67 = icmp sgt i32 %66, %62
  br i1 %67, label %77, label %68

; <label>:68:                                     ; preds = %65
  %69 = icmp sgt i32 %66, -1
  %70 = icmp ult i32 %66, %1
  %71 = and i1 %69, %70
  br i1 %71, label %72, label %75

; <label>:72:                                     ; preds = %68
  %73 = add i32 %66, %64
  %74 = getelementptr inbounds i32, i32* %0, i32 %73
  store i32 %9, i32* %74, align 4, !tbaa !2
  br label %75

; <label>:75:                                     ; preds = %68, %72
  %76 = add nsw i32 %66, 1
  br label %65

; <label>:77:                                     ; preds = %65, %42
  %78 = add nsw i32 %33, 1
  br label %32

; <label>:79:                                     ; preds = %118, %35
  %80 = phi i32 [ %25, %35 ], [ %119, %118 ]
  %81 = icmp sgt i32 %80, %20
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  ret void

; <label>:83:                                     ; preds = %79
  %84 = icmp sgt i32 %80, -1
  %85 = icmp ult i32 %80, %2
  %86 = and i1 %84, %85
  br i1 %86, label %87, label %118

; <label>:87:                                     ; preds = %83
  br i1 %40, label %93, label %88

; <label>:88:                                     ; preds = %87
  %89 = sub nsw i32 %80, %20
  %90 = mul nsw i32 %89, %36
  %91 = sdiv i32 %90, %37
  %92 = add nsw i32 %91, %19
  br label %93

; <label>:93:                                     ; preds = %87, %88
  %94 = phi i32 [ %92, %88 ], [ %19, %87 ]
  br i1 %41, label %100, label %95

; <label>:95:                                     ; preds = %93
  %96 = sub nsw i32 %80, %20
  %97 = mul nsw i32 %96, %38
  %98 = sdiv i32 %97, %39
  %99 = add nsw i32 %98, %19
  br label %100

; <label>:100:                                    ; preds = %93, %95
  %101 = phi i32 [ %99, %95 ], [ %19, %93 ]
  %102 = icmp sgt i32 %94, %101
  %103 = select i1 %102, i32 %101, i32 %94
  %104 = select i1 %102, i32 %94, i32 %101
  %105 = mul i32 %80, %1
  br label %106

; <label>:106:                                    ; preds = %116, %100
  %107 = phi i32 [ %103, %100 ], [ %117, %116 ]
  %108 = icmp sgt i32 %107, %104
  br i1 %108, label %118, label %109

; <label>:109:                                    ; preds = %106
  %110 = icmp sgt i32 %107, -1
  %111 = icmp ult i32 %107, %1
  %112 = and i1 %110, %111
  br i1 %112, label %113, label %116

; <label>:113:                                    ; preds = %109
  %114 = add i32 %107, %105
  %115 = getelementptr inbounds i32, i32* %0, i32 %114
  store i32 %9, i32* %115, align 4, !tbaa !2
  br label %116

; <label>:116:                                    ; preds = %109, %113
  %117 = add nsw i32 %107, 1
  br label %106

; <label>:118:                                    ; preds = %106, %83
  %119 = add nsw i32 %80, 1
  br label %79
}

; Function Attrs: minsize nounwind optsize
define hidden void @_Z16olivec_draw_linePjmmiiiij(i32* nocapture, i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr #2 {
  %9 = sub nsw i32 %5, %3
  %10 = sub nsw i32 %6, %4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %54, label %12

; <label>:12:                                     ; preds = %8
  %13 = mul nsw i32 %10, %3
  %14 = sdiv i32 %13, %9
  %15 = sub nsw i32 %4, %14
  %16 = icmp slt i32 %5, %3
  %17 = select i1 %16, i32 %5, i32 %3
  %18 = select i1 %16, i32 %3, i32 %5
  br label %19

; <label>:19:                                     ; preds = %28, %12
  %20 = phi i32 [ %17, %12 ], [ %29, %28 ]
  %21 = icmp sgt i32 %20, %18
  br i1 %21, label %75, label %22

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1
  %24 = icmp slt i32 %20, %1
  %25 = and i1 %23, %24
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %22
  %27 = add nsw i32 %20, 1
  br label %28

; <label>:28:                                     ; preds = %41, %26
  %29 = phi i32 [ %27, %26 ], [ %34, %41 ]
  br label %19

; <label>:30:                                     ; preds = %22
  %31 = mul nsw i32 %20, %10
  %32 = sdiv i32 %31, %9
  %33 = add nsw i32 %32, %15
  %34 = add nsw i32 %20, 1
  %35 = mul nsw i32 %34, %10
  %36 = sdiv i32 %35, %9
  %37 = add nsw i32 %36, %15
  %38 = icmp sgt i32 %33, %37
  %39 = select i1 %38, i32 %37, i32 %33
  %40 = select i1 %38, i32 %33, i32 %37
  br label %41

; <label>:41:                                     ; preds = %52, %30
  %42 = phi i32 [ %39, %30 ], [ %53, %52 ]
  %43 = icmp sgt i32 %42, %40
  br i1 %43, label %28, label %44

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1
  %46 = icmp slt i32 %42, %2
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %44
  %49 = mul i32 %42, %1
  %50 = add i32 %49, %20
  %51 = getelementptr inbounds i32, i32* %0, i32 %50
  store i32 %7, i32* %51, align 4, !tbaa !2
  br label %52

; <label>:52:                                     ; preds = %44, %48
  %53 = add nsw i32 %42, 1
  br label %41

; <label>:54:                                     ; preds = %8
  %55 = icmp sgt i32 %3, -1
  %56 = icmp slt i32 %3, %1
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %75

; <label>:58:                                     ; preds = %54
  %59 = icmp slt i32 %6, %4
  %60 = select i1 %59, i32 %6, i32 %4
  %61 = select i1 %59, i32 %4, i32 %6
  br label %62

; <label>:62:                                     ; preds = %73, %58
  %63 = phi i32 [ %60, %58 ], [ %74, %73 ]
  %64 = icmp sgt i32 %63, %61
  br i1 %64, label %75, label %65

; <label>:65:                                     ; preds = %62
  %66 = icmp sgt i32 %63, -1
  %67 = icmp slt i32 %63, %2
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %73

; <label>:69:                                     ; preds = %65
  %70 = mul i32 %63, %1
  %71 = add i32 %70, %3
  %72 = getelementptr inbounds i32, i32* %0, i32 %71
  store i32 %7, i32* %72, align 4, !tbaa !2
  br label %73

; <label>:73:                                     ; preds = %65, %69
  %74 = add nsw i32 %63, 1
  br label %62

; <label>:75:                                     ; preds = %19, %62, %54
  ret void
}

; Function Attrs: minsize nounwind optsize
define hidden i32 @_Z23olivec_save_to_ppm_filePjmmPKc(i32* nocapture readonly, i32, i32, i8* nocapture readonly) local_unnamed_addr #2 {
  %5 = alloca [3 x i8], align 1
  %6 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #6
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %4
  %9 = tail call i32* @__errno_location() #7
  %10 = load i32, i32* %9, align 4, !tbaa !2
  br label %45

; <label>:11:                                     ; preds = %4
  %12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %1, i32 %2) #6
  %13 = tail call i32 @ferror(%struct._IO_FILE* nonnull %6) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %11
  %16 = mul i32 %2, %1
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i32 0, i32 0
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i32 0, i32 2
  br label %23

; <label>:20:                                     ; preds = %11
  %21 = tail call i32* @__errno_location() #7
  %22 = load i32, i32* %21, align 4, !tbaa !2
  br label %42

; <label>:23:                                     ; preds = %15, %40
  %24 = phi i32 [ %41, %40 ], [ 0, %15 ]
  %25 = icmp ult i32 %24, %16
  br i1 %25, label %26, label %42

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds i32, i32* %0, i32 %24
  %28 = load i32, i32* %27, align 4, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %17) #9
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %17, align 1, !tbaa !6
  %30 = lshr i32 %28, 8
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %18, align 1, !tbaa !6
  %32 = lshr i32 %28, 16
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %19, align 1, !tbaa !6
  %34 = call i32 @fwrite(i8* nonnull %17, i32 3, i32 1, %struct._IO_FILE* nonnull %6) #6
  %35 = tail call i32 @ferror(%struct._IO_FILE* nonnull %6) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

; <label>:37:                                     ; preds = %26
  %38 = tail call i32* @__errno_location() #7
  %39 = load i32, i32* %38, align 4, !tbaa !2
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %17) #9
  br label %42

; <label>:40:                                     ; preds = %26
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %17) #9
  %41 = add i32 %24, 1
  br label %23

; <label>:42:                                     ; preds = %23, %37, %20
  %43 = phi i32 [ %22, %20 ], [ %39, %37 ], [ 0, %23 ]
  %44 = tail call i32 @fclose(%struct._IO_FILE* nonnull %6) #6
  br label %45

; <label>:45:                                     ; preds = %8, %42
  %46 = phi i32 [ %43, %42 ], [ %10, %8 ]
  ret i32 %46
}

; Function Attrs: minsize nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize readnone
declare i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize
declare i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: minsize norecurse nounwind optsize
define hidden i32* @_Z6renderv() local_unnamed_addr #0 {
  br label %1

; <label>:1:                                      ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  %3 = icmp eq i32 %2, 480000
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds [480000 x i32], [480000 x i32]* @_ZL6pixels, i32 0, i32 %2
  store i32 -14671840, i32* %5, align 4, !tbaa !2
  %6 = add nuw nsw i32 %2, 1
  br label %1

; <label>:7:                                      ; preds = %1
  tail call void @_Z20olivec_fill_trianglePjmmiiiiiij(i32* getelementptr inbounds ([480000 x i32], [480000 x i32]* @_ZL6pixels, i32 0, i32 0), i32 800, i32 600, i32 400, i32 75, i32 100, i32 300, i32 700, i32 525, i32 -16776961) #6
  ret i32* getelementptr inbounds ([480000 x i32], [480000 x i32]* @_ZL6pixels, i32 0, i32 0)
}

attributes #0 = { minsize norecurse nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize nounwind optsize readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize optsize }
attributes #7 = { minsize nounwind optsize readnone }
attributes #8 = { minsize nounwind optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!4, !4, i64 0}
