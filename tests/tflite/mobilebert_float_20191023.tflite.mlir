

module attributes {tfl.description = "TOCO Converted.", tfl.schema_version = 3 : i32} {
  func @main(%arg0: tensor<1x384xi32>, %arg1: tensor<1x384xi32>, %arg2: tensor<1x384xi32>) -> (tensor<1x384xf32>, tensor<1x384xf32>) attributes {tf.entry_function = {inputs = "input_ids,input_mask,segment_ids", outputs = "end_logits,start_logits"}} {
    %0 = "tfl.cast"(%arg1) : (tensor<1x384xi32>) -> tensor<1x384xf32>
    %1 = "tfl.pseudo_const"() {value = dense<[[1, 384, 1]]> : tensor<1x3xi32>} : () -> tensor<1x3xi32>
    %2 = "tfl.reshape"(%arg0, %1) : (tensor<1x384xi32>, tensor<1x3xi32>) -> tensor<1x384x1xi32>
    %3 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<2x512xf32>} : () -> tensor<2x512xf32>
    %4 = "tfl.gather"(%3, %arg2) {axis = 0 : i32} : (tensor<2x512xf32>, tensor<1x384xi32>) -> tensor<1x384x512xf32>
    %5 = "tfl.pseudo_const"() {value = dense<[1, 1, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %6 = "tfl.reshape"(%0, %5) : (tensor<1x384xf32>, tensor<3xi32>) -> tensor<1x1x384xf32>
    %7 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<30522x128xf32>} : () -> tensor<30522x128xf32>
    %8 = "tfl.gather"(%7, %2) {axis = 0 : i32} : (tensor<30522x128xf32>, tensor<1x384x1xi32>) -> tensor<1x384x1x128xf32>
    %9 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<1x384x1xf32>} : () -> tensor<1x384x1xf32>
    %10 = "tfl.mul"(%9, %6) {fused_activation_function = "NONE"} : (tensor<1x384x1xf32>, tensor<1x1x384xf32>) -> tensor<1x384x384xf32>
    %11 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<1x384x512xf32>} : () -> tensor<1x384x512xf32>
    %12 = tfl.add %11, %4 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %13 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %14 = "tfl.sub"(%13, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %15 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %16 = "tfl.sub"(%15, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %17 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %18 = "tfl.sub"(%17, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %19 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %20 = "tfl.sub"(%19, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %21 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %22 = "tfl.sub"(%21, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %23 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %24 = "tfl.sub"(%23, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %25 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %26 = "tfl.sub"(%25, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %27 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %28 = "tfl.sub"(%27, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %29 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %30 = "tfl.sub"(%29, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %31 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %32 = "tfl.sub"(%31, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %33 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %34 = "tfl.sub"(%33, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %35 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %36 = "tfl.sub"(%35, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %37 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %38 = "tfl.sub"(%37, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %39 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %40 = "tfl.sub"(%39, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %41 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %42 = "tfl.sub"(%41, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %43 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %44 = "tfl.sub"(%43, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %45 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %46 = "tfl.sub"(%45, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %47 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %48 = "tfl.sub"(%47, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %49 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %50 = "tfl.sub"(%49, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %51 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %52 = "tfl.sub"(%51, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %53 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %54 = "tfl.sub"(%53, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %55 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %56 = "tfl.sub"(%55, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %57 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %58 = "tfl.sub"(%57, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %59 = "tfl.pseudo_const"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %60 = "tfl.sub"(%59, %10) {fused_activation_function = "NONE"} : (tensor<f32>, tensor<1x384x384xf32>) -> tensor<1x384x384xf32>
    %61 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %62 = "tfl.reshape"(%8, %61) : (tensor<1x384x1x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %63 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %64 = "tfl.mul"(%14, %63) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %65 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %66 = "tfl.mul"(%16, %65) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %67 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %68 = "tfl.mul"(%18, %67) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %69 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %70 = "tfl.mul"(%20, %69) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %71 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %72 = "tfl.mul"(%22, %71) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %73 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %74 = "tfl.mul"(%24, %73) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %75 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %76 = "tfl.mul"(%26, %75) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %77 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %78 = "tfl.mul"(%28, %77) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %79 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %80 = "tfl.mul"(%30, %79) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %81 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %82 = "tfl.mul"(%32, %81) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %83 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %84 = "tfl.mul"(%34, %83) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %85 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %86 = "tfl.mul"(%36, %85) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %87 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %88 = "tfl.mul"(%38, %87) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %89 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %90 = "tfl.mul"(%40, %89) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %91 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %92 = "tfl.mul"(%42, %91) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %93 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %94 = "tfl.mul"(%44, %93) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %95 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %96 = "tfl.mul"(%46, %95) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %97 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %98 = "tfl.mul"(%48, %97) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %99 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %100 = "tfl.mul"(%50, %99) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %101 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %102 = "tfl.mul"(%52, %101) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %103 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %104 = "tfl.mul"(%54, %103) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %105 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %106 = "tfl.mul"(%56, %105) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %107 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %108 = "tfl.mul"(%58, %107) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %109 = "tfl.pseudo_const"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %110 = "tfl.mul"(%60, %109) {fused_activation_function = "NONE"} : (tensor<1x384x384xf32>, tensor<f32>) -> tensor<1x384x384xf32>
    %111 = "tfl.pseudo_const"() {value = dense<[0, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %112 = "tfl.pseudo_const"() {value = dense<[0, 0, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %113 = "tfl.pseudo_const"() {value = dense<1> : tensor<3xi32>} : () -> tensor<3xi32>
    %114 = "tfl.strided_slice"(%62, %111, %112, %113) {begin_mask = 5 : i32, ellipsis_mask = 0 : i32, end_mask = 7 : i32, new_axis_mask = 0 : i32, shrink_axis_mask = 0 : i32} : (tensor<1x384x128xf32>, tensor<3xi32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x383x128xf32>
    %115 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %116 = "tfl.pseudo_const"() {value = dense<[0, -1, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %117 = "tfl.pseudo_const"() {value = dense<1> : tensor<3xi32>} : () -> tensor<3xi32>
    %118 = "tfl.strided_slice"(%62, %115, %116, %117) {begin_mask = 7 : i32, ellipsis_mask = 0 : i32, end_mask = 5 : i32, new_axis_mask = 0 : i32, shrink_axis_mask = 0 : i32} : (tensor<1x384x128xf32>, tensor<3xi32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x383x128xf32>
    %119 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %120 = "tfl.reshape"(%64, %119) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %121 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %122 = "tfl.reshape"(%66, %121) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %123 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %124 = "tfl.reshape"(%68, %123) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %125 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %126 = "tfl.reshape"(%70, %125) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %127 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %128 = "tfl.reshape"(%72, %127) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %129 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %130 = "tfl.reshape"(%74, %129) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %131 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %132 = "tfl.reshape"(%76, %131) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %133 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %134 = "tfl.reshape"(%78, %133) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %135 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %136 = "tfl.reshape"(%80, %135) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %137 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %138 = "tfl.reshape"(%82, %137) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %139 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %140 = "tfl.reshape"(%84, %139) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %141 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %142 = "tfl.reshape"(%86, %141) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %143 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %144 = "tfl.reshape"(%88, %143) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %145 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %146 = "tfl.reshape"(%90, %145) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %147 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %148 = "tfl.reshape"(%92, %147) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %149 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %150 = "tfl.reshape"(%94, %149) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %151 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %152 = "tfl.reshape"(%96, %151) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %153 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %154 = "tfl.reshape"(%98, %153) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %155 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %156 = "tfl.reshape"(%100, %155) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %157 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %158 = "tfl.reshape"(%102, %157) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %159 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %160 = "tfl.reshape"(%104, %159) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %161 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %162 = "tfl.reshape"(%106, %161) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %163 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %164 = "tfl.reshape"(%108, %163) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %165 = "tfl.pseudo_const"() {value = dense<[[1, 1, 384, 384]]> : tensor<1x4xi32>} : () -> tensor<1x4xi32>
    %166 = "tfl.reshape"(%110, %165) : (tensor<1x384x384xf32>, tensor<1x4xi32>) -> tensor<1x1x384x384xf32>
    %167 = "tfl.pseudo_const"() {value = dense<[[0, 0], [0, 1], [0, 0]]> : tensor<3x2xi32>} : () -> tensor<3x2xi32>
    %168 = "tfl.pad"(%114, %167) : (tensor<1x383x128xf32>, tensor<3x2xi32>) -> tensor<1x384x128xf32>
    %169 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 0], [0, 0]]> : tensor<3x2xi32>} : () -> tensor<3x2xi32>
    %170 = "tfl.pad"(%118, %169) : (tensor<1x383x128xf32>, tensor<3x2xi32>) -> tensor<1x384x128xf32>
    %171 = "tfl.concatenation"(%168, %62, %170) {axis = 2 : i32, fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<1x384x128xf32>, tensor<1x384x128xf32>) -> tensor<1x384x384xf32>
    %172 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x384xf32>} : () -> tensor<512x384xf32>
    %173 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %174 = "tfl.fully_connected"(%171, %172, %173) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<512x384xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %175 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %176 = "tfl.reshape"(%174, %175) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %177 = tfl.add %176, %12 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %178 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %179 = "tfl.mul"(%177, %178) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %180 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %181 = "tfl.add"(%179, %180) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %182 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %183 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %184 = "tfl.fully_connected"(%181, %182, %183) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %185 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %186 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %187 = "tfl.fully_connected"(%181, %185, %186) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %188 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %189 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %190 = "tfl.fully_connected"(%181, %188, %189) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %191 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %192 = "tfl.reshape"(%184, %191) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %193 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %194 = "tfl.reshape"(%187, %193) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %195 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %196 = "tfl.reshape"(%190, %195) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %197 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %198 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %199 = "tfl.fully_connected"(%194, %197, %198) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %200 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %201 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %202 = "tfl.fully_connected"(%194, %200, %201) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %203 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %204 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %205 = "tfl.fully_connected"(%196, %203, %204) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %206 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %207 = "tfl.reshape"(%199, %206) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %208 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %209 = "tfl.reshape"(%202, %208) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %210 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %211 = "tfl.reshape"(%205, %210) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %212 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %213 = "tfl.transpose"(%207, %212) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %214 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %215 = "tfl.transpose"(%209, %214) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %216 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %217 = "tfl.transpose"(%211, %216) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %218 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %219 = "tfl.transpose"(%215, %218) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %220 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %221 = "tfl.reshape"(%213, %220) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %222 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %223 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %224 = "tfl.slice"(%221, %222, %223) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %225 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %226 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %227 = "tfl.slice"(%221, %225, %226) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %228 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %229 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %230 = "tfl.slice"(%221, %228, %229) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %231 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %232 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %233 = "tfl.slice"(%221, %231, %232) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %234 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %235 = "tfl.reshape"(%219, %234) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %236 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %237 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %238 = "tfl.slice"(%235, %236, %237) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %239 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %240 = "tfl.transpose"(%238, %239) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %241 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %242 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %243 = "tfl.slice"(%235, %241, %242) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %244 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %245 = "tfl.transpose"(%243, %244) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %246 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %247 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %248 = "tfl.slice"(%235, %246, %247) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %249 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %250 = "tfl.transpose"(%248, %249) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %251 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %252 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %253 = "tfl.slice"(%235, %251, %252) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %254 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %255 = "tfl.transpose"(%253, %254) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %256 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %257 = "tfl.reshape"(%240, %256) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %258 = "tfl.pseudo_const"() {value = dense<0.000000e+00> : tensor<384xf32>} : () -> tensor<384xf32>
    %259 = "tfl.fully_connected"(%224, %257, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %260 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %261 = "tfl.reshape"(%245, %260) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %262 = "tfl.fully_connected"(%227, %261, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %263 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %264 = "tfl.reshape"(%250, %263) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %265 = "tfl.fully_connected"(%230, %264, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %266 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %267 = "tfl.reshape"(%255, %266) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %268 = "tfl.fully_connected"(%233, %267, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %269 = "tfl.pack"(%259, %262, %265, %268) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %270 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %271 = "tfl.mul"(%269, %270) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %272 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %273 = "tfl.reshape"(%271, %272) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %274 = "tfl.add"(%273, %120) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %275 = "tfl.softmax"(%274) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %276 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %277 = "tfl.reshape"(%275, %276) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %278 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %279 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %280 = "tfl.slice"(%277, %278, %279) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %281 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %282 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %283 = "tfl.slice"(%277, %281, %282) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %284 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %285 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %286 = "tfl.slice"(%277, %284, %285) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %287 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %288 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %289 = "tfl.slice"(%277, %287, %288) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %290 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %291 = "tfl.reshape"(%217, %290) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %292 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %293 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %294 = "tfl.slice"(%291, %292, %293) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %295 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %296 = "tfl.transpose"(%294, %295) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %297 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %298 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %299 = "tfl.slice"(%291, %297, %298) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %300 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %301 = "tfl.transpose"(%299, %300) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %302 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %303 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %304 = "tfl.slice"(%291, %302, %303) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %305 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %306 = "tfl.transpose"(%304, %305) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %307 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %308 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %309 = "tfl.slice"(%291, %307, %308) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %310 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %311 = "tfl.transpose"(%309, %310) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %312 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %313 = "tfl.reshape"(%296, %312) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %314 = "tfl.pseudo_const"() {value = dense<0.000000e+00> : tensor<32xf32>} : () -> tensor<32xf32>
    %315 = "tfl.fully_connected"(%280, %313, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %316 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %317 = "tfl.reshape"(%301, %316) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %318 = "tfl.fully_connected"(%283, %317, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %319 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %320 = "tfl.reshape"(%306, %319) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %321 = "tfl.fully_connected"(%286, %320, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %322 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %323 = "tfl.reshape"(%311, %322) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %324 = "tfl.fully_connected"(%289, %323, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %325 = "tfl.pack"(%315, %318, %321, %324) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %326 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %327 = "tfl.transpose"(%325, %326) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %328 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %329 = "tfl.reshape"(%327, %328) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %330 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %331 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %332 = "tfl.fully_connected"(%329, %330, %331) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %333 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %334 = "tfl.reshape"(%332, %333) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %335 = tfl.add %334, %192 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %336 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %337 = "tfl.mul"(%335, %336) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %338 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %339 = "tfl.add"(%337, %338) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %340 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %341 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %342 = "tfl.fully_connected"(%339, %340, %341) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %343 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %344 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %345 = "tfl.fully_connected"(%342, %343, %344) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %346 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %347 = "tfl.reshape"(%345, %346) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %348 = tfl.add %347, %339 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %349 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %350 = "tfl.mul"(%348, %349) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %351 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %352 = "tfl.add"(%350, %351) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %353 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %354 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %355 = "tfl.fully_connected"(%352, %353, %354) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %356 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %357 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %358 = "tfl.fully_connected"(%355, %356, %357) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %359 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %360 = "tfl.reshape"(%358, %359) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %361 = tfl.add %360, %352 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %362 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %363 = "tfl.mul"(%361, %362) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %364 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %365 = "tfl.add"(%363, %364) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %366 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %367 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %368 = "tfl.fully_connected"(%365, %366, %367) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %369 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %370 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %371 = "tfl.fully_connected"(%368, %369, %370) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %372 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %373 = "tfl.reshape"(%371, %372) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %374 = tfl.add %373, %365 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %375 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %376 = "tfl.mul"(%374, %375) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %377 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %378 = "tfl.add"(%376, %377) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %379 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %380 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %381 = "tfl.fully_connected"(%378, %379, %380) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %382 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %383 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %384 = "tfl.fully_connected"(%381, %382, %383) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %385 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %386 = "tfl.reshape"(%384, %385) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %387 = tfl.add %386, %378 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %388 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %389 = "tfl.mul"(%387, %388) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %390 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %391 = "tfl.add"(%389, %390) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %392 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %393 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %394 = "tfl.fully_connected"(%391, %392, %393) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %395 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %396 = "tfl.reshape"(%394, %395) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %397 = tfl.add %396, %181 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %398 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %399 = "tfl.mul"(%397, %398) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %400 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %401 = "tfl.add"(%399, %400) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %402 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %403 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %404 = "tfl.fully_connected"(%401, %402, %403) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %405 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %406 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %407 = "tfl.fully_connected"(%401, %405, %406) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %408 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %409 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %410 = "tfl.fully_connected"(%401, %408, %409) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %411 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %412 = "tfl.reshape"(%404, %411) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %413 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %414 = "tfl.reshape"(%407, %413) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %415 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %416 = "tfl.reshape"(%410, %415) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %417 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %418 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %419 = "tfl.fully_connected"(%414, %417, %418) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %420 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %421 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %422 = "tfl.fully_connected"(%414, %420, %421) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %423 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %424 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %425 = "tfl.fully_connected"(%416, %423, %424) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %426 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %427 = "tfl.reshape"(%419, %426) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %428 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %429 = "tfl.reshape"(%422, %428) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %430 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %431 = "tfl.reshape"(%425, %430) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %432 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %433 = "tfl.transpose"(%427, %432) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %434 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %435 = "tfl.transpose"(%429, %434) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %436 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %437 = "tfl.transpose"(%431, %436) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %438 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %439 = "tfl.transpose"(%435, %438) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %440 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %441 = "tfl.reshape"(%433, %440) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %442 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %443 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %444 = "tfl.slice"(%441, %442, %443) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %445 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %446 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %447 = "tfl.slice"(%441, %445, %446) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %448 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %449 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %450 = "tfl.slice"(%441, %448, %449) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %451 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %452 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %453 = "tfl.slice"(%441, %451, %452) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %454 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %455 = "tfl.reshape"(%439, %454) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %456 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %457 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %458 = "tfl.slice"(%455, %456, %457) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %459 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %460 = "tfl.transpose"(%458, %459) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %461 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %462 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %463 = "tfl.slice"(%455, %461, %462) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %464 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %465 = "tfl.transpose"(%463, %464) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %466 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %467 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %468 = "tfl.slice"(%455, %466, %467) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %469 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %470 = "tfl.transpose"(%468, %469) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %471 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %472 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %473 = "tfl.slice"(%455, %471, %472) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %474 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %475 = "tfl.transpose"(%473, %474) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %476 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %477 = "tfl.reshape"(%460, %476) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %478 = "tfl.fully_connected"(%444, %477, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %479 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %480 = "tfl.reshape"(%465, %479) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %481 = "tfl.fully_connected"(%447, %480, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %482 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %483 = "tfl.reshape"(%470, %482) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %484 = "tfl.fully_connected"(%450, %483, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %485 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %486 = "tfl.reshape"(%475, %485) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %487 = "tfl.fully_connected"(%453, %486, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %488 = "tfl.pack"(%478, %481, %484, %487) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %489 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %490 = "tfl.mul"(%488, %489) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %491 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %492 = "tfl.reshape"(%490, %491) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %493 = "tfl.add"(%492, %122) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %494 = "tfl.softmax"(%493) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %495 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %496 = "tfl.reshape"(%494, %495) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %497 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %498 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %499 = "tfl.slice"(%496, %497, %498) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %500 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %501 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %502 = "tfl.slice"(%496, %500, %501) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %503 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %504 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %505 = "tfl.slice"(%496, %503, %504) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %506 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %507 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %508 = "tfl.slice"(%496, %506, %507) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %509 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %510 = "tfl.reshape"(%437, %509) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %511 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %512 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %513 = "tfl.slice"(%510, %511, %512) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %514 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %515 = "tfl.transpose"(%513, %514) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %516 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %517 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %518 = "tfl.slice"(%510, %516, %517) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %519 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %520 = "tfl.transpose"(%518, %519) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %521 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %522 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %523 = "tfl.slice"(%510, %521, %522) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %524 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %525 = "tfl.transpose"(%523, %524) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %526 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %527 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %528 = "tfl.slice"(%510, %526, %527) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %529 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %530 = "tfl.transpose"(%528, %529) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %531 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %532 = "tfl.reshape"(%515, %531) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %533 = "tfl.fully_connected"(%499, %532, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %534 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %535 = "tfl.reshape"(%520, %534) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %536 = "tfl.fully_connected"(%502, %535, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %537 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %538 = "tfl.reshape"(%525, %537) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %539 = "tfl.fully_connected"(%505, %538, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %540 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %541 = "tfl.reshape"(%530, %540) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %542 = "tfl.fully_connected"(%508, %541, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %543 = "tfl.pack"(%533, %536, %539, %542) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %544 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %545 = "tfl.transpose"(%543, %544) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %546 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %547 = "tfl.reshape"(%545, %546) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %548 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %549 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %550 = "tfl.fully_connected"(%547, %548, %549) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %551 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %552 = "tfl.reshape"(%550, %551) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %553 = tfl.add %552, %412 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %554 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %555 = "tfl.mul"(%553, %554) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %556 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %557 = "tfl.add"(%555, %556) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %558 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %559 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %560 = "tfl.fully_connected"(%557, %558, %559) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %561 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %562 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %563 = "tfl.fully_connected"(%560, %561, %562) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %564 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %565 = "tfl.reshape"(%563, %564) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %566 = tfl.add %565, %557 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %567 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %568 = "tfl.mul"(%566, %567) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %569 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %570 = "tfl.add"(%568, %569) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %571 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %572 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %573 = "tfl.fully_connected"(%570, %571, %572) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %574 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %575 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %576 = "tfl.fully_connected"(%573, %574, %575) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %577 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %578 = "tfl.reshape"(%576, %577) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %579 = tfl.add %578, %570 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %580 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %581 = "tfl.mul"(%579, %580) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %582 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %583 = "tfl.add"(%581, %582) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %584 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %585 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %586 = "tfl.fully_connected"(%583, %584, %585) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %587 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %588 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %589 = "tfl.fully_connected"(%586, %587, %588) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %590 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %591 = "tfl.reshape"(%589, %590) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %592 = tfl.add %591, %583 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %593 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %594 = "tfl.mul"(%592, %593) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %595 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %596 = "tfl.add"(%594, %595) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %597 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %598 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %599 = "tfl.fully_connected"(%596, %597, %598) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %600 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %601 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %602 = "tfl.fully_connected"(%599, %600, %601) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %603 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %604 = "tfl.reshape"(%602, %603) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %605 = tfl.add %604, %596 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %606 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %607 = "tfl.mul"(%605, %606) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %608 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %609 = "tfl.add"(%607, %608) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %610 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %611 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %612 = "tfl.fully_connected"(%609, %610, %611) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %613 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %614 = "tfl.reshape"(%612, %613) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %615 = tfl.add %614, %401 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %616 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %617 = "tfl.mul"(%615, %616) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %618 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %619 = "tfl.add"(%617, %618) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %620 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %621 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %622 = "tfl.fully_connected"(%619, %620, %621) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %623 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %624 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %625 = "tfl.fully_connected"(%619, %623, %624) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %626 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %627 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %628 = "tfl.fully_connected"(%619, %626, %627) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %629 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %630 = "tfl.reshape"(%622, %629) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %631 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %632 = "tfl.reshape"(%625, %631) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %633 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %634 = "tfl.reshape"(%628, %633) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %635 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %636 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %637 = "tfl.fully_connected"(%632, %635, %636) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %638 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %639 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %640 = "tfl.fully_connected"(%632, %638, %639) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %641 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %642 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %643 = "tfl.fully_connected"(%634, %641, %642) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %644 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %645 = "tfl.reshape"(%637, %644) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %646 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %647 = "tfl.reshape"(%640, %646) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %648 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %649 = "tfl.reshape"(%643, %648) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %650 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %651 = "tfl.transpose"(%645, %650) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %652 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %653 = "tfl.transpose"(%647, %652) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %654 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %655 = "tfl.transpose"(%649, %654) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %656 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %657 = "tfl.transpose"(%653, %656) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %658 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %659 = "tfl.reshape"(%651, %658) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %660 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %661 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %662 = "tfl.slice"(%659, %660, %661) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %663 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %664 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %665 = "tfl.slice"(%659, %663, %664) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %666 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %667 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %668 = "tfl.slice"(%659, %666, %667) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %669 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %670 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %671 = "tfl.slice"(%659, %669, %670) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %672 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %673 = "tfl.reshape"(%657, %672) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %674 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %675 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %676 = "tfl.slice"(%673, %674, %675) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %677 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %678 = "tfl.transpose"(%676, %677) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %679 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %680 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %681 = "tfl.slice"(%673, %679, %680) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %682 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %683 = "tfl.transpose"(%681, %682) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %684 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %685 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %686 = "tfl.slice"(%673, %684, %685) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %687 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %688 = "tfl.transpose"(%686, %687) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %689 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %690 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %691 = "tfl.slice"(%673, %689, %690) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %692 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %693 = "tfl.transpose"(%691, %692) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %694 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %695 = "tfl.reshape"(%678, %694) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %696 = "tfl.fully_connected"(%662, %695, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %697 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %698 = "tfl.reshape"(%683, %697) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %699 = "tfl.fully_connected"(%665, %698, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %700 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %701 = "tfl.reshape"(%688, %700) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %702 = "tfl.fully_connected"(%668, %701, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %703 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %704 = "tfl.reshape"(%693, %703) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %705 = "tfl.fully_connected"(%671, %704, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %706 = "tfl.pack"(%696, %699, %702, %705) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %707 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %708 = "tfl.mul"(%706, %707) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %709 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %710 = "tfl.reshape"(%708, %709) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %711 = "tfl.add"(%710, %124) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %712 = "tfl.softmax"(%711) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %713 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %714 = "tfl.reshape"(%712, %713) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %715 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %716 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %717 = "tfl.slice"(%714, %715, %716) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %718 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %719 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %720 = "tfl.slice"(%714, %718, %719) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %721 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %722 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %723 = "tfl.slice"(%714, %721, %722) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %724 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %725 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %726 = "tfl.slice"(%714, %724, %725) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %727 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %728 = "tfl.reshape"(%655, %727) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %729 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %730 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %731 = "tfl.slice"(%728, %729, %730) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %732 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %733 = "tfl.transpose"(%731, %732) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %734 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %735 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %736 = "tfl.slice"(%728, %734, %735) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %737 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %738 = "tfl.transpose"(%736, %737) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %739 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %740 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %741 = "tfl.slice"(%728, %739, %740) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %742 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %743 = "tfl.transpose"(%741, %742) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %744 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %745 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %746 = "tfl.slice"(%728, %744, %745) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %747 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %748 = "tfl.transpose"(%746, %747) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %749 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %750 = "tfl.reshape"(%733, %749) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %751 = "tfl.fully_connected"(%717, %750, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %752 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %753 = "tfl.reshape"(%738, %752) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %754 = "tfl.fully_connected"(%720, %753, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %755 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %756 = "tfl.reshape"(%743, %755) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %757 = "tfl.fully_connected"(%723, %756, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %758 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %759 = "tfl.reshape"(%748, %758) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %760 = "tfl.fully_connected"(%726, %759, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %761 = "tfl.pack"(%751, %754, %757, %760) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %762 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %763 = "tfl.transpose"(%761, %762) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %764 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %765 = "tfl.reshape"(%763, %764) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %766 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %767 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %768 = "tfl.fully_connected"(%765, %766, %767) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %769 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %770 = "tfl.reshape"(%768, %769) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %771 = tfl.add %770, %630 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %772 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %773 = "tfl.mul"(%771, %772) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %774 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %775 = "tfl.add"(%773, %774) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %776 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %777 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %778 = "tfl.fully_connected"(%775, %776, %777) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %779 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %780 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %781 = "tfl.fully_connected"(%778, %779, %780) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %782 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %783 = "tfl.reshape"(%781, %782) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %784 = tfl.add %783, %775 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %785 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %786 = "tfl.mul"(%784, %785) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %787 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %788 = "tfl.add"(%786, %787) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %789 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %790 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %791 = "tfl.fully_connected"(%788, %789, %790) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %792 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %793 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %794 = "tfl.fully_connected"(%791, %792, %793) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %795 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %796 = "tfl.reshape"(%794, %795) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %797 = tfl.add %796, %788 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %798 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %799 = "tfl.mul"(%797, %798) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %800 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %801 = "tfl.add"(%799, %800) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %802 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %803 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %804 = "tfl.fully_connected"(%801, %802, %803) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %805 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %806 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %807 = "tfl.fully_connected"(%804, %805, %806) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %808 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %809 = "tfl.reshape"(%807, %808) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %810 = tfl.add %809, %801 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %811 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %812 = "tfl.mul"(%810, %811) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %813 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %814 = "tfl.add"(%812, %813) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %815 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %816 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %817 = "tfl.fully_connected"(%814, %815, %816) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %818 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %819 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %820 = "tfl.fully_connected"(%817, %818, %819) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %821 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %822 = "tfl.reshape"(%820, %821) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %823 = tfl.add %822, %814 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %824 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %825 = "tfl.mul"(%823, %824) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %826 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %827 = "tfl.add"(%825, %826) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %828 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %829 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %830 = "tfl.fully_connected"(%827, %828, %829) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %831 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %832 = "tfl.reshape"(%830, %831) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %833 = tfl.add %832, %619 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %834 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %835 = "tfl.mul"(%833, %834) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %836 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %837 = "tfl.add"(%835, %836) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %838 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %839 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %840 = "tfl.fully_connected"(%837, %838, %839) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %841 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %842 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %843 = "tfl.fully_connected"(%837, %841, %842) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %844 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %845 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %846 = "tfl.fully_connected"(%837, %844, %845) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %847 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %848 = "tfl.reshape"(%840, %847) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %849 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %850 = "tfl.reshape"(%843, %849) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %851 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %852 = "tfl.reshape"(%846, %851) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %853 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %854 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %855 = "tfl.fully_connected"(%850, %853, %854) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %856 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %857 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %858 = "tfl.fully_connected"(%850, %856, %857) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %859 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %860 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %861 = "tfl.fully_connected"(%852, %859, %860) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %862 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %863 = "tfl.reshape"(%855, %862) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %864 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %865 = "tfl.reshape"(%858, %864) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %866 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %867 = "tfl.reshape"(%861, %866) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %868 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %869 = "tfl.transpose"(%863, %868) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %870 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %871 = "tfl.transpose"(%865, %870) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %872 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %873 = "tfl.transpose"(%867, %872) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %874 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %875 = "tfl.transpose"(%871, %874) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %876 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %877 = "tfl.reshape"(%869, %876) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %878 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %879 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %880 = "tfl.slice"(%877, %878, %879) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %881 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %882 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %883 = "tfl.slice"(%877, %881, %882) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %884 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %885 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %886 = "tfl.slice"(%877, %884, %885) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %887 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %888 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %889 = "tfl.slice"(%877, %887, %888) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %890 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %891 = "tfl.reshape"(%875, %890) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %892 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %893 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %894 = "tfl.slice"(%891, %892, %893) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %895 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %896 = "tfl.transpose"(%894, %895) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %897 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %898 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %899 = "tfl.slice"(%891, %897, %898) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %900 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %901 = "tfl.transpose"(%899, %900) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %902 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %903 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %904 = "tfl.slice"(%891, %902, %903) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %905 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %906 = "tfl.transpose"(%904, %905) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %907 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %908 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %909 = "tfl.slice"(%891, %907, %908) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %910 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %911 = "tfl.transpose"(%909, %910) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %912 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %913 = "tfl.reshape"(%896, %912) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %914 = "tfl.fully_connected"(%880, %913, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %915 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %916 = "tfl.reshape"(%901, %915) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %917 = "tfl.fully_connected"(%883, %916, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %918 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %919 = "tfl.reshape"(%906, %918) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %920 = "tfl.fully_connected"(%886, %919, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %921 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %922 = "tfl.reshape"(%911, %921) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %923 = "tfl.fully_connected"(%889, %922, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %924 = "tfl.pack"(%914, %917, %920, %923) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %925 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %926 = "tfl.mul"(%924, %925) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %927 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %928 = "tfl.reshape"(%926, %927) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %929 = "tfl.add"(%928, %126) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %930 = "tfl.softmax"(%929) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %931 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %932 = "tfl.reshape"(%930, %931) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %933 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %934 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %935 = "tfl.slice"(%932, %933, %934) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %936 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %937 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %938 = "tfl.slice"(%932, %936, %937) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %939 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %940 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %941 = "tfl.slice"(%932, %939, %940) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %942 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %943 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %944 = "tfl.slice"(%932, %942, %943) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %945 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %946 = "tfl.reshape"(%873, %945) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %947 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %948 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %949 = "tfl.slice"(%946, %947, %948) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %950 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %951 = "tfl.transpose"(%949, %950) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %952 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %953 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %954 = "tfl.slice"(%946, %952, %953) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %955 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %956 = "tfl.transpose"(%954, %955) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %957 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %958 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %959 = "tfl.slice"(%946, %957, %958) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %960 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %961 = "tfl.transpose"(%959, %960) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %962 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %963 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %964 = "tfl.slice"(%946, %962, %963) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %965 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %966 = "tfl.transpose"(%964, %965) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %967 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %968 = "tfl.reshape"(%951, %967) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %969 = "tfl.fully_connected"(%935, %968, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %970 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %971 = "tfl.reshape"(%956, %970) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %972 = "tfl.fully_connected"(%938, %971, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %973 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %974 = "tfl.reshape"(%961, %973) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %975 = "tfl.fully_connected"(%941, %974, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %976 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %977 = "tfl.reshape"(%966, %976) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %978 = "tfl.fully_connected"(%944, %977, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %979 = "tfl.pack"(%969, %972, %975, %978) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %980 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %981 = "tfl.transpose"(%979, %980) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %982 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %983 = "tfl.reshape"(%981, %982) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %984 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %985 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %986 = "tfl.fully_connected"(%983, %984, %985) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %987 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %988 = "tfl.reshape"(%986, %987) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %989 = tfl.add %988, %848 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %990 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %991 = "tfl.mul"(%989, %990) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %992 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %993 = "tfl.add"(%991, %992) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %994 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %995 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %996 = "tfl.fully_connected"(%993, %994, %995) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %997 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %998 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %999 = "tfl.fully_connected"(%996, %997, %998) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1000 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1001 = "tfl.reshape"(%999, %1000) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1002 = tfl.add %1001, %993 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1003 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1004 = "tfl.mul"(%1002, %1003) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1005 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1006 = "tfl.add"(%1004, %1005) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1007 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1008 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1009 = "tfl.fully_connected"(%1006, %1007, %1008) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1010 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1011 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1012 = "tfl.fully_connected"(%1009, %1010, %1011) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1013 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1014 = "tfl.reshape"(%1012, %1013) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1015 = tfl.add %1014, %1006 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1016 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1017 = "tfl.mul"(%1015, %1016) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1018 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1019 = "tfl.add"(%1017, %1018) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1020 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1021 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1022 = "tfl.fully_connected"(%1019, %1020, %1021) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1023 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1024 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1025 = "tfl.fully_connected"(%1022, %1023, %1024) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1026 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1027 = "tfl.reshape"(%1025, %1026) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1028 = tfl.add %1027, %1019 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1029 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1030 = "tfl.mul"(%1028, %1029) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1031 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1032 = "tfl.add"(%1030, %1031) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1033 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1034 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1035 = "tfl.fully_connected"(%1032, %1033, %1034) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1036 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1037 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1038 = "tfl.fully_connected"(%1035, %1036, %1037) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1039 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1040 = "tfl.reshape"(%1038, %1039) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1041 = tfl.add %1040, %1032 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1042 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1043 = "tfl.mul"(%1041, %1042) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1044 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1045 = "tfl.add"(%1043, %1044) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1046 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1047 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1048 = "tfl.fully_connected"(%1045, %1046, %1047) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1049 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1050 = "tfl.reshape"(%1048, %1049) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %1051 = tfl.add %1050, %837 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %1052 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1053 = "tfl.mul"(%1051, %1052) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1054 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1055 = "tfl.add"(%1053, %1054) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1056 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1057 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1058 = "tfl.fully_connected"(%1055, %1056, %1057) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1059 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1060 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1061 = "tfl.fully_connected"(%1055, %1059, %1060) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1062 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1063 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1064 = "tfl.fully_connected"(%1055, %1062, %1063) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1065 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1066 = "tfl.reshape"(%1058, %1065) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1067 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1068 = "tfl.reshape"(%1061, %1067) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1069 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1070 = "tfl.reshape"(%1064, %1069) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1071 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1072 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1073 = "tfl.fully_connected"(%1068, %1071, %1072) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1074 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1075 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1076 = "tfl.fully_connected"(%1068, %1074, %1075) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1077 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1078 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1079 = "tfl.fully_connected"(%1070, %1077, %1078) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1080 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1081 = "tfl.reshape"(%1073, %1080) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1082 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1083 = "tfl.reshape"(%1076, %1082) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1084 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1085 = "tfl.reshape"(%1079, %1084) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1086 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1087 = "tfl.transpose"(%1081, %1086) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1088 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1089 = "tfl.transpose"(%1083, %1088) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1090 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1091 = "tfl.transpose"(%1085, %1090) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1092 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1093 = "tfl.transpose"(%1089, %1092) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %1094 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1095 = "tfl.reshape"(%1087, %1094) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %1096 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1097 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1098 = "tfl.slice"(%1095, %1096, %1097) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1099 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1100 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1101 = "tfl.slice"(%1095, %1099, %1100) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1102 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1103 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1104 = "tfl.slice"(%1095, %1102, %1103) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1105 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1106 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1107 = "tfl.slice"(%1095, %1105, %1106) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1108 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1109 = "tfl.reshape"(%1093, %1108) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %1110 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1111 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1112 = "tfl.slice"(%1109, %1110, %1111) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1113 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1114 = "tfl.transpose"(%1112, %1113) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1115 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1116 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1117 = "tfl.slice"(%1109, %1115, %1116) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1118 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1119 = "tfl.transpose"(%1117, %1118) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1120 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1121 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1122 = "tfl.slice"(%1109, %1120, %1121) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1123 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1124 = "tfl.transpose"(%1122, %1123) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1125 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1126 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1127 = "tfl.slice"(%1109, %1125, %1126) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1128 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1129 = "tfl.transpose"(%1127, %1128) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1130 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1131 = "tfl.reshape"(%1114, %1130) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1132 = "tfl.fully_connected"(%1098, %1131, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1133 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1134 = "tfl.reshape"(%1119, %1133) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1135 = "tfl.fully_connected"(%1101, %1134, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1136 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1137 = "tfl.reshape"(%1124, %1136) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1138 = "tfl.fully_connected"(%1104, %1137, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1139 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1140 = "tfl.reshape"(%1129, %1139) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1141 = "tfl.fully_connected"(%1107, %1140, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1142 = "tfl.pack"(%1132, %1135, %1138, %1141) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %1143 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %1144 = "tfl.mul"(%1142, %1143) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %1145 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1146 = "tfl.reshape"(%1144, %1145) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %1147 = "tfl.add"(%1146, %128) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %1148 = "tfl.softmax"(%1147) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %1149 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1150 = "tfl.reshape"(%1148, %1149) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %1151 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1152 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1153 = "tfl.slice"(%1150, %1151, %1152) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1154 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1155 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1156 = "tfl.slice"(%1150, %1154, %1155) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1157 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1158 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1159 = "tfl.slice"(%1150, %1157, %1158) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1160 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1161 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1162 = "tfl.slice"(%1150, %1160, %1161) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1163 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1164 = "tfl.reshape"(%1091, %1163) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %1165 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1166 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1167 = "tfl.slice"(%1164, %1165, %1166) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1168 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1169 = "tfl.transpose"(%1167, %1168) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1170 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1171 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1172 = "tfl.slice"(%1164, %1170, %1171) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1173 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1174 = "tfl.transpose"(%1172, %1173) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1175 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1176 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1177 = "tfl.slice"(%1164, %1175, %1176) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1178 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1179 = "tfl.transpose"(%1177, %1178) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1180 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1181 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1182 = "tfl.slice"(%1164, %1180, %1181) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1183 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1184 = "tfl.transpose"(%1182, %1183) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1185 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1186 = "tfl.reshape"(%1169, %1185) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1187 = "tfl.fully_connected"(%1153, %1186, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1188 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1189 = "tfl.reshape"(%1174, %1188) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1190 = "tfl.fully_connected"(%1156, %1189, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1191 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1192 = "tfl.reshape"(%1179, %1191) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1193 = "tfl.fully_connected"(%1159, %1192, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1194 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1195 = "tfl.reshape"(%1184, %1194) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1196 = "tfl.fully_connected"(%1162, %1195, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1197 = "tfl.pack"(%1187, %1190, %1193, %1196) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %1198 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1199 = "tfl.transpose"(%1197, %1198) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %1200 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1201 = "tfl.reshape"(%1199, %1200) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1202 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1203 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1204 = "tfl.fully_connected"(%1201, %1202, %1203) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1205 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1206 = "tfl.reshape"(%1204, %1205) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1207 = tfl.add %1206, %1066 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1208 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1209 = "tfl.mul"(%1207, %1208) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1210 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1211 = "tfl.add"(%1209, %1210) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1212 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1213 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1214 = "tfl.fully_connected"(%1211, %1212, %1213) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1215 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1216 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1217 = "tfl.fully_connected"(%1214, %1215, %1216) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1218 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1219 = "tfl.reshape"(%1217, %1218) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1220 = tfl.add %1219, %1211 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1221 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1222 = "tfl.mul"(%1220, %1221) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1223 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1224 = "tfl.add"(%1222, %1223) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1225 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1226 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1227 = "tfl.fully_connected"(%1224, %1225, %1226) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1228 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1229 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1230 = "tfl.fully_connected"(%1227, %1228, %1229) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1231 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1232 = "tfl.reshape"(%1230, %1231) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1233 = tfl.add %1232, %1224 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1234 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1235 = "tfl.mul"(%1233, %1234) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1236 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1237 = "tfl.add"(%1235, %1236) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1238 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1239 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1240 = "tfl.fully_connected"(%1237, %1238, %1239) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1241 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1242 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1243 = "tfl.fully_connected"(%1240, %1241, %1242) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1244 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1245 = "tfl.reshape"(%1243, %1244) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1246 = tfl.add %1245, %1237 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1247 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1248 = "tfl.mul"(%1246, %1247) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1249 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1250 = "tfl.add"(%1248, %1249) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1251 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1252 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1253 = "tfl.fully_connected"(%1250, %1251, %1252) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1254 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1255 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1256 = "tfl.fully_connected"(%1253, %1254, %1255) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1257 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1258 = "tfl.reshape"(%1256, %1257) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1259 = tfl.add %1258, %1250 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1260 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1261 = "tfl.mul"(%1259, %1260) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1262 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1263 = "tfl.add"(%1261, %1262) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1264 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1265 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1266 = "tfl.fully_connected"(%1263, %1264, %1265) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1267 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1268 = "tfl.reshape"(%1266, %1267) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %1269 = tfl.add %1268, %1055 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %1270 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1271 = "tfl.mul"(%1269, %1270) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1272 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1273 = "tfl.add"(%1271, %1272) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1274 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1275 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1276 = "tfl.fully_connected"(%1273, %1274, %1275) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1277 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1278 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1279 = "tfl.fully_connected"(%1273, %1277, %1278) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1280 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1281 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1282 = "tfl.fully_connected"(%1273, %1280, %1281) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1283 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1284 = "tfl.reshape"(%1276, %1283) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1285 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1286 = "tfl.reshape"(%1279, %1285) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1287 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1288 = "tfl.reshape"(%1282, %1287) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1289 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1290 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1291 = "tfl.fully_connected"(%1286, %1289, %1290) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1292 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1293 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1294 = "tfl.fully_connected"(%1286, %1292, %1293) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1295 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1296 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1297 = "tfl.fully_connected"(%1288, %1295, %1296) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1298 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1299 = "tfl.reshape"(%1291, %1298) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1300 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1301 = "tfl.reshape"(%1294, %1300) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1302 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1303 = "tfl.reshape"(%1297, %1302) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1304 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1305 = "tfl.transpose"(%1299, %1304) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1306 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1307 = "tfl.transpose"(%1301, %1306) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1308 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1309 = "tfl.transpose"(%1303, %1308) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1310 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1311 = "tfl.transpose"(%1307, %1310) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %1312 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1313 = "tfl.reshape"(%1305, %1312) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %1314 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1315 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1316 = "tfl.slice"(%1313, %1314, %1315) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1317 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1318 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1319 = "tfl.slice"(%1313, %1317, %1318) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1320 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1321 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1322 = "tfl.slice"(%1313, %1320, %1321) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1323 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1324 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1325 = "tfl.slice"(%1313, %1323, %1324) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1326 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1327 = "tfl.reshape"(%1311, %1326) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %1328 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1329 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1330 = "tfl.slice"(%1327, %1328, %1329) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1331 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1332 = "tfl.transpose"(%1330, %1331) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1333 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1334 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1335 = "tfl.slice"(%1327, %1333, %1334) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1336 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1337 = "tfl.transpose"(%1335, %1336) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1338 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1339 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1340 = "tfl.slice"(%1327, %1338, %1339) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1341 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1342 = "tfl.transpose"(%1340, %1341) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1343 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1344 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1345 = "tfl.slice"(%1327, %1343, %1344) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1346 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1347 = "tfl.transpose"(%1345, %1346) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1348 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1349 = "tfl.reshape"(%1332, %1348) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1350 = "tfl.fully_connected"(%1316, %1349, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1351 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1352 = "tfl.reshape"(%1337, %1351) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1353 = "tfl.fully_connected"(%1319, %1352, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1354 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1355 = "tfl.reshape"(%1342, %1354) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1356 = "tfl.fully_connected"(%1322, %1355, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1357 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1358 = "tfl.reshape"(%1347, %1357) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1359 = "tfl.fully_connected"(%1325, %1358, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1360 = "tfl.pack"(%1350, %1353, %1356, %1359) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %1361 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %1362 = "tfl.mul"(%1360, %1361) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %1363 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1364 = "tfl.reshape"(%1362, %1363) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %1365 = "tfl.add"(%1364, %130) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %1366 = "tfl.softmax"(%1365) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %1367 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1368 = "tfl.reshape"(%1366, %1367) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %1369 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1370 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1371 = "tfl.slice"(%1368, %1369, %1370) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1372 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1373 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1374 = "tfl.slice"(%1368, %1372, %1373) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1375 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1376 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1377 = "tfl.slice"(%1368, %1375, %1376) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1378 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1379 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1380 = "tfl.slice"(%1368, %1378, %1379) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1381 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1382 = "tfl.reshape"(%1309, %1381) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %1383 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1384 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1385 = "tfl.slice"(%1382, %1383, %1384) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1386 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1387 = "tfl.transpose"(%1385, %1386) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1388 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1389 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1390 = "tfl.slice"(%1382, %1388, %1389) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1391 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1392 = "tfl.transpose"(%1390, %1391) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1393 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1394 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1395 = "tfl.slice"(%1382, %1393, %1394) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1396 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1397 = "tfl.transpose"(%1395, %1396) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1398 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1399 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1400 = "tfl.slice"(%1382, %1398, %1399) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1401 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1402 = "tfl.transpose"(%1400, %1401) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1403 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1404 = "tfl.reshape"(%1387, %1403) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1405 = "tfl.fully_connected"(%1371, %1404, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1406 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1407 = "tfl.reshape"(%1392, %1406) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1408 = "tfl.fully_connected"(%1374, %1407, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1409 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1410 = "tfl.reshape"(%1397, %1409) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1411 = "tfl.fully_connected"(%1377, %1410, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1412 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1413 = "tfl.reshape"(%1402, %1412) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1414 = "tfl.fully_connected"(%1380, %1413, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1415 = "tfl.pack"(%1405, %1408, %1411, %1414) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %1416 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1417 = "tfl.transpose"(%1415, %1416) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %1418 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1419 = "tfl.reshape"(%1417, %1418) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1420 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1421 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1422 = "tfl.fully_connected"(%1419, %1420, %1421) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1423 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1424 = "tfl.reshape"(%1422, %1423) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1425 = tfl.add %1424, %1284 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1426 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1427 = "tfl.mul"(%1425, %1426) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1428 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1429 = "tfl.add"(%1427, %1428) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1430 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1431 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1432 = "tfl.fully_connected"(%1429, %1430, %1431) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1433 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1434 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1435 = "tfl.fully_connected"(%1432, %1433, %1434) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1436 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1437 = "tfl.reshape"(%1435, %1436) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1438 = tfl.add %1437, %1429 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1439 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1440 = "tfl.mul"(%1438, %1439) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1441 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1442 = "tfl.add"(%1440, %1441) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1443 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1444 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1445 = "tfl.fully_connected"(%1442, %1443, %1444) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1446 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1447 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1448 = "tfl.fully_connected"(%1445, %1446, %1447) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1449 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1450 = "tfl.reshape"(%1448, %1449) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1451 = tfl.add %1450, %1442 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1452 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1453 = "tfl.mul"(%1451, %1452) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1454 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1455 = "tfl.add"(%1453, %1454) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1456 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1457 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1458 = "tfl.fully_connected"(%1455, %1456, %1457) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1459 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1460 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1461 = "tfl.fully_connected"(%1458, %1459, %1460) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1462 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1463 = "tfl.reshape"(%1461, %1462) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1464 = tfl.add %1463, %1455 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1465 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1466 = "tfl.mul"(%1464, %1465) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1467 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1468 = "tfl.add"(%1466, %1467) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1469 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1470 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1471 = "tfl.fully_connected"(%1468, %1469, %1470) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1472 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1473 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1474 = "tfl.fully_connected"(%1471, %1472, %1473) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1475 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1476 = "tfl.reshape"(%1474, %1475) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1477 = tfl.add %1476, %1468 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1478 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1479 = "tfl.mul"(%1477, %1478) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1480 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1481 = "tfl.add"(%1479, %1480) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1482 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1483 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1484 = "tfl.fully_connected"(%1481, %1482, %1483) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1485 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1486 = "tfl.reshape"(%1484, %1485) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %1487 = tfl.add %1486, %1273 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %1488 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1489 = "tfl.mul"(%1487, %1488) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1490 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1491 = "tfl.add"(%1489, %1490) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1492 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1493 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1494 = "tfl.fully_connected"(%1491, %1492, %1493) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1495 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1496 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1497 = "tfl.fully_connected"(%1491, %1495, %1496) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1498 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1499 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1500 = "tfl.fully_connected"(%1491, %1498, %1499) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1501 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1502 = "tfl.reshape"(%1494, %1501) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1503 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1504 = "tfl.reshape"(%1497, %1503) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1505 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1506 = "tfl.reshape"(%1500, %1505) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1507 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1508 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1509 = "tfl.fully_connected"(%1504, %1507, %1508) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1510 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1511 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1512 = "tfl.fully_connected"(%1504, %1510, %1511) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1513 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1514 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1515 = "tfl.fully_connected"(%1506, %1513, %1514) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1516 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1517 = "tfl.reshape"(%1509, %1516) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1518 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1519 = "tfl.reshape"(%1512, %1518) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1520 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1521 = "tfl.reshape"(%1515, %1520) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1522 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1523 = "tfl.transpose"(%1517, %1522) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1524 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1525 = "tfl.transpose"(%1519, %1524) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1526 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1527 = "tfl.transpose"(%1521, %1526) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1528 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1529 = "tfl.transpose"(%1525, %1528) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %1530 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1531 = "tfl.reshape"(%1523, %1530) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %1532 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1533 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1534 = "tfl.slice"(%1531, %1532, %1533) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1535 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1536 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1537 = "tfl.slice"(%1531, %1535, %1536) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1538 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1539 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1540 = "tfl.slice"(%1531, %1538, %1539) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1541 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1542 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1543 = "tfl.slice"(%1531, %1541, %1542) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1544 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1545 = "tfl.reshape"(%1529, %1544) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %1546 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1547 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1548 = "tfl.slice"(%1545, %1546, %1547) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1549 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1550 = "tfl.transpose"(%1548, %1549) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1551 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1552 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1553 = "tfl.slice"(%1545, %1551, %1552) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1554 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1555 = "tfl.transpose"(%1553, %1554) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1556 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1557 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1558 = "tfl.slice"(%1545, %1556, %1557) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1559 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1560 = "tfl.transpose"(%1558, %1559) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1561 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1562 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1563 = "tfl.slice"(%1545, %1561, %1562) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1564 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1565 = "tfl.transpose"(%1563, %1564) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1566 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1567 = "tfl.reshape"(%1550, %1566) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1568 = "tfl.fully_connected"(%1534, %1567, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1569 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1570 = "tfl.reshape"(%1555, %1569) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1571 = "tfl.fully_connected"(%1537, %1570, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1572 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1573 = "tfl.reshape"(%1560, %1572) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1574 = "tfl.fully_connected"(%1540, %1573, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1575 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1576 = "tfl.reshape"(%1565, %1575) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1577 = "tfl.fully_connected"(%1543, %1576, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1578 = "tfl.pack"(%1568, %1571, %1574, %1577) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %1579 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %1580 = "tfl.mul"(%1578, %1579) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %1581 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1582 = "tfl.reshape"(%1580, %1581) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %1583 = "tfl.add"(%1582, %132) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %1584 = "tfl.softmax"(%1583) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %1585 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1586 = "tfl.reshape"(%1584, %1585) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %1587 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1588 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1589 = "tfl.slice"(%1586, %1587, %1588) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1590 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1591 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1592 = "tfl.slice"(%1586, %1590, %1591) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1593 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1594 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1595 = "tfl.slice"(%1586, %1593, %1594) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1596 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1597 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1598 = "tfl.slice"(%1586, %1596, %1597) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1599 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1600 = "tfl.reshape"(%1527, %1599) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %1601 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1602 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1603 = "tfl.slice"(%1600, %1601, %1602) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1604 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1605 = "tfl.transpose"(%1603, %1604) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1606 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1607 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1608 = "tfl.slice"(%1600, %1606, %1607) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1609 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1610 = "tfl.transpose"(%1608, %1609) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1611 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1612 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1613 = "tfl.slice"(%1600, %1611, %1612) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1614 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1615 = "tfl.transpose"(%1613, %1614) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1616 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1617 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1618 = "tfl.slice"(%1600, %1616, %1617) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1619 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1620 = "tfl.transpose"(%1618, %1619) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1621 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1622 = "tfl.reshape"(%1605, %1621) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1623 = "tfl.fully_connected"(%1589, %1622, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1624 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1625 = "tfl.reshape"(%1610, %1624) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1626 = "tfl.fully_connected"(%1592, %1625, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1627 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1628 = "tfl.reshape"(%1615, %1627) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1629 = "tfl.fully_connected"(%1595, %1628, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1630 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1631 = "tfl.reshape"(%1620, %1630) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1632 = "tfl.fully_connected"(%1598, %1631, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1633 = "tfl.pack"(%1623, %1626, %1629, %1632) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %1634 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1635 = "tfl.transpose"(%1633, %1634) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %1636 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1637 = "tfl.reshape"(%1635, %1636) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1638 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1639 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1640 = "tfl.fully_connected"(%1637, %1638, %1639) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1641 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1642 = "tfl.reshape"(%1640, %1641) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1643 = tfl.add %1642, %1502 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1644 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1645 = "tfl.mul"(%1643, %1644) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1646 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1647 = "tfl.add"(%1645, %1646) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1648 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1649 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1650 = "tfl.fully_connected"(%1647, %1648, %1649) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1651 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1652 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1653 = "tfl.fully_connected"(%1650, %1651, %1652) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1654 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1655 = "tfl.reshape"(%1653, %1654) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1656 = tfl.add %1655, %1647 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1657 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1658 = "tfl.mul"(%1656, %1657) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1659 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1660 = "tfl.add"(%1658, %1659) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1661 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1662 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1663 = "tfl.fully_connected"(%1660, %1661, %1662) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1664 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1665 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1666 = "tfl.fully_connected"(%1663, %1664, %1665) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1667 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1668 = "tfl.reshape"(%1666, %1667) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1669 = tfl.add %1668, %1660 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1670 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1671 = "tfl.mul"(%1669, %1670) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1672 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1673 = "tfl.add"(%1671, %1672) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1674 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1675 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1676 = "tfl.fully_connected"(%1673, %1674, %1675) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1677 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1678 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1679 = "tfl.fully_connected"(%1676, %1677, %1678) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1680 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1681 = "tfl.reshape"(%1679, %1680) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1682 = tfl.add %1681, %1673 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1683 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1684 = "tfl.mul"(%1682, %1683) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1685 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1686 = "tfl.add"(%1684, %1685) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1687 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1688 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1689 = "tfl.fully_connected"(%1686, %1687, %1688) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1690 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1691 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1692 = "tfl.fully_connected"(%1689, %1690, %1691) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1693 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1694 = "tfl.reshape"(%1692, %1693) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1695 = tfl.add %1694, %1686 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1696 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1697 = "tfl.mul"(%1695, %1696) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1698 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1699 = "tfl.add"(%1697, %1698) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1700 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1701 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1702 = "tfl.fully_connected"(%1699, %1700, %1701) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1703 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1704 = "tfl.reshape"(%1702, %1703) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %1705 = tfl.add %1704, %1491 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %1706 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1707 = "tfl.mul"(%1705, %1706) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1708 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1709 = "tfl.add"(%1707, %1708) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1710 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1711 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1712 = "tfl.fully_connected"(%1709, %1710, %1711) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1713 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1714 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1715 = "tfl.fully_connected"(%1709, %1713, %1714) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1716 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1717 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1718 = "tfl.fully_connected"(%1709, %1716, %1717) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1719 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1720 = "tfl.reshape"(%1712, %1719) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1721 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1722 = "tfl.reshape"(%1715, %1721) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1723 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1724 = "tfl.reshape"(%1718, %1723) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1725 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1726 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1727 = "tfl.fully_connected"(%1722, %1725, %1726) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1728 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1729 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1730 = "tfl.fully_connected"(%1722, %1728, %1729) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1731 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1732 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1733 = "tfl.fully_connected"(%1724, %1731, %1732) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1734 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1735 = "tfl.reshape"(%1727, %1734) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1736 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1737 = "tfl.reshape"(%1730, %1736) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1738 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1739 = "tfl.reshape"(%1733, %1738) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1740 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1741 = "tfl.transpose"(%1735, %1740) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1742 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1743 = "tfl.transpose"(%1737, %1742) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1744 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1745 = "tfl.transpose"(%1739, %1744) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1746 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1747 = "tfl.transpose"(%1743, %1746) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %1748 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1749 = "tfl.reshape"(%1741, %1748) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %1750 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1751 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1752 = "tfl.slice"(%1749, %1750, %1751) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1753 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1754 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1755 = "tfl.slice"(%1749, %1753, %1754) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1756 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1757 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1758 = "tfl.slice"(%1749, %1756, %1757) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1759 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1760 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1761 = "tfl.slice"(%1749, %1759, %1760) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1762 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1763 = "tfl.reshape"(%1747, %1762) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %1764 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1765 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1766 = "tfl.slice"(%1763, %1764, %1765) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1767 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1768 = "tfl.transpose"(%1766, %1767) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1769 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1770 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1771 = "tfl.slice"(%1763, %1769, %1770) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1772 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1773 = "tfl.transpose"(%1771, %1772) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1774 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1775 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1776 = "tfl.slice"(%1763, %1774, %1775) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1777 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1778 = "tfl.transpose"(%1776, %1777) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1779 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1780 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1781 = "tfl.slice"(%1763, %1779, %1780) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1782 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1783 = "tfl.transpose"(%1781, %1782) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1784 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1785 = "tfl.reshape"(%1768, %1784) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1786 = "tfl.fully_connected"(%1752, %1785, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1787 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1788 = "tfl.reshape"(%1773, %1787) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1789 = "tfl.fully_connected"(%1755, %1788, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1790 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1791 = "tfl.reshape"(%1778, %1790) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1792 = "tfl.fully_connected"(%1758, %1791, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1793 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1794 = "tfl.reshape"(%1783, %1793) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %1795 = "tfl.fully_connected"(%1761, %1794, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %1796 = "tfl.pack"(%1786, %1789, %1792, %1795) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %1797 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %1798 = "tfl.mul"(%1796, %1797) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %1799 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1800 = "tfl.reshape"(%1798, %1799) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %1801 = "tfl.add"(%1800, %134) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %1802 = "tfl.softmax"(%1801) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %1803 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1804 = "tfl.reshape"(%1802, %1803) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %1805 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1806 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1807 = "tfl.slice"(%1804, %1805, %1806) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1808 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1809 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1810 = "tfl.slice"(%1804, %1808, %1809) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1811 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1812 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1813 = "tfl.slice"(%1804, %1811, %1812) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1814 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1815 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1816 = "tfl.slice"(%1804, %1814, %1815) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %1817 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1818 = "tfl.reshape"(%1745, %1817) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %1819 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1820 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1821 = "tfl.slice"(%1818, %1819, %1820) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1822 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1823 = "tfl.transpose"(%1821, %1822) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1824 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1825 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1826 = "tfl.slice"(%1818, %1824, %1825) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1827 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1828 = "tfl.transpose"(%1826, %1827) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1829 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1830 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1831 = "tfl.slice"(%1818, %1829, %1830) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1832 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1833 = "tfl.transpose"(%1831, %1832) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1834 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1835 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1836 = "tfl.slice"(%1818, %1834, %1835) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1837 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1838 = "tfl.transpose"(%1836, %1837) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %1839 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1840 = "tfl.reshape"(%1823, %1839) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1841 = "tfl.fully_connected"(%1807, %1840, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1842 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1843 = "tfl.reshape"(%1828, %1842) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1844 = "tfl.fully_connected"(%1810, %1843, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1845 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1846 = "tfl.reshape"(%1833, %1845) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1847 = "tfl.fully_connected"(%1813, %1846, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1848 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1849 = "tfl.reshape"(%1838, %1848) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %1850 = "tfl.fully_connected"(%1816, %1849, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %1851 = "tfl.pack"(%1841, %1844, %1847, %1850) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %1852 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1853 = "tfl.transpose"(%1851, %1852) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %1854 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1855 = "tfl.reshape"(%1853, %1854) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1856 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1857 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1858 = "tfl.fully_connected"(%1855, %1856, %1857) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1859 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1860 = "tfl.reshape"(%1858, %1859) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1861 = tfl.add %1860, %1720 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1862 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1863 = "tfl.mul"(%1861, %1862) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1864 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1865 = "tfl.add"(%1863, %1864) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1866 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1867 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1868 = "tfl.fully_connected"(%1865, %1866, %1867) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1869 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1870 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1871 = "tfl.fully_connected"(%1868, %1869, %1870) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1872 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1873 = "tfl.reshape"(%1871, %1872) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1874 = tfl.add %1873, %1865 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1875 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1876 = "tfl.mul"(%1874, %1875) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1877 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1878 = "tfl.add"(%1876, %1877) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1879 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1880 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1881 = "tfl.fully_connected"(%1878, %1879, %1880) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1882 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1883 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1884 = "tfl.fully_connected"(%1881, %1882, %1883) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1885 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1886 = "tfl.reshape"(%1884, %1885) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1887 = tfl.add %1886, %1878 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1888 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1889 = "tfl.mul"(%1887, %1888) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1890 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1891 = "tfl.add"(%1889, %1890) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1892 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1893 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1894 = "tfl.fully_connected"(%1891, %1892, %1893) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1895 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1896 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1897 = "tfl.fully_connected"(%1894, %1895, %1896) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1898 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1899 = "tfl.reshape"(%1897, %1898) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1900 = tfl.add %1899, %1891 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1901 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1902 = "tfl.mul"(%1900, %1901) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1903 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1904 = "tfl.add"(%1902, %1903) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1905 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1906 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1907 = "tfl.fully_connected"(%1904, %1905, %1906) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1908 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1909 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1910 = "tfl.fully_connected"(%1907, %1908, %1909) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1911 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1912 = "tfl.reshape"(%1910, %1911) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1913 = tfl.add %1912, %1904 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %1914 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1915 = "tfl.mul"(%1913, %1914) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1916 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1917 = "tfl.add"(%1915, %1916) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %1918 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %1919 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1920 = "tfl.fully_connected"(%1917, %1918, %1919) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %1921 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1922 = "tfl.reshape"(%1920, %1921) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %1923 = tfl.add %1922, %1709 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %1924 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1925 = "tfl.mul"(%1923, %1924) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1926 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %1927 = "tfl.add"(%1925, %1926) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %1928 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1929 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1930 = "tfl.fully_connected"(%1927, %1928, %1929) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1931 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1932 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1933 = "tfl.fully_connected"(%1927, %1931, %1932) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1934 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %1935 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1936 = "tfl.fully_connected"(%1927, %1934, %1935) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1937 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1938 = "tfl.reshape"(%1930, %1937) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1939 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1940 = "tfl.reshape"(%1933, %1939) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1941 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1942 = "tfl.reshape"(%1936, %1941) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %1943 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1944 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1945 = "tfl.fully_connected"(%1940, %1943, %1944) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1946 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1947 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1948 = "tfl.fully_connected"(%1940, %1946, %1947) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1949 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %1950 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %1951 = "tfl.fully_connected"(%1942, %1949, %1950) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %1952 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1953 = "tfl.reshape"(%1945, %1952) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1954 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1955 = "tfl.reshape"(%1948, %1954) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1956 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1957 = "tfl.reshape"(%1951, %1956) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %1958 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1959 = "tfl.transpose"(%1953, %1958) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1960 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1961 = "tfl.transpose"(%1955, %1960) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1962 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1963 = "tfl.transpose"(%1957, %1962) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %1964 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1965 = "tfl.transpose"(%1961, %1964) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %1966 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1967 = "tfl.reshape"(%1959, %1966) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %1968 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1969 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1970 = "tfl.slice"(%1967, %1968, %1969) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1971 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1972 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1973 = "tfl.slice"(%1967, %1971, %1972) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1974 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1975 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1976 = "tfl.slice"(%1967, %1974, %1975) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1977 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1978 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1979 = "tfl.slice"(%1967, %1977, %1978) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %1980 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1981 = "tfl.reshape"(%1965, %1980) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %1982 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1983 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1984 = "tfl.slice"(%1981, %1982, %1983) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1985 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1986 = "tfl.transpose"(%1984, %1985) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1987 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1988 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1989 = "tfl.slice"(%1981, %1987, %1988) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1990 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1991 = "tfl.transpose"(%1989, %1990) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1992 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1993 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1994 = "tfl.slice"(%1981, %1992, %1993) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %1995 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1996 = "tfl.transpose"(%1994, %1995) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %1997 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1998 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1999 = "tfl.slice"(%1981, %1997, %1998) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2000 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2001 = "tfl.transpose"(%1999, %2000) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2002 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2003 = "tfl.reshape"(%1986, %2002) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2004 = "tfl.fully_connected"(%1970, %2003, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2005 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2006 = "tfl.reshape"(%1991, %2005) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2007 = "tfl.fully_connected"(%1973, %2006, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2008 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2009 = "tfl.reshape"(%1996, %2008) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2010 = "tfl.fully_connected"(%1976, %2009, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2011 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2012 = "tfl.reshape"(%2001, %2011) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2013 = "tfl.fully_connected"(%1979, %2012, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2014 = "tfl.pack"(%2004, %2007, %2010, %2013) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %2015 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %2016 = "tfl.mul"(%2014, %2015) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %2017 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2018 = "tfl.reshape"(%2016, %2017) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %2019 = "tfl.add"(%2018, %136) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2020 = "tfl.softmax"(%2019) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2021 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2022 = "tfl.reshape"(%2020, %2021) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %2023 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2024 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2025 = "tfl.slice"(%2022, %2023, %2024) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2026 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2027 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2028 = "tfl.slice"(%2022, %2026, %2027) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2029 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2030 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2031 = "tfl.slice"(%2022, %2029, %2030) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2032 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2033 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2034 = "tfl.slice"(%2022, %2032, %2033) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2035 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2036 = "tfl.reshape"(%1963, %2035) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %2037 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2038 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2039 = "tfl.slice"(%2036, %2037, %2038) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2040 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2041 = "tfl.transpose"(%2039, %2040) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2042 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2043 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2044 = "tfl.slice"(%2036, %2042, %2043) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2045 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2046 = "tfl.transpose"(%2044, %2045) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2047 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2048 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2049 = "tfl.slice"(%2036, %2047, %2048) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2050 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2051 = "tfl.transpose"(%2049, %2050) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2052 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2053 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2054 = "tfl.slice"(%2036, %2052, %2053) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2055 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2056 = "tfl.transpose"(%2054, %2055) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2057 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2058 = "tfl.reshape"(%2041, %2057) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2059 = "tfl.fully_connected"(%2025, %2058, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2060 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2061 = "tfl.reshape"(%2046, %2060) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2062 = "tfl.fully_connected"(%2028, %2061, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2063 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2064 = "tfl.reshape"(%2051, %2063) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2065 = "tfl.fully_connected"(%2031, %2064, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2066 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2067 = "tfl.reshape"(%2056, %2066) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2068 = "tfl.fully_connected"(%2034, %2067, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2069 = "tfl.pack"(%2059, %2062, %2065, %2068) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %2070 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2071 = "tfl.transpose"(%2069, %2070) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %2072 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2073 = "tfl.reshape"(%2071, %2072) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2074 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2075 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2076 = "tfl.fully_connected"(%2073, %2074, %2075) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2077 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2078 = "tfl.reshape"(%2076, %2077) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2079 = tfl.add %2078, %1938 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2080 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2081 = "tfl.mul"(%2079, %2080) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2082 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2083 = "tfl.add"(%2081, %2082) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2084 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2085 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2086 = "tfl.fully_connected"(%2083, %2084, %2085) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2087 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2088 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2089 = "tfl.fully_connected"(%2086, %2087, %2088) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2090 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2091 = "tfl.reshape"(%2089, %2090) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2092 = tfl.add %2091, %2083 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2093 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2094 = "tfl.mul"(%2092, %2093) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2095 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2096 = "tfl.add"(%2094, %2095) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2097 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2098 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2099 = "tfl.fully_connected"(%2096, %2097, %2098) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2100 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2101 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2102 = "tfl.fully_connected"(%2099, %2100, %2101) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2103 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2104 = "tfl.reshape"(%2102, %2103) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2105 = tfl.add %2104, %2096 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2106 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2107 = "tfl.mul"(%2105, %2106) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2108 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2109 = "tfl.add"(%2107, %2108) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2110 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2111 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2112 = "tfl.fully_connected"(%2109, %2110, %2111) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2113 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2114 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2115 = "tfl.fully_connected"(%2112, %2113, %2114) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2116 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2117 = "tfl.reshape"(%2115, %2116) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2118 = tfl.add %2117, %2109 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2119 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2120 = "tfl.mul"(%2118, %2119) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2121 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2122 = "tfl.add"(%2120, %2121) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2123 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2124 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2125 = "tfl.fully_connected"(%2122, %2123, %2124) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2126 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2127 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2128 = "tfl.fully_connected"(%2125, %2126, %2127) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2129 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2130 = "tfl.reshape"(%2128, %2129) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2131 = tfl.add %2130, %2122 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2132 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2133 = "tfl.mul"(%2131, %2132) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2134 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2135 = "tfl.add"(%2133, %2134) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2136 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2137 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2138 = "tfl.fully_connected"(%2135, %2136, %2137) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2139 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2140 = "tfl.reshape"(%2138, %2139) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %2141 = tfl.add %2140, %1927 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %2142 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2143 = "tfl.mul"(%2141, %2142) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %2144 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2145 = "tfl.add"(%2143, %2144) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %2146 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2147 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2148 = "tfl.fully_connected"(%2145, %2146, %2147) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2149 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2150 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2151 = "tfl.fully_connected"(%2145, %2149, %2150) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2152 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2153 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2154 = "tfl.fully_connected"(%2145, %2152, %2153) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2155 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2156 = "tfl.reshape"(%2148, %2155) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2157 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2158 = "tfl.reshape"(%2151, %2157) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2159 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2160 = "tfl.reshape"(%2154, %2159) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2161 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2162 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2163 = "tfl.fully_connected"(%2158, %2161, %2162) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2164 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2165 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2166 = "tfl.fully_connected"(%2158, %2164, %2165) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2167 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2168 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2169 = "tfl.fully_connected"(%2160, %2167, %2168) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2170 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2171 = "tfl.reshape"(%2163, %2170) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2172 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2173 = "tfl.reshape"(%2166, %2172) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2174 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2175 = "tfl.reshape"(%2169, %2174) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2176 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2177 = "tfl.transpose"(%2171, %2176) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2178 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2179 = "tfl.transpose"(%2173, %2178) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2180 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2181 = "tfl.transpose"(%2175, %2180) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2182 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2183 = "tfl.transpose"(%2179, %2182) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %2184 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2185 = "tfl.reshape"(%2177, %2184) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %2186 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2187 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2188 = "tfl.slice"(%2185, %2186, %2187) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2189 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2190 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2191 = "tfl.slice"(%2185, %2189, %2190) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2192 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2193 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2194 = "tfl.slice"(%2185, %2192, %2193) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2195 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2196 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2197 = "tfl.slice"(%2185, %2195, %2196) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2198 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2199 = "tfl.reshape"(%2183, %2198) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %2200 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2201 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2202 = "tfl.slice"(%2199, %2200, %2201) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2203 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2204 = "tfl.transpose"(%2202, %2203) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2205 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2206 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2207 = "tfl.slice"(%2199, %2205, %2206) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2208 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2209 = "tfl.transpose"(%2207, %2208) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2210 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2211 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2212 = "tfl.slice"(%2199, %2210, %2211) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2213 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2214 = "tfl.transpose"(%2212, %2213) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2215 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2216 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2217 = "tfl.slice"(%2199, %2215, %2216) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2218 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2219 = "tfl.transpose"(%2217, %2218) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2220 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2221 = "tfl.reshape"(%2204, %2220) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2222 = "tfl.fully_connected"(%2188, %2221, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2223 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2224 = "tfl.reshape"(%2209, %2223) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2225 = "tfl.fully_connected"(%2191, %2224, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2226 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2227 = "tfl.reshape"(%2214, %2226) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2228 = "tfl.fully_connected"(%2194, %2227, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2229 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2230 = "tfl.reshape"(%2219, %2229) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2231 = "tfl.fully_connected"(%2197, %2230, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2232 = "tfl.pack"(%2222, %2225, %2228, %2231) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %2233 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %2234 = "tfl.mul"(%2232, %2233) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %2235 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2236 = "tfl.reshape"(%2234, %2235) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %2237 = "tfl.add"(%2236, %138) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2238 = "tfl.softmax"(%2237) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2239 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2240 = "tfl.reshape"(%2238, %2239) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %2241 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2242 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2243 = "tfl.slice"(%2240, %2241, %2242) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2244 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2245 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2246 = "tfl.slice"(%2240, %2244, %2245) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2247 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2248 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2249 = "tfl.slice"(%2240, %2247, %2248) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2250 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2251 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2252 = "tfl.slice"(%2240, %2250, %2251) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2253 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2254 = "tfl.reshape"(%2181, %2253) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %2255 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2256 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2257 = "tfl.slice"(%2254, %2255, %2256) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2258 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2259 = "tfl.transpose"(%2257, %2258) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2260 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2261 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2262 = "tfl.slice"(%2254, %2260, %2261) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2263 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2264 = "tfl.transpose"(%2262, %2263) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2265 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2266 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2267 = "tfl.slice"(%2254, %2265, %2266) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2268 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2269 = "tfl.transpose"(%2267, %2268) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2270 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2271 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2272 = "tfl.slice"(%2254, %2270, %2271) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2273 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2274 = "tfl.transpose"(%2272, %2273) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2275 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2276 = "tfl.reshape"(%2259, %2275) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2277 = "tfl.fully_connected"(%2243, %2276, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2278 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2279 = "tfl.reshape"(%2264, %2278) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2280 = "tfl.fully_connected"(%2246, %2279, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2281 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2282 = "tfl.reshape"(%2269, %2281) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2283 = "tfl.fully_connected"(%2249, %2282, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2284 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2285 = "tfl.reshape"(%2274, %2284) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2286 = "tfl.fully_connected"(%2252, %2285, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2287 = "tfl.pack"(%2277, %2280, %2283, %2286) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %2288 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2289 = "tfl.transpose"(%2287, %2288) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %2290 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2291 = "tfl.reshape"(%2289, %2290) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2292 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2293 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2294 = "tfl.fully_connected"(%2291, %2292, %2293) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2295 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2296 = "tfl.reshape"(%2294, %2295) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2297 = tfl.add %2296, %2156 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2298 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2299 = "tfl.mul"(%2297, %2298) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2300 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2301 = "tfl.add"(%2299, %2300) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2302 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2303 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2304 = "tfl.fully_connected"(%2301, %2302, %2303) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2305 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2306 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2307 = "tfl.fully_connected"(%2304, %2305, %2306) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2308 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2309 = "tfl.reshape"(%2307, %2308) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2310 = tfl.add %2309, %2301 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2311 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2312 = "tfl.mul"(%2310, %2311) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2313 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2314 = "tfl.add"(%2312, %2313) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2315 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2316 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2317 = "tfl.fully_connected"(%2314, %2315, %2316) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2318 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2319 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2320 = "tfl.fully_connected"(%2317, %2318, %2319) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2321 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2322 = "tfl.reshape"(%2320, %2321) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2323 = tfl.add %2322, %2314 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2324 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2325 = "tfl.mul"(%2323, %2324) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2326 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2327 = "tfl.add"(%2325, %2326) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2328 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2329 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2330 = "tfl.fully_connected"(%2327, %2328, %2329) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2331 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2332 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2333 = "tfl.fully_connected"(%2330, %2331, %2332) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2334 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2335 = "tfl.reshape"(%2333, %2334) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2336 = tfl.add %2335, %2327 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2337 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2338 = "tfl.mul"(%2336, %2337) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2339 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2340 = "tfl.add"(%2338, %2339) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2341 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2342 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2343 = "tfl.fully_connected"(%2340, %2341, %2342) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2344 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2345 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2346 = "tfl.fully_connected"(%2343, %2344, %2345) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2347 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2348 = "tfl.reshape"(%2346, %2347) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2349 = tfl.add %2348, %2340 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2350 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2351 = "tfl.mul"(%2349, %2350) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2352 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2353 = "tfl.add"(%2351, %2352) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2354 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2355 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2356 = "tfl.fully_connected"(%2353, %2354, %2355) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2357 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2358 = "tfl.reshape"(%2356, %2357) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %2359 = tfl.add %2358, %2145 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %2360 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2361 = "tfl.mul"(%2359, %2360) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %2362 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2363 = "tfl.add"(%2361, %2362) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %2364 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2365 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2366 = "tfl.fully_connected"(%2363, %2364, %2365) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2367 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2368 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2369 = "tfl.fully_connected"(%2363, %2367, %2368) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2370 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2371 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2372 = "tfl.fully_connected"(%2363, %2370, %2371) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2373 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2374 = "tfl.reshape"(%2366, %2373) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2375 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2376 = "tfl.reshape"(%2369, %2375) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2377 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2378 = "tfl.reshape"(%2372, %2377) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2379 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2380 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2381 = "tfl.fully_connected"(%2376, %2379, %2380) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2382 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2383 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2384 = "tfl.fully_connected"(%2376, %2382, %2383) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2385 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2386 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2387 = "tfl.fully_connected"(%2378, %2385, %2386) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2388 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2389 = "tfl.reshape"(%2381, %2388) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2390 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2391 = "tfl.reshape"(%2384, %2390) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2392 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2393 = "tfl.reshape"(%2387, %2392) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2394 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2395 = "tfl.transpose"(%2389, %2394) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2396 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2397 = "tfl.transpose"(%2391, %2396) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2398 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2399 = "tfl.transpose"(%2393, %2398) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2400 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2401 = "tfl.transpose"(%2397, %2400) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %2402 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2403 = "tfl.reshape"(%2395, %2402) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %2404 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2405 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2406 = "tfl.slice"(%2403, %2404, %2405) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2407 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2408 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2409 = "tfl.slice"(%2403, %2407, %2408) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2410 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2411 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2412 = "tfl.slice"(%2403, %2410, %2411) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2413 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2414 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2415 = "tfl.slice"(%2403, %2413, %2414) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2416 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2417 = "tfl.reshape"(%2401, %2416) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %2418 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2419 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2420 = "tfl.slice"(%2417, %2418, %2419) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2421 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2422 = "tfl.transpose"(%2420, %2421) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2423 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2424 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2425 = "tfl.slice"(%2417, %2423, %2424) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2426 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2427 = "tfl.transpose"(%2425, %2426) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2428 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2429 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2430 = "tfl.slice"(%2417, %2428, %2429) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2431 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2432 = "tfl.transpose"(%2430, %2431) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2433 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2434 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2435 = "tfl.slice"(%2417, %2433, %2434) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2436 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2437 = "tfl.transpose"(%2435, %2436) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2438 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2439 = "tfl.reshape"(%2422, %2438) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2440 = "tfl.fully_connected"(%2406, %2439, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2441 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2442 = "tfl.reshape"(%2427, %2441) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2443 = "tfl.fully_connected"(%2409, %2442, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2444 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2445 = "tfl.reshape"(%2432, %2444) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2446 = "tfl.fully_connected"(%2412, %2445, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2447 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2448 = "tfl.reshape"(%2437, %2447) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2449 = "tfl.fully_connected"(%2415, %2448, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2450 = "tfl.pack"(%2440, %2443, %2446, %2449) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %2451 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %2452 = "tfl.mul"(%2450, %2451) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %2453 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2454 = "tfl.reshape"(%2452, %2453) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %2455 = "tfl.add"(%2454, %140) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2456 = "tfl.softmax"(%2455) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2457 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2458 = "tfl.reshape"(%2456, %2457) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %2459 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2460 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2461 = "tfl.slice"(%2458, %2459, %2460) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2462 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2463 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2464 = "tfl.slice"(%2458, %2462, %2463) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2465 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2466 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2467 = "tfl.slice"(%2458, %2465, %2466) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2468 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2469 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2470 = "tfl.slice"(%2458, %2468, %2469) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2471 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2472 = "tfl.reshape"(%2399, %2471) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %2473 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2474 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2475 = "tfl.slice"(%2472, %2473, %2474) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2476 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2477 = "tfl.transpose"(%2475, %2476) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2478 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2479 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2480 = "tfl.slice"(%2472, %2478, %2479) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2481 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2482 = "tfl.transpose"(%2480, %2481) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2483 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2484 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2485 = "tfl.slice"(%2472, %2483, %2484) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2486 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2487 = "tfl.transpose"(%2485, %2486) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2488 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2489 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2490 = "tfl.slice"(%2472, %2488, %2489) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2491 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2492 = "tfl.transpose"(%2490, %2491) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2493 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2494 = "tfl.reshape"(%2477, %2493) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2495 = "tfl.fully_connected"(%2461, %2494, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2496 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2497 = "tfl.reshape"(%2482, %2496) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2498 = "tfl.fully_connected"(%2464, %2497, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2499 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2500 = "tfl.reshape"(%2487, %2499) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2501 = "tfl.fully_connected"(%2467, %2500, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2502 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2503 = "tfl.reshape"(%2492, %2502) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2504 = "tfl.fully_connected"(%2470, %2503, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2505 = "tfl.pack"(%2495, %2498, %2501, %2504) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %2506 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2507 = "tfl.transpose"(%2505, %2506) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %2508 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2509 = "tfl.reshape"(%2507, %2508) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2510 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2511 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2512 = "tfl.fully_connected"(%2509, %2510, %2511) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2513 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2514 = "tfl.reshape"(%2512, %2513) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2515 = tfl.add %2514, %2374 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2516 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2517 = "tfl.mul"(%2515, %2516) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2518 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2519 = "tfl.add"(%2517, %2518) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2520 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2521 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2522 = "tfl.fully_connected"(%2519, %2520, %2521) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2523 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2524 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2525 = "tfl.fully_connected"(%2522, %2523, %2524) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2526 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2527 = "tfl.reshape"(%2525, %2526) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2528 = tfl.add %2527, %2519 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2529 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2530 = "tfl.mul"(%2528, %2529) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2531 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2532 = "tfl.add"(%2530, %2531) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2533 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2534 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2535 = "tfl.fully_connected"(%2532, %2533, %2534) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2536 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2537 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2538 = "tfl.fully_connected"(%2535, %2536, %2537) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2539 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2540 = "tfl.reshape"(%2538, %2539) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2541 = tfl.add %2540, %2532 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2542 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2543 = "tfl.mul"(%2541, %2542) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2544 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2545 = "tfl.add"(%2543, %2544) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2546 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2547 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2548 = "tfl.fully_connected"(%2545, %2546, %2547) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2549 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2550 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2551 = "tfl.fully_connected"(%2548, %2549, %2550) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2552 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2553 = "tfl.reshape"(%2551, %2552) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2554 = tfl.add %2553, %2545 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2555 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2556 = "tfl.mul"(%2554, %2555) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2557 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2558 = "tfl.add"(%2556, %2557) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2559 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2560 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2561 = "tfl.fully_connected"(%2558, %2559, %2560) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2562 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2563 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2564 = "tfl.fully_connected"(%2561, %2562, %2563) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2565 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2566 = "tfl.reshape"(%2564, %2565) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2567 = tfl.add %2566, %2558 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2568 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2569 = "tfl.mul"(%2567, %2568) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2570 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2571 = "tfl.add"(%2569, %2570) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2572 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2573 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2574 = "tfl.fully_connected"(%2571, %2572, %2573) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2575 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2576 = "tfl.reshape"(%2574, %2575) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %2577 = tfl.add %2576, %2363 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %2578 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2579 = "tfl.mul"(%2577, %2578) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %2580 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2581 = "tfl.add"(%2579, %2580) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %2582 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2583 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2584 = "tfl.fully_connected"(%2581, %2582, %2583) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2585 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2586 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2587 = "tfl.fully_connected"(%2581, %2585, %2586) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2588 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2589 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2590 = "tfl.fully_connected"(%2581, %2588, %2589) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2591 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2592 = "tfl.reshape"(%2584, %2591) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2593 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2594 = "tfl.reshape"(%2587, %2593) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2595 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2596 = "tfl.reshape"(%2590, %2595) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2597 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2598 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2599 = "tfl.fully_connected"(%2594, %2597, %2598) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2600 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2601 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2602 = "tfl.fully_connected"(%2594, %2600, %2601) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2603 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2604 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2605 = "tfl.fully_connected"(%2596, %2603, %2604) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2606 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2607 = "tfl.reshape"(%2599, %2606) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2608 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2609 = "tfl.reshape"(%2602, %2608) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2610 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2611 = "tfl.reshape"(%2605, %2610) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2612 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2613 = "tfl.transpose"(%2607, %2612) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2614 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2615 = "tfl.transpose"(%2609, %2614) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2616 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2617 = "tfl.transpose"(%2611, %2616) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2618 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2619 = "tfl.transpose"(%2615, %2618) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %2620 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2621 = "tfl.reshape"(%2613, %2620) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %2622 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2623 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2624 = "tfl.slice"(%2621, %2622, %2623) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2625 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2626 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2627 = "tfl.slice"(%2621, %2625, %2626) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2628 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2629 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2630 = "tfl.slice"(%2621, %2628, %2629) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2631 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2632 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2633 = "tfl.slice"(%2621, %2631, %2632) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2634 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2635 = "tfl.reshape"(%2619, %2634) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %2636 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2637 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2638 = "tfl.slice"(%2635, %2636, %2637) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2639 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2640 = "tfl.transpose"(%2638, %2639) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2641 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2642 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2643 = "tfl.slice"(%2635, %2641, %2642) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2644 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2645 = "tfl.transpose"(%2643, %2644) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2646 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2647 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2648 = "tfl.slice"(%2635, %2646, %2647) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2649 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2650 = "tfl.transpose"(%2648, %2649) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2651 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2652 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2653 = "tfl.slice"(%2635, %2651, %2652) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2654 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2655 = "tfl.transpose"(%2653, %2654) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2656 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2657 = "tfl.reshape"(%2640, %2656) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2658 = "tfl.fully_connected"(%2624, %2657, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2659 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2660 = "tfl.reshape"(%2645, %2659) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2661 = "tfl.fully_connected"(%2627, %2660, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2662 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2663 = "tfl.reshape"(%2650, %2662) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2664 = "tfl.fully_connected"(%2630, %2663, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2665 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2666 = "tfl.reshape"(%2655, %2665) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2667 = "tfl.fully_connected"(%2633, %2666, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2668 = "tfl.pack"(%2658, %2661, %2664, %2667) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %2669 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %2670 = "tfl.mul"(%2668, %2669) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %2671 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2672 = "tfl.reshape"(%2670, %2671) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %2673 = "tfl.add"(%2672, %142) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2674 = "tfl.softmax"(%2673) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2675 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2676 = "tfl.reshape"(%2674, %2675) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %2677 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2678 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2679 = "tfl.slice"(%2676, %2677, %2678) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2680 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2681 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2682 = "tfl.slice"(%2676, %2680, %2681) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2683 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2684 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2685 = "tfl.slice"(%2676, %2683, %2684) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2686 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2687 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2688 = "tfl.slice"(%2676, %2686, %2687) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2689 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2690 = "tfl.reshape"(%2617, %2689) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %2691 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2692 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2693 = "tfl.slice"(%2690, %2691, %2692) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2694 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2695 = "tfl.transpose"(%2693, %2694) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2696 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2697 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2698 = "tfl.slice"(%2690, %2696, %2697) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2699 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2700 = "tfl.transpose"(%2698, %2699) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2701 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2702 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2703 = "tfl.slice"(%2690, %2701, %2702) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2704 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2705 = "tfl.transpose"(%2703, %2704) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2706 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2707 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2708 = "tfl.slice"(%2690, %2706, %2707) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2709 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2710 = "tfl.transpose"(%2708, %2709) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2711 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2712 = "tfl.reshape"(%2695, %2711) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2713 = "tfl.fully_connected"(%2679, %2712, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2714 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2715 = "tfl.reshape"(%2700, %2714) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2716 = "tfl.fully_connected"(%2682, %2715, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2717 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2718 = "tfl.reshape"(%2705, %2717) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2719 = "tfl.fully_connected"(%2685, %2718, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2720 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2721 = "tfl.reshape"(%2710, %2720) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2722 = "tfl.fully_connected"(%2688, %2721, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2723 = "tfl.pack"(%2713, %2716, %2719, %2722) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %2724 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2725 = "tfl.transpose"(%2723, %2724) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %2726 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2727 = "tfl.reshape"(%2725, %2726) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2728 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2729 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2730 = "tfl.fully_connected"(%2727, %2728, %2729) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2731 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2732 = "tfl.reshape"(%2730, %2731) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2733 = tfl.add %2732, %2592 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2734 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2735 = "tfl.mul"(%2733, %2734) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2736 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2737 = "tfl.add"(%2735, %2736) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2738 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2739 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2740 = "tfl.fully_connected"(%2737, %2738, %2739) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2741 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2742 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2743 = "tfl.fully_connected"(%2740, %2741, %2742) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2744 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2745 = "tfl.reshape"(%2743, %2744) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2746 = tfl.add %2745, %2737 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2747 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2748 = "tfl.mul"(%2746, %2747) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2749 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2750 = "tfl.add"(%2748, %2749) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2751 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2752 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2753 = "tfl.fully_connected"(%2750, %2751, %2752) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2754 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2755 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2756 = "tfl.fully_connected"(%2753, %2754, %2755) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2757 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2758 = "tfl.reshape"(%2756, %2757) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2759 = tfl.add %2758, %2750 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2760 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2761 = "tfl.mul"(%2759, %2760) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2762 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2763 = "tfl.add"(%2761, %2762) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2764 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2765 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2766 = "tfl.fully_connected"(%2763, %2764, %2765) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2767 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2768 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2769 = "tfl.fully_connected"(%2766, %2767, %2768) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2770 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2771 = "tfl.reshape"(%2769, %2770) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2772 = tfl.add %2771, %2763 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2773 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2774 = "tfl.mul"(%2772, %2773) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2775 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2776 = "tfl.add"(%2774, %2775) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2777 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2778 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2779 = "tfl.fully_connected"(%2776, %2777, %2778) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2780 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2781 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2782 = "tfl.fully_connected"(%2779, %2780, %2781) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2783 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2784 = "tfl.reshape"(%2782, %2783) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2785 = tfl.add %2784, %2776 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2786 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2787 = "tfl.mul"(%2785, %2786) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2788 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2789 = "tfl.add"(%2787, %2788) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2790 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2791 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2792 = "tfl.fully_connected"(%2789, %2790, %2791) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2793 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2794 = "tfl.reshape"(%2792, %2793) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %2795 = tfl.add %2794, %2581 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %2796 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2797 = "tfl.mul"(%2795, %2796) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %2798 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2799 = "tfl.add"(%2797, %2798) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %2800 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2801 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2802 = "tfl.fully_connected"(%2799, %2800, %2801) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2803 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2804 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2805 = "tfl.fully_connected"(%2799, %2803, %2804) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2806 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2807 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2808 = "tfl.fully_connected"(%2799, %2806, %2807) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2809 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2810 = "tfl.reshape"(%2802, %2809) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2811 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2812 = "tfl.reshape"(%2805, %2811) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2813 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2814 = "tfl.reshape"(%2808, %2813) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2815 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2816 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2817 = "tfl.fully_connected"(%2812, %2815, %2816) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2818 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2819 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2820 = "tfl.fully_connected"(%2812, %2818, %2819) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2821 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2822 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2823 = "tfl.fully_connected"(%2814, %2821, %2822) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2824 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2825 = "tfl.reshape"(%2817, %2824) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2826 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2827 = "tfl.reshape"(%2820, %2826) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2828 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2829 = "tfl.reshape"(%2823, %2828) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2830 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2831 = "tfl.transpose"(%2825, %2830) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2832 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2833 = "tfl.transpose"(%2827, %2832) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2834 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2835 = "tfl.transpose"(%2829, %2834) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %2836 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2837 = "tfl.transpose"(%2833, %2836) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %2838 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2839 = "tfl.reshape"(%2831, %2838) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %2840 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2841 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2842 = "tfl.slice"(%2839, %2840, %2841) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2843 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2844 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2845 = "tfl.slice"(%2839, %2843, %2844) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2846 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2847 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2848 = "tfl.slice"(%2839, %2846, %2847) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2849 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2850 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2851 = "tfl.slice"(%2839, %2849, %2850) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2852 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2853 = "tfl.reshape"(%2837, %2852) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %2854 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2855 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2856 = "tfl.slice"(%2853, %2854, %2855) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2857 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2858 = "tfl.transpose"(%2856, %2857) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2859 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2860 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2861 = "tfl.slice"(%2853, %2859, %2860) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2862 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2863 = "tfl.transpose"(%2861, %2862) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2864 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2865 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2866 = "tfl.slice"(%2853, %2864, %2865) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2867 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2868 = "tfl.transpose"(%2866, %2867) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2869 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2870 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2871 = "tfl.slice"(%2853, %2869, %2870) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %2872 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2873 = "tfl.transpose"(%2871, %2872) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %2874 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2875 = "tfl.reshape"(%2858, %2874) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2876 = "tfl.fully_connected"(%2842, %2875, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2877 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2878 = "tfl.reshape"(%2863, %2877) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2879 = "tfl.fully_connected"(%2845, %2878, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2880 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2881 = "tfl.reshape"(%2868, %2880) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2882 = "tfl.fully_connected"(%2848, %2881, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2883 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2884 = "tfl.reshape"(%2873, %2883) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %2885 = "tfl.fully_connected"(%2851, %2884, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %2886 = "tfl.pack"(%2876, %2879, %2882, %2885) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %2887 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %2888 = "tfl.mul"(%2886, %2887) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %2889 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2890 = "tfl.reshape"(%2888, %2889) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %2891 = "tfl.add"(%2890, %144) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2892 = "tfl.softmax"(%2891) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %2893 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2894 = "tfl.reshape"(%2892, %2893) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %2895 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2896 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2897 = "tfl.slice"(%2894, %2895, %2896) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2898 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2899 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2900 = "tfl.slice"(%2894, %2898, %2899) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2901 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2902 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2903 = "tfl.slice"(%2894, %2901, %2902) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2904 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2905 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2906 = "tfl.slice"(%2894, %2904, %2905) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %2907 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2908 = "tfl.reshape"(%2835, %2907) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %2909 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %2910 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2911 = "tfl.slice"(%2908, %2909, %2910) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2912 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2913 = "tfl.transpose"(%2911, %2912) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2914 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2915 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2916 = "tfl.slice"(%2908, %2914, %2915) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2917 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2918 = "tfl.transpose"(%2916, %2917) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2919 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2920 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2921 = "tfl.slice"(%2908, %2919, %2920) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2922 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2923 = "tfl.transpose"(%2921, %2922) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2924 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2925 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2926 = "tfl.slice"(%2908, %2924, %2925) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %2927 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2928 = "tfl.transpose"(%2926, %2927) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %2929 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2930 = "tfl.reshape"(%2913, %2929) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2931 = "tfl.fully_connected"(%2897, %2930, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2932 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2933 = "tfl.reshape"(%2918, %2932) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2934 = "tfl.fully_connected"(%2900, %2933, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2935 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2936 = "tfl.reshape"(%2923, %2935) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2937 = "tfl.fully_connected"(%2903, %2936, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2938 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %2939 = "tfl.reshape"(%2928, %2938) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %2940 = "tfl.fully_connected"(%2906, %2939, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %2941 = "tfl.pack"(%2931, %2934, %2937, %2940) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %2942 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2943 = "tfl.transpose"(%2941, %2942) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %2944 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2945 = "tfl.reshape"(%2943, %2944) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %2946 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %2947 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2948 = "tfl.fully_connected"(%2945, %2946, %2947) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2949 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2950 = "tfl.reshape"(%2948, %2949) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2951 = tfl.add %2950, %2810 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2952 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2953 = "tfl.mul"(%2951, %2952) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2954 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2955 = "tfl.add"(%2953, %2954) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2956 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2957 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2958 = "tfl.fully_connected"(%2955, %2956, %2957) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2959 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2960 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2961 = "tfl.fully_connected"(%2958, %2959, %2960) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2962 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2963 = "tfl.reshape"(%2961, %2962) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2964 = tfl.add %2963, %2955 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2965 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2966 = "tfl.mul"(%2964, %2965) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2967 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2968 = "tfl.add"(%2966, %2967) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2969 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2970 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2971 = "tfl.fully_connected"(%2968, %2969, %2970) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2972 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2973 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2974 = "tfl.fully_connected"(%2971, %2972, %2973) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2975 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2976 = "tfl.reshape"(%2974, %2975) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2977 = tfl.add %2976, %2968 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2978 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2979 = "tfl.mul"(%2977, %2978) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2980 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2981 = "tfl.add"(%2979, %2980) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2982 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2983 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2984 = "tfl.fully_connected"(%2981, %2982, %2983) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2985 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2986 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2987 = "tfl.fully_connected"(%2984, %2985, %2986) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %2988 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2989 = "tfl.reshape"(%2987, %2988) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %2990 = tfl.add %2989, %2981 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %2991 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2992 = "tfl.mul"(%2990, %2991) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2993 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %2994 = "tfl.add"(%2992, %2993) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %2995 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %2996 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %2997 = "tfl.fully_connected"(%2994, %2995, %2996) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %2998 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %2999 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3000 = "tfl.fully_connected"(%2997, %2998, %2999) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3001 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3002 = "tfl.reshape"(%3000, %3001) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3003 = tfl.add %3002, %2994 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3004 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3005 = "tfl.mul"(%3003, %3004) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3006 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3007 = "tfl.add"(%3005, %3006) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3008 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3009 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3010 = "tfl.fully_connected"(%3007, %3008, %3009) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3011 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3012 = "tfl.reshape"(%3010, %3011) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %3013 = tfl.add %3012, %2799 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %3014 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3015 = "tfl.mul"(%3013, %3014) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3016 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3017 = "tfl.add"(%3015, %3016) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3018 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3019 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3020 = "tfl.fully_connected"(%3017, %3018, %3019) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3021 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3022 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3023 = "tfl.fully_connected"(%3017, %3021, %3022) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3024 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3025 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3026 = "tfl.fully_connected"(%3017, %3024, %3025) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3027 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3028 = "tfl.reshape"(%3020, %3027) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3029 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3030 = "tfl.reshape"(%3023, %3029) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3031 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3032 = "tfl.reshape"(%3026, %3031) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3033 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3034 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3035 = "tfl.fully_connected"(%3030, %3033, %3034) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3036 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3037 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3038 = "tfl.fully_connected"(%3030, %3036, %3037) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3039 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3040 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3041 = "tfl.fully_connected"(%3032, %3039, %3040) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3042 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3043 = "tfl.reshape"(%3035, %3042) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3044 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3045 = "tfl.reshape"(%3038, %3044) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3046 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3047 = "tfl.reshape"(%3041, %3046) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3048 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3049 = "tfl.transpose"(%3043, %3048) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3050 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3051 = "tfl.transpose"(%3045, %3050) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3052 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3053 = "tfl.transpose"(%3047, %3052) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3054 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3055 = "tfl.transpose"(%3051, %3054) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %3056 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3057 = "tfl.reshape"(%3049, %3056) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3058 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3059 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3060 = "tfl.slice"(%3057, %3058, %3059) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3061 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3062 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3063 = "tfl.slice"(%3057, %3061, %3062) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3064 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3065 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3066 = "tfl.slice"(%3057, %3064, %3065) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3067 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3068 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3069 = "tfl.slice"(%3057, %3067, %3068) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3070 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3071 = "tfl.reshape"(%3055, %3070) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %3072 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3073 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3074 = "tfl.slice"(%3071, %3072, %3073) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3075 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3076 = "tfl.transpose"(%3074, %3075) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3077 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3078 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3079 = "tfl.slice"(%3071, %3077, %3078) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3080 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3081 = "tfl.transpose"(%3079, %3080) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3082 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3083 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3084 = "tfl.slice"(%3071, %3082, %3083) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3085 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3086 = "tfl.transpose"(%3084, %3085) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3087 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3088 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3089 = "tfl.slice"(%3071, %3087, %3088) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3090 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3091 = "tfl.transpose"(%3089, %3090) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3092 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3093 = "tfl.reshape"(%3076, %3092) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3094 = "tfl.fully_connected"(%3060, %3093, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3095 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3096 = "tfl.reshape"(%3081, %3095) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3097 = "tfl.fully_connected"(%3063, %3096, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3098 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3099 = "tfl.reshape"(%3086, %3098) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3100 = "tfl.fully_connected"(%3066, %3099, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3101 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3102 = "tfl.reshape"(%3091, %3101) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3103 = "tfl.fully_connected"(%3069, %3102, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3104 = "tfl.pack"(%3094, %3097, %3100, %3103) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %3105 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %3106 = "tfl.mul"(%3104, %3105) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %3107 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3108 = "tfl.reshape"(%3106, %3107) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %3109 = "tfl.add"(%3108, %146) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3110 = "tfl.softmax"(%3109) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3111 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3112 = "tfl.reshape"(%3110, %3111) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %3113 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3114 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3115 = "tfl.slice"(%3112, %3113, %3114) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3116 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3117 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3118 = "tfl.slice"(%3112, %3116, %3117) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3119 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3120 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3121 = "tfl.slice"(%3112, %3119, %3120) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3122 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3123 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3124 = "tfl.slice"(%3112, %3122, %3123) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3125 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3126 = "tfl.reshape"(%3053, %3125) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3127 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3128 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3129 = "tfl.slice"(%3126, %3127, %3128) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3130 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3131 = "tfl.transpose"(%3129, %3130) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3132 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3133 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3134 = "tfl.slice"(%3126, %3132, %3133) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3135 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3136 = "tfl.transpose"(%3134, %3135) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3137 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3138 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3139 = "tfl.slice"(%3126, %3137, %3138) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3140 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3141 = "tfl.transpose"(%3139, %3140) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3142 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3143 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3144 = "tfl.slice"(%3126, %3142, %3143) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3145 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3146 = "tfl.transpose"(%3144, %3145) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3147 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3148 = "tfl.reshape"(%3131, %3147) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3149 = "tfl.fully_connected"(%3115, %3148, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3150 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3151 = "tfl.reshape"(%3136, %3150) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3152 = "tfl.fully_connected"(%3118, %3151, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3153 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3154 = "tfl.reshape"(%3141, %3153) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3155 = "tfl.fully_connected"(%3121, %3154, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3156 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3157 = "tfl.reshape"(%3146, %3156) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3158 = "tfl.fully_connected"(%3124, %3157, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3159 = "tfl.pack"(%3149, %3152, %3155, %3158) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %3160 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3161 = "tfl.transpose"(%3159, %3160) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %3162 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3163 = "tfl.reshape"(%3161, %3162) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3164 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3165 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3166 = "tfl.fully_connected"(%3163, %3164, %3165) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3167 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3168 = "tfl.reshape"(%3166, %3167) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3169 = tfl.add %3168, %3028 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3170 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3171 = "tfl.mul"(%3169, %3170) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3172 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3173 = "tfl.add"(%3171, %3172) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3174 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3175 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3176 = "tfl.fully_connected"(%3173, %3174, %3175) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3177 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3178 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3179 = "tfl.fully_connected"(%3176, %3177, %3178) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3180 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3181 = "tfl.reshape"(%3179, %3180) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3182 = tfl.add %3181, %3173 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3183 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3184 = "tfl.mul"(%3182, %3183) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3185 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3186 = "tfl.add"(%3184, %3185) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3187 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3188 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3189 = "tfl.fully_connected"(%3186, %3187, %3188) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3190 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3191 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3192 = "tfl.fully_connected"(%3189, %3190, %3191) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3193 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3194 = "tfl.reshape"(%3192, %3193) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3195 = tfl.add %3194, %3186 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3196 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3197 = "tfl.mul"(%3195, %3196) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3198 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3199 = "tfl.add"(%3197, %3198) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3200 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3201 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3202 = "tfl.fully_connected"(%3199, %3200, %3201) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3203 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3204 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3205 = "tfl.fully_connected"(%3202, %3203, %3204) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3206 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3207 = "tfl.reshape"(%3205, %3206) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3208 = tfl.add %3207, %3199 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3209 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3210 = "tfl.mul"(%3208, %3209) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3211 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3212 = "tfl.add"(%3210, %3211) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3213 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3214 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3215 = "tfl.fully_connected"(%3212, %3213, %3214) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3216 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3217 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3218 = "tfl.fully_connected"(%3215, %3216, %3217) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3219 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3220 = "tfl.reshape"(%3218, %3219) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3221 = tfl.add %3220, %3212 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3222 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3223 = "tfl.mul"(%3221, %3222) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3224 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3225 = "tfl.add"(%3223, %3224) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3226 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3227 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3228 = "tfl.fully_connected"(%3225, %3226, %3227) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3229 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3230 = "tfl.reshape"(%3228, %3229) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %3231 = tfl.add %3230, %3017 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %3232 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3233 = "tfl.mul"(%3231, %3232) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3234 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3235 = "tfl.add"(%3233, %3234) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3236 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3237 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3238 = "tfl.fully_connected"(%3235, %3236, %3237) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3239 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3240 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3241 = "tfl.fully_connected"(%3235, %3239, %3240) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3242 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3243 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3244 = "tfl.fully_connected"(%3235, %3242, %3243) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3245 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3246 = "tfl.reshape"(%3238, %3245) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3247 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3248 = "tfl.reshape"(%3241, %3247) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3249 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3250 = "tfl.reshape"(%3244, %3249) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3251 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3252 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3253 = "tfl.fully_connected"(%3248, %3251, %3252) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3254 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3255 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3256 = "tfl.fully_connected"(%3248, %3254, %3255) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3257 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3258 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3259 = "tfl.fully_connected"(%3250, %3257, %3258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3260 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3261 = "tfl.reshape"(%3253, %3260) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3262 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3263 = "tfl.reshape"(%3256, %3262) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3264 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3265 = "tfl.reshape"(%3259, %3264) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3266 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3267 = "tfl.transpose"(%3261, %3266) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3268 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3269 = "tfl.transpose"(%3263, %3268) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3270 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3271 = "tfl.transpose"(%3265, %3270) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3272 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3273 = "tfl.transpose"(%3269, %3272) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %3274 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3275 = "tfl.reshape"(%3267, %3274) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3276 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3277 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3278 = "tfl.slice"(%3275, %3276, %3277) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3279 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3280 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3281 = "tfl.slice"(%3275, %3279, %3280) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3282 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3283 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3284 = "tfl.slice"(%3275, %3282, %3283) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3285 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3286 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3287 = "tfl.slice"(%3275, %3285, %3286) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3288 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3289 = "tfl.reshape"(%3273, %3288) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %3290 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3291 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3292 = "tfl.slice"(%3289, %3290, %3291) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3293 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3294 = "tfl.transpose"(%3292, %3293) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3295 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3296 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3297 = "tfl.slice"(%3289, %3295, %3296) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3298 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3299 = "tfl.transpose"(%3297, %3298) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3300 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3301 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3302 = "tfl.slice"(%3289, %3300, %3301) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3303 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3304 = "tfl.transpose"(%3302, %3303) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3305 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3306 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3307 = "tfl.slice"(%3289, %3305, %3306) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3308 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3309 = "tfl.transpose"(%3307, %3308) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3310 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3311 = "tfl.reshape"(%3294, %3310) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3312 = "tfl.fully_connected"(%3278, %3311, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3313 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3314 = "tfl.reshape"(%3299, %3313) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3315 = "tfl.fully_connected"(%3281, %3314, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3316 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3317 = "tfl.reshape"(%3304, %3316) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3318 = "tfl.fully_connected"(%3284, %3317, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3319 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3320 = "tfl.reshape"(%3309, %3319) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3321 = "tfl.fully_connected"(%3287, %3320, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3322 = "tfl.pack"(%3312, %3315, %3318, %3321) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %3323 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %3324 = "tfl.mul"(%3322, %3323) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %3325 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3326 = "tfl.reshape"(%3324, %3325) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %3327 = "tfl.add"(%3326, %148) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3328 = "tfl.softmax"(%3327) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3329 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3330 = "tfl.reshape"(%3328, %3329) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %3331 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3332 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3333 = "tfl.slice"(%3330, %3331, %3332) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3334 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3335 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3336 = "tfl.slice"(%3330, %3334, %3335) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3337 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3338 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3339 = "tfl.slice"(%3330, %3337, %3338) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3340 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3341 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3342 = "tfl.slice"(%3330, %3340, %3341) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3343 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3344 = "tfl.reshape"(%3271, %3343) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3345 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3346 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3347 = "tfl.slice"(%3344, %3345, %3346) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3348 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3349 = "tfl.transpose"(%3347, %3348) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3350 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3351 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3352 = "tfl.slice"(%3344, %3350, %3351) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3353 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3354 = "tfl.transpose"(%3352, %3353) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3355 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3356 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3357 = "tfl.slice"(%3344, %3355, %3356) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3358 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3359 = "tfl.transpose"(%3357, %3358) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3360 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3361 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3362 = "tfl.slice"(%3344, %3360, %3361) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3363 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3364 = "tfl.transpose"(%3362, %3363) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3365 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3366 = "tfl.reshape"(%3349, %3365) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3367 = "tfl.fully_connected"(%3333, %3366, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3368 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3369 = "tfl.reshape"(%3354, %3368) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3370 = "tfl.fully_connected"(%3336, %3369, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3371 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3372 = "tfl.reshape"(%3359, %3371) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3373 = "tfl.fully_connected"(%3339, %3372, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3374 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3375 = "tfl.reshape"(%3364, %3374) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3376 = "tfl.fully_connected"(%3342, %3375, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3377 = "tfl.pack"(%3367, %3370, %3373, %3376) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %3378 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3379 = "tfl.transpose"(%3377, %3378) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %3380 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3381 = "tfl.reshape"(%3379, %3380) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3382 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3383 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3384 = "tfl.fully_connected"(%3381, %3382, %3383) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3385 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3386 = "tfl.reshape"(%3384, %3385) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3387 = tfl.add %3386, %3246 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3388 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3389 = "tfl.mul"(%3387, %3388) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3390 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3391 = "tfl.add"(%3389, %3390) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3392 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3393 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3394 = "tfl.fully_connected"(%3391, %3392, %3393) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3395 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3396 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3397 = "tfl.fully_connected"(%3394, %3395, %3396) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3398 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3399 = "tfl.reshape"(%3397, %3398) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3400 = tfl.add %3399, %3391 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3401 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3402 = "tfl.mul"(%3400, %3401) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3403 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3404 = "tfl.add"(%3402, %3403) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3405 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3406 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3407 = "tfl.fully_connected"(%3404, %3405, %3406) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3408 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3409 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3410 = "tfl.fully_connected"(%3407, %3408, %3409) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3411 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3412 = "tfl.reshape"(%3410, %3411) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3413 = tfl.add %3412, %3404 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3414 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3415 = "tfl.mul"(%3413, %3414) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3416 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3417 = "tfl.add"(%3415, %3416) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3418 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3419 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3420 = "tfl.fully_connected"(%3417, %3418, %3419) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3421 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3422 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3423 = "tfl.fully_connected"(%3420, %3421, %3422) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3424 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3425 = "tfl.reshape"(%3423, %3424) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3426 = tfl.add %3425, %3417 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3427 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3428 = "tfl.mul"(%3426, %3427) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3429 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3430 = "tfl.add"(%3428, %3429) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3431 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3432 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3433 = "tfl.fully_connected"(%3430, %3431, %3432) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3434 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3435 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3436 = "tfl.fully_connected"(%3433, %3434, %3435) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3437 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3438 = "tfl.reshape"(%3436, %3437) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3439 = tfl.add %3438, %3430 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3440 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3441 = "tfl.mul"(%3439, %3440) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3442 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3443 = "tfl.add"(%3441, %3442) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3444 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3445 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3446 = "tfl.fully_connected"(%3443, %3444, %3445) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3447 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3448 = "tfl.reshape"(%3446, %3447) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %3449 = tfl.add %3448, %3235 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %3450 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3451 = "tfl.mul"(%3449, %3450) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3452 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3453 = "tfl.add"(%3451, %3452) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3454 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3455 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3456 = "tfl.fully_connected"(%3453, %3454, %3455) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3457 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3458 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3459 = "tfl.fully_connected"(%3453, %3457, %3458) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3460 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3461 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3462 = "tfl.fully_connected"(%3453, %3460, %3461) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3463 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3464 = "tfl.reshape"(%3456, %3463) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3465 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3466 = "tfl.reshape"(%3459, %3465) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3467 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3468 = "tfl.reshape"(%3462, %3467) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3469 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3470 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3471 = "tfl.fully_connected"(%3466, %3469, %3470) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3472 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3473 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3474 = "tfl.fully_connected"(%3466, %3472, %3473) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3475 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3476 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3477 = "tfl.fully_connected"(%3468, %3475, %3476) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3478 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3479 = "tfl.reshape"(%3471, %3478) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3480 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3481 = "tfl.reshape"(%3474, %3480) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3482 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3483 = "tfl.reshape"(%3477, %3482) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3484 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3485 = "tfl.transpose"(%3479, %3484) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3486 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3487 = "tfl.transpose"(%3481, %3486) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3488 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3489 = "tfl.transpose"(%3483, %3488) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3490 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3491 = "tfl.transpose"(%3487, %3490) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %3492 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3493 = "tfl.reshape"(%3485, %3492) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3494 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3495 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3496 = "tfl.slice"(%3493, %3494, %3495) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3497 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3498 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3499 = "tfl.slice"(%3493, %3497, %3498) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3500 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3501 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3502 = "tfl.slice"(%3493, %3500, %3501) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3503 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3504 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3505 = "tfl.slice"(%3493, %3503, %3504) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3506 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3507 = "tfl.reshape"(%3491, %3506) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %3508 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3509 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3510 = "tfl.slice"(%3507, %3508, %3509) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3511 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3512 = "tfl.transpose"(%3510, %3511) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3513 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3514 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3515 = "tfl.slice"(%3507, %3513, %3514) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3516 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3517 = "tfl.transpose"(%3515, %3516) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3518 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3519 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3520 = "tfl.slice"(%3507, %3518, %3519) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3521 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3522 = "tfl.transpose"(%3520, %3521) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3523 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3524 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3525 = "tfl.slice"(%3507, %3523, %3524) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3526 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3527 = "tfl.transpose"(%3525, %3526) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3528 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3529 = "tfl.reshape"(%3512, %3528) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3530 = "tfl.fully_connected"(%3496, %3529, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3531 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3532 = "tfl.reshape"(%3517, %3531) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3533 = "tfl.fully_connected"(%3499, %3532, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3534 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3535 = "tfl.reshape"(%3522, %3534) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3536 = "tfl.fully_connected"(%3502, %3535, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3537 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3538 = "tfl.reshape"(%3527, %3537) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3539 = "tfl.fully_connected"(%3505, %3538, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3540 = "tfl.pack"(%3530, %3533, %3536, %3539) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %3541 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %3542 = "tfl.mul"(%3540, %3541) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %3543 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3544 = "tfl.reshape"(%3542, %3543) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %3545 = "tfl.add"(%3544, %150) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3546 = "tfl.softmax"(%3545) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3547 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3548 = "tfl.reshape"(%3546, %3547) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %3549 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3550 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3551 = "tfl.slice"(%3548, %3549, %3550) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3552 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3553 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3554 = "tfl.slice"(%3548, %3552, %3553) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3555 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3556 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3557 = "tfl.slice"(%3548, %3555, %3556) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3558 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3559 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3560 = "tfl.slice"(%3548, %3558, %3559) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3561 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3562 = "tfl.reshape"(%3489, %3561) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3563 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3564 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3565 = "tfl.slice"(%3562, %3563, %3564) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3566 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3567 = "tfl.transpose"(%3565, %3566) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3568 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3569 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3570 = "tfl.slice"(%3562, %3568, %3569) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3571 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3572 = "tfl.transpose"(%3570, %3571) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3573 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3574 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3575 = "tfl.slice"(%3562, %3573, %3574) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3576 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3577 = "tfl.transpose"(%3575, %3576) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3578 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3579 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3580 = "tfl.slice"(%3562, %3578, %3579) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3581 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3582 = "tfl.transpose"(%3580, %3581) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3583 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3584 = "tfl.reshape"(%3567, %3583) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3585 = "tfl.fully_connected"(%3551, %3584, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3586 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3587 = "tfl.reshape"(%3572, %3586) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3588 = "tfl.fully_connected"(%3554, %3587, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3589 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3590 = "tfl.reshape"(%3577, %3589) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3591 = "tfl.fully_connected"(%3557, %3590, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3592 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3593 = "tfl.reshape"(%3582, %3592) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3594 = "tfl.fully_connected"(%3560, %3593, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3595 = "tfl.pack"(%3585, %3588, %3591, %3594) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %3596 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3597 = "tfl.transpose"(%3595, %3596) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %3598 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3599 = "tfl.reshape"(%3597, %3598) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3600 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3601 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3602 = "tfl.fully_connected"(%3599, %3600, %3601) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3603 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3604 = "tfl.reshape"(%3602, %3603) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3605 = tfl.add %3604, %3464 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3606 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3607 = "tfl.mul"(%3605, %3606) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3608 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3609 = "tfl.add"(%3607, %3608) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3610 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3611 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3612 = "tfl.fully_connected"(%3609, %3610, %3611) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3613 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3614 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3615 = "tfl.fully_connected"(%3612, %3613, %3614) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3616 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3617 = "tfl.reshape"(%3615, %3616) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3618 = tfl.add %3617, %3609 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3619 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3620 = "tfl.mul"(%3618, %3619) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3621 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3622 = "tfl.add"(%3620, %3621) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3623 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3624 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3625 = "tfl.fully_connected"(%3622, %3623, %3624) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3626 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3627 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3628 = "tfl.fully_connected"(%3625, %3626, %3627) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3629 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3630 = "tfl.reshape"(%3628, %3629) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3631 = tfl.add %3630, %3622 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3632 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3633 = "tfl.mul"(%3631, %3632) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3634 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3635 = "tfl.add"(%3633, %3634) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3636 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3637 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3638 = "tfl.fully_connected"(%3635, %3636, %3637) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3639 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3640 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3641 = "tfl.fully_connected"(%3638, %3639, %3640) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3642 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3643 = "tfl.reshape"(%3641, %3642) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3644 = tfl.add %3643, %3635 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3645 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3646 = "tfl.mul"(%3644, %3645) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3647 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3648 = "tfl.add"(%3646, %3647) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3649 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3650 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3651 = "tfl.fully_connected"(%3648, %3649, %3650) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3652 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3653 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3654 = "tfl.fully_connected"(%3651, %3652, %3653) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3655 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3656 = "tfl.reshape"(%3654, %3655) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3657 = tfl.add %3656, %3648 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3658 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3659 = "tfl.mul"(%3657, %3658) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3660 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3661 = "tfl.add"(%3659, %3660) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3662 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3663 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3664 = "tfl.fully_connected"(%3661, %3662, %3663) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3665 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3666 = "tfl.reshape"(%3664, %3665) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %3667 = tfl.add %3666, %3453 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %3668 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3669 = "tfl.mul"(%3667, %3668) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3670 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3671 = "tfl.add"(%3669, %3670) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3672 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3673 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3674 = "tfl.fully_connected"(%3671, %3672, %3673) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3675 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3676 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3677 = "tfl.fully_connected"(%3671, %3675, %3676) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3678 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3679 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3680 = "tfl.fully_connected"(%3671, %3678, %3679) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3681 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3682 = "tfl.reshape"(%3674, %3681) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3683 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3684 = "tfl.reshape"(%3677, %3683) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3685 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3686 = "tfl.reshape"(%3680, %3685) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3687 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3688 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3689 = "tfl.fully_connected"(%3684, %3687, %3688) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3690 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3691 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3692 = "tfl.fully_connected"(%3684, %3690, %3691) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3693 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3694 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3695 = "tfl.fully_connected"(%3686, %3693, %3694) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3696 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3697 = "tfl.reshape"(%3689, %3696) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3698 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3699 = "tfl.reshape"(%3692, %3698) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3700 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3701 = "tfl.reshape"(%3695, %3700) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3702 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3703 = "tfl.transpose"(%3697, %3702) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3704 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3705 = "tfl.transpose"(%3699, %3704) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3706 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3707 = "tfl.transpose"(%3701, %3706) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3708 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3709 = "tfl.transpose"(%3705, %3708) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %3710 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3711 = "tfl.reshape"(%3703, %3710) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3712 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3713 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3714 = "tfl.slice"(%3711, %3712, %3713) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3715 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3716 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3717 = "tfl.slice"(%3711, %3715, %3716) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3718 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3719 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3720 = "tfl.slice"(%3711, %3718, %3719) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3721 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3722 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3723 = "tfl.slice"(%3711, %3721, %3722) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3724 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3725 = "tfl.reshape"(%3709, %3724) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %3726 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3727 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3728 = "tfl.slice"(%3725, %3726, %3727) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3729 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3730 = "tfl.transpose"(%3728, %3729) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3731 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3732 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3733 = "tfl.slice"(%3725, %3731, %3732) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3734 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3735 = "tfl.transpose"(%3733, %3734) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3736 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3737 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3738 = "tfl.slice"(%3725, %3736, %3737) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3739 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3740 = "tfl.transpose"(%3738, %3739) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3741 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3742 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3743 = "tfl.slice"(%3725, %3741, %3742) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3744 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3745 = "tfl.transpose"(%3743, %3744) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3746 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3747 = "tfl.reshape"(%3730, %3746) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3748 = "tfl.fully_connected"(%3714, %3747, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3749 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3750 = "tfl.reshape"(%3735, %3749) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3751 = "tfl.fully_connected"(%3717, %3750, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3752 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3753 = "tfl.reshape"(%3740, %3752) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3754 = "tfl.fully_connected"(%3720, %3753, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3755 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3756 = "tfl.reshape"(%3745, %3755) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3757 = "tfl.fully_connected"(%3723, %3756, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3758 = "tfl.pack"(%3748, %3751, %3754, %3757) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %3759 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %3760 = "tfl.mul"(%3758, %3759) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %3761 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3762 = "tfl.reshape"(%3760, %3761) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %3763 = "tfl.add"(%3762, %152) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3764 = "tfl.softmax"(%3763) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3765 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3766 = "tfl.reshape"(%3764, %3765) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %3767 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3768 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3769 = "tfl.slice"(%3766, %3767, %3768) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3770 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3771 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3772 = "tfl.slice"(%3766, %3770, %3771) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3773 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3774 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3775 = "tfl.slice"(%3766, %3773, %3774) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3776 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3777 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3778 = "tfl.slice"(%3766, %3776, %3777) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3779 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3780 = "tfl.reshape"(%3707, %3779) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3781 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3782 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3783 = "tfl.slice"(%3780, %3781, %3782) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3784 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3785 = "tfl.transpose"(%3783, %3784) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3786 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3787 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3788 = "tfl.slice"(%3780, %3786, %3787) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3789 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3790 = "tfl.transpose"(%3788, %3789) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3791 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3792 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3793 = "tfl.slice"(%3780, %3791, %3792) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3794 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3795 = "tfl.transpose"(%3793, %3794) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3796 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3797 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3798 = "tfl.slice"(%3780, %3796, %3797) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3799 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3800 = "tfl.transpose"(%3798, %3799) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %3801 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3802 = "tfl.reshape"(%3785, %3801) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3803 = "tfl.fully_connected"(%3769, %3802, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3804 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3805 = "tfl.reshape"(%3790, %3804) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3806 = "tfl.fully_connected"(%3772, %3805, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3807 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3808 = "tfl.reshape"(%3795, %3807) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3809 = "tfl.fully_connected"(%3775, %3808, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3810 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3811 = "tfl.reshape"(%3800, %3810) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %3812 = "tfl.fully_connected"(%3778, %3811, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %3813 = "tfl.pack"(%3803, %3806, %3809, %3812) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %3814 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3815 = "tfl.transpose"(%3813, %3814) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %3816 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3817 = "tfl.reshape"(%3815, %3816) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3818 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3819 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3820 = "tfl.fully_connected"(%3817, %3818, %3819) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3821 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3822 = "tfl.reshape"(%3820, %3821) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3823 = tfl.add %3822, %3682 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3824 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3825 = "tfl.mul"(%3823, %3824) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3826 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3827 = "tfl.add"(%3825, %3826) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3828 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3829 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3830 = "tfl.fully_connected"(%3827, %3828, %3829) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3831 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3832 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3833 = "tfl.fully_connected"(%3830, %3831, %3832) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3834 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3835 = "tfl.reshape"(%3833, %3834) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3836 = tfl.add %3835, %3827 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3837 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3838 = "tfl.mul"(%3836, %3837) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3839 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3840 = "tfl.add"(%3838, %3839) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3841 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3842 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3843 = "tfl.fully_connected"(%3840, %3841, %3842) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3844 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3845 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3846 = "tfl.fully_connected"(%3843, %3844, %3845) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3847 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3848 = "tfl.reshape"(%3846, %3847) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3849 = tfl.add %3848, %3840 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3850 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3851 = "tfl.mul"(%3849, %3850) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3852 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3853 = "tfl.add"(%3851, %3852) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3854 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3855 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3856 = "tfl.fully_connected"(%3853, %3854, %3855) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3857 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3858 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3859 = "tfl.fully_connected"(%3856, %3857, %3858) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3860 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3861 = "tfl.reshape"(%3859, %3860) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3862 = tfl.add %3861, %3853 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3863 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3864 = "tfl.mul"(%3862, %3863) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3865 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3866 = "tfl.add"(%3864, %3865) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3867 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3868 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3869 = "tfl.fully_connected"(%3866, %3867, %3868) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3870 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3871 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3872 = "tfl.fully_connected"(%3869, %3870, %3871) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3873 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3874 = "tfl.reshape"(%3872, %3873) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3875 = tfl.add %3874, %3866 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %3876 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3877 = "tfl.mul"(%3875, %3876) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3878 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3879 = "tfl.add"(%3877, %3878) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %3880 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %3881 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3882 = "tfl.fully_connected"(%3879, %3880, %3881) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %3883 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3884 = "tfl.reshape"(%3882, %3883) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %3885 = tfl.add %3884, %3671 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %3886 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3887 = "tfl.mul"(%3885, %3886) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3888 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %3889 = "tfl.add"(%3887, %3888) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %3890 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3891 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3892 = "tfl.fully_connected"(%3889, %3890, %3891) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3893 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3894 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3895 = "tfl.fully_connected"(%3889, %3893, %3894) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3896 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %3897 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3898 = "tfl.fully_connected"(%3889, %3896, %3897) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3899 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3900 = "tfl.reshape"(%3892, %3899) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3901 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3902 = "tfl.reshape"(%3895, %3901) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3903 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3904 = "tfl.reshape"(%3898, %3903) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %3905 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3906 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3907 = "tfl.fully_connected"(%3902, %3905, %3906) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3908 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3909 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3910 = "tfl.fully_connected"(%3902, %3908, %3909) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3911 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %3912 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %3913 = "tfl.fully_connected"(%3904, %3911, %3912) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %3914 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3915 = "tfl.reshape"(%3907, %3914) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3916 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3917 = "tfl.reshape"(%3910, %3916) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3918 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3919 = "tfl.reshape"(%3913, %3918) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %3920 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3921 = "tfl.transpose"(%3915, %3920) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3922 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3923 = "tfl.transpose"(%3917, %3922) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3924 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3925 = "tfl.transpose"(%3919, %3924) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %3926 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3927 = "tfl.transpose"(%3923, %3926) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %3928 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3929 = "tfl.reshape"(%3921, %3928) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3930 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3931 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3932 = "tfl.slice"(%3929, %3930, %3931) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3933 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3934 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3935 = "tfl.slice"(%3929, %3933, %3934) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3936 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3937 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3938 = "tfl.slice"(%3929, %3936, %3937) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3939 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3940 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3941 = "tfl.slice"(%3929, %3939, %3940) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %3942 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3943 = "tfl.reshape"(%3927, %3942) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %3944 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3945 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3946 = "tfl.slice"(%3943, %3944, %3945) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3947 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3948 = "tfl.transpose"(%3946, %3947) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3949 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3950 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3951 = "tfl.slice"(%3943, %3949, %3950) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3952 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3953 = "tfl.transpose"(%3951, %3952) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3954 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3955 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3956 = "tfl.slice"(%3943, %3954, %3955) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3957 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3958 = "tfl.transpose"(%3956, %3957) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3959 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3960 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3961 = "tfl.slice"(%3943, %3959, %3960) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %3962 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3963 = "tfl.transpose"(%3961, %3962) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %3964 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3965 = "tfl.reshape"(%3948, %3964) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3966 = "tfl.fully_connected"(%3932, %3965, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3967 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3968 = "tfl.reshape"(%3953, %3967) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3969 = "tfl.fully_connected"(%3935, %3968, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3970 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3971 = "tfl.reshape"(%3958, %3970) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3972 = "tfl.fully_connected"(%3938, %3971, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3973 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3974 = "tfl.reshape"(%3963, %3973) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %3975 = "tfl.fully_connected"(%3941, %3974, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %3976 = "tfl.pack"(%3966, %3969, %3972, %3975) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %3977 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %3978 = "tfl.mul"(%3976, %3977) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %3979 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3980 = "tfl.reshape"(%3978, %3979) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %3981 = "tfl.add"(%3980, %154) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3982 = "tfl.softmax"(%3981) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %3983 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3984 = "tfl.reshape"(%3982, %3983) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %3985 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %3986 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3987 = "tfl.slice"(%3984, %3985, %3986) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3988 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3989 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3990 = "tfl.slice"(%3984, %3988, %3989) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3991 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3992 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3993 = "tfl.slice"(%3984, %3991, %3992) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3994 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3995 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3996 = "tfl.slice"(%3984, %3994, %3995) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %3997 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %3998 = "tfl.reshape"(%3925, %3997) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %3999 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4000 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4001 = "tfl.slice"(%3998, %3999, %4000) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4002 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4003 = "tfl.transpose"(%4001, %4002) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4004 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4005 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4006 = "tfl.slice"(%3998, %4004, %4005) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4007 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4008 = "tfl.transpose"(%4006, %4007) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4009 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4010 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4011 = "tfl.slice"(%3998, %4009, %4010) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4012 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4013 = "tfl.transpose"(%4011, %4012) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4014 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4015 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4016 = "tfl.slice"(%3998, %4014, %4015) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4017 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4018 = "tfl.transpose"(%4016, %4017) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4019 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4020 = "tfl.reshape"(%4003, %4019) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4021 = "tfl.fully_connected"(%3987, %4020, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4022 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4023 = "tfl.reshape"(%4008, %4022) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4024 = "tfl.fully_connected"(%3990, %4023, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4025 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4026 = "tfl.reshape"(%4013, %4025) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4027 = "tfl.fully_connected"(%3993, %4026, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4028 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4029 = "tfl.reshape"(%4018, %4028) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4030 = "tfl.fully_connected"(%3996, %4029, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4031 = "tfl.pack"(%4021, %4024, %4027, %4030) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %4032 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4033 = "tfl.transpose"(%4031, %4032) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %4034 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4035 = "tfl.reshape"(%4033, %4034) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4036 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4037 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4038 = "tfl.fully_connected"(%4035, %4036, %4037) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4039 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4040 = "tfl.reshape"(%4038, %4039) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4041 = tfl.add %4040, %3900 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4042 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4043 = "tfl.mul"(%4041, %4042) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4044 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4045 = "tfl.add"(%4043, %4044) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4046 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4047 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4048 = "tfl.fully_connected"(%4045, %4046, %4047) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4049 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4050 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4051 = "tfl.fully_connected"(%4048, %4049, %4050) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4052 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4053 = "tfl.reshape"(%4051, %4052) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4054 = tfl.add %4053, %4045 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4055 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4056 = "tfl.mul"(%4054, %4055) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4057 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4058 = "tfl.add"(%4056, %4057) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4059 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4060 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4061 = "tfl.fully_connected"(%4058, %4059, %4060) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4062 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4063 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4064 = "tfl.fully_connected"(%4061, %4062, %4063) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4065 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4066 = "tfl.reshape"(%4064, %4065) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4067 = tfl.add %4066, %4058 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4068 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4069 = "tfl.mul"(%4067, %4068) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4070 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4071 = "tfl.add"(%4069, %4070) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4072 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4073 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4074 = "tfl.fully_connected"(%4071, %4072, %4073) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4075 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4076 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4077 = "tfl.fully_connected"(%4074, %4075, %4076) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4078 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4079 = "tfl.reshape"(%4077, %4078) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4080 = tfl.add %4079, %4071 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4081 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4082 = "tfl.mul"(%4080, %4081) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4083 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4084 = "tfl.add"(%4082, %4083) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4085 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4086 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4087 = "tfl.fully_connected"(%4084, %4085, %4086) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4088 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4089 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4090 = "tfl.fully_connected"(%4087, %4088, %4089) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4091 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4092 = "tfl.reshape"(%4090, %4091) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4093 = tfl.add %4092, %4084 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4094 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4095 = "tfl.mul"(%4093, %4094) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4096 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4097 = "tfl.add"(%4095, %4096) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4098 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4099 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4100 = "tfl.fully_connected"(%4097, %4098, %4099) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4101 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4102 = "tfl.reshape"(%4100, %4101) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %4103 = tfl.add %4102, %3889 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %4104 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4105 = "tfl.mul"(%4103, %4104) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4106 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4107 = "tfl.add"(%4105, %4106) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4108 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4109 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4110 = "tfl.fully_connected"(%4107, %4108, %4109) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4111 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4112 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4113 = "tfl.fully_connected"(%4107, %4111, %4112) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4114 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4115 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4116 = "tfl.fully_connected"(%4107, %4114, %4115) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4117 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4118 = "tfl.reshape"(%4110, %4117) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4119 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4120 = "tfl.reshape"(%4113, %4119) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4121 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4122 = "tfl.reshape"(%4116, %4121) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4123 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4124 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4125 = "tfl.fully_connected"(%4120, %4123, %4124) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4126 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4127 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4128 = "tfl.fully_connected"(%4120, %4126, %4127) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4129 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4130 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4131 = "tfl.fully_connected"(%4122, %4129, %4130) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4132 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4133 = "tfl.reshape"(%4125, %4132) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4134 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4135 = "tfl.reshape"(%4128, %4134) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4136 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4137 = "tfl.reshape"(%4131, %4136) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4138 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4139 = "tfl.transpose"(%4133, %4138) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4140 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4141 = "tfl.transpose"(%4135, %4140) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4142 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4143 = "tfl.transpose"(%4137, %4142) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4144 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4145 = "tfl.transpose"(%4141, %4144) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %4146 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4147 = "tfl.reshape"(%4139, %4146) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %4148 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4149 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4150 = "tfl.slice"(%4147, %4148, %4149) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4151 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4152 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4153 = "tfl.slice"(%4147, %4151, %4152) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4154 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4155 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4156 = "tfl.slice"(%4147, %4154, %4155) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4157 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4158 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4159 = "tfl.slice"(%4147, %4157, %4158) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4160 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4161 = "tfl.reshape"(%4145, %4160) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %4162 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4163 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4164 = "tfl.slice"(%4161, %4162, %4163) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4165 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4166 = "tfl.transpose"(%4164, %4165) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4167 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4168 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4169 = "tfl.slice"(%4161, %4167, %4168) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4170 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4171 = "tfl.transpose"(%4169, %4170) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4172 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4173 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4174 = "tfl.slice"(%4161, %4172, %4173) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4175 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4176 = "tfl.transpose"(%4174, %4175) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4177 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4178 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4179 = "tfl.slice"(%4161, %4177, %4178) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4180 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4181 = "tfl.transpose"(%4179, %4180) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4182 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4183 = "tfl.reshape"(%4166, %4182) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4184 = "tfl.fully_connected"(%4150, %4183, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4185 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4186 = "tfl.reshape"(%4171, %4185) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4187 = "tfl.fully_connected"(%4153, %4186, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4188 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4189 = "tfl.reshape"(%4176, %4188) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4190 = "tfl.fully_connected"(%4156, %4189, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4191 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4192 = "tfl.reshape"(%4181, %4191) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4193 = "tfl.fully_connected"(%4159, %4192, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4194 = "tfl.pack"(%4184, %4187, %4190, %4193) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %4195 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %4196 = "tfl.mul"(%4194, %4195) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %4197 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4198 = "tfl.reshape"(%4196, %4197) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %4199 = "tfl.add"(%4198, %156) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %4200 = "tfl.softmax"(%4199) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %4201 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4202 = "tfl.reshape"(%4200, %4201) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %4203 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4204 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4205 = "tfl.slice"(%4202, %4203, %4204) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4206 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4207 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4208 = "tfl.slice"(%4202, %4206, %4207) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4209 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4210 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4211 = "tfl.slice"(%4202, %4209, %4210) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4212 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4213 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4214 = "tfl.slice"(%4202, %4212, %4213) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4215 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4216 = "tfl.reshape"(%4143, %4215) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %4217 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4218 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4219 = "tfl.slice"(%4216, %4217, %4218) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4220 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4221 = "tfl.transpose"(%4219, %4220) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4222 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4223 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4224 = "tfl.slice"(%4216, %4222, %4223) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4225 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4226 = "tfl.transpose"(%4224, %4225) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4227 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4228 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4229 = "tfl.slice"(%4216, %4227, %4228) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4230 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4231 = "tfl.transpose"(%4229, %4230) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4232 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4233 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4234 = "tfl.slice"(%4216, %4232, %4233) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4235 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4236 = "tfl.transpose"(%4234, %4235) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4237 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4238 = "tfl.reshape"(%4221, %4237) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4239 = "tfl.fully_connected"(%4205, %4238, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4240 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4241 = "tfl.reshape"(%4226, %4240) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4242 = "tfl.fully_connected"(%4208, %4241, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4243 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4244 = "tfl.reshape"(%4231, %4243) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4245 = "tfl.fully_connected"(%4211, %4244, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4246 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4247 = "tfl.reshape"(%4236, %4246) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4248 = "tfl.fully_connected"(%4214, %4247, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4249 = "tfl.pack"(%4239, %4242, %4245, %4248) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %4250 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4251 = "tfl.transpose"(%4249, %4250) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %4252 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4253 = "tfl.reshape"(%4251, %4252) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4254 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4255 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4256 = "tfl.fully_connected"(%4253, %4254, %4255) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4257 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4258 = "tfl.reshape"(%4256, %4257) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4259 = tfl.add %4258, %4118 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4260 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4261 = "tfl.mul"(%4259, %4260) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4262 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4263 = "tfl.add"(%4261, %4262) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4264 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4265 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4266 = "tfl.fully_connected"(%4263, %4264, %4265) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4267 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4268 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4269 = "tfl.fully_connected"(%4266, %4267, %4268) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4270 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4271 = "tfl.reshape"(%4269, %4270) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4272 = tfl.add %4271, %4263 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4273 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4274 = "tfl.mul"(%4272, %4273) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4275 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4276 = "tfl.add"(%4274, %4275) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4277 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4278 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4279 = "tfl.fully_connected"(%4276, %4277, %4278) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4280 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4281 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4282 = "tfl.fully_connected"(%4279, %4280, %4281) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4283 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4284 = "tfl.reshape"(%4282, %4283) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4285 = tfl.add %4284, %4276 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4286 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4287 = "tfl.mul"(%4285, %4286) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4288 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4289 = "tfl.add"(%4287, %4288) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4290 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4291 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4292 = "tfl.fully_connected"(%4289, %4290, %4291) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4293 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4294 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4295 = "tfl.fully_connected"(%4292, %4293, %4294) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4296 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4297 = "tfl.reshape"(%4295, %4296) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4298 = tfl.add %4297, %4289 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4299 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4300 = "tfl.mul"(%4298, %4299) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4301 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4302 = "tfl.add"(%4300, %4301) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4303 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4304 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4305 = "tfl.fully_connected"(%4302, %4303, %4304) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4306 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4307 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4308 = "tfl.fully_connected"(%4305, %4306, %4307) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4309 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4310 = "tfl.reshape"(%4308, %4309) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4311 = tfl.add %4310, %4302 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4312 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4313 = "tfl.mul"(%4311, %4312) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4314 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4315 = "tfl.add"(%4313, %4314) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4316 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4317 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4318 = "tfl.fully_connected"(%4315, %4316, %4317) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4319 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4320 = "tfl.reshape"(%4318, %4319) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %4321 = tfl.add %4320, %4107 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %4322 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4323 = "tfl.mul"(%4321, %4322) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4324 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4325 = "tfl.add"(%4323, %4324) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4326 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4327 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4328 = "tfl.fully_connected"(%4325, %4326, %4327) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4329 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4330 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4331 = "tfl.fully_connected"(%4325, %4329, %4330) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4332 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4333 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4334 = "tfl.fully_connected"(%4325, %4332, %4333) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4335 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4336 = "tfl.reshape"(%4328, %4335) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4337 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4338 = "tfl.reshape"(%4331, %4337) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4339 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4340 = "tfl.reshape"(%4334, %4339) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4341 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4342 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4343 = "tfl.fully_connected"(%4338, %4341, %4342) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4344 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4345 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4346 = "tfl.fully_connected"(%4338, %4344, %4345) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4347 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4348 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4349 = "tfl.fully_connected"(%4340, %4347, %4348) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4350 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4351 = "tfl.reshape"(%4343, %4350) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4352 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4353 = "tfl.reshape"(%4346, %4352) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4354 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4355 = "tfl.reshape"(%4349, %4354) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4356 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4357 = "tfl.transpose"(%4351, %4356) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4358 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4359 = "tfl.transpose"(%4353, %4358) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4360 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4361 = "tfl.transpose"(%4355, %4360) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4362 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4363 = "tfl.transpose"(%4359, %4362) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %4364 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4365 = "tfl.reshape"(%4357, %4364) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %4366 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4367 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4368 = "tfl.slice"(%4365, %4366, %4367) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4369 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4370 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4371 = "tfl.slice"(%4365, %4369, %4370) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4372 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4373 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4374 = "tfl.slice"(%4365, %4372, %4373) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4375 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4376 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4377 = "tfl.slice"(%4365, %4375, %4376) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4378 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4379 = "tfl.reshape"(%4363, %4378) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %4380 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4381 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4382 = "tfl.slice"(%4379, %4380, %4381) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4383 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4384 = "tfl.transpose"(%4382, %4383) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4385 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4386 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4387 = "tfl.slice"(%4379, %4385, %4386) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4388 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4389 = "tfl.transpose"(%4387, %4388) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4390 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4391 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4392 = "tfl.slice"(%4379, %4390, %4391) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4393 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4394 = "tfl.transpose"(%4392, %4393) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4395 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4396 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4397 = "tfl.slice"(%4379, %4395, %4396) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4398 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4399 = "tfl.transpose"(%4397, %4398) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4400 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4401 = "tfl.reshape"(%4384, %4400) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4402 = "tfl.fully_connected"(%4368, %4401, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4403 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4404 = "tfl.reshape"(%4389, %4403) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4405 = "tfl.fully_connected"(%4371, %4404, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4406 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4407 = "tfl.reshape"(%4394, %4406) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4408 = "tfl.fully_connected"(%4374, %4407, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4409 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4410 = "tfl.reshape"(%4399, %4409) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4411 = "tfl.fully_connected"(%4377, %4410, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4412 = "tfl.pack"(%4402, %4405, %4408, %4411) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %4413 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %4414 = "tfl.mul"(%4412, %4413) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %4415 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4416 = "tfl.reshape"(%4414, %4415) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %4417 = "tfl.add"(%4416, %158) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %4418 = "tfl.softmax"(%4417) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %4419 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4420 = "tfl.reshape"(%4418, %4419) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %4421 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4422 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4423 = "tfl.slice"(%4420, %4421, %4422) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4424 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4425 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4426 = "tfl.slice"(%4420, %4424, %4425) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4427 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4428 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4429 = "tfl.slice"(%4420, %4427, %4428) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4430 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4431 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4432 = "tfl.slice"(%4420, %4430, %4431) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4433 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4434 = "tfl.reshape"(%4361, %4433) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %4435 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4436 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4437 = "tfl.slice"(%4434, %4435, %4436) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4438 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4439 = "tfl.transpose"(%4437, %4438) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4440 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4441 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4442 = "tfl.slice"(%4434, %4440, %4441) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4443 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4444 = "tfl.transpose"(%4442, %4443) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4445 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4446 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4447 = "tfl.slice"(%4434, %4445, %4446) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4448 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4449 = "tfl.transpose"(%4447, %4448) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4450 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4451 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4452 = "tfl.slice"(%4434, %4450, %4451) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4453 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4454 = "tfl.transpose"(%4452, %4453) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4455 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4456 = "tfl.reshape"(%4439, %4455) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4457 = "tfl.fully_connected"(%4423, %4456, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4458 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4459 = "tfl.reshape"(%4444, %4458) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4460 = "tfl.fully_connected"(%4426, %4459, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4461 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4462 = "tfl.reshape"(%4449, %4461) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4463 = "tfl.fully_connected"(%4429, %4462, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4464 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4465 = "tfl.reshape"(%4454, %4464) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4466 = "tfl.fully_connected"(%4432, %4465, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4467 = "tfl.pack"(%4457, %4460, %4463, %4466) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %4468 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4469 = "tfl.transpose"(%4467, %4468) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %4470 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4471 = "tfl.reshape"(%4469, %4470) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4472 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4473 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4474 = "tfl.fully_connected"(%4471, %4472, %4473) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4475 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4476 = "tfl.reshape"(%4474, %4475) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4477 = tfl.add %4476, %4336 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4478 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4479 = "tfl.mul"(%4477, %4478) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4480 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4481 = "tfl.add"(%4479, %4480) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4482 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4483 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4484 = "tfl.fully_connected"(%4481, %4482, %4483) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4485 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4486 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4487 = "tfl.fully_connected"(%4484, %4485, %4486) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4488 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4489 = "tfl.reshape"(%4487, %4488) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4490 = tfl.add %4489, %4481 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4491 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4492 = "tfl.mul"(%4490, %4491) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4493 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4494 = "tfl.add"(%4492, %4493) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4495 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4496 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4497 = "tfl.fully_connected"(%4494, %4495, %4496) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4498 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4499 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4500 = "tfl.fully_connected"(%4497, %4498, %4499) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4501 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4502 = "tfl.reshape"(%4500, %4501) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4503 = tfl.add %4502, %4494 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4504 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4505 = "tfl.mul"(%4503, %4504) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4506 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4507 = "tfl.add"(%4505, %4506) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4508 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4509 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4510 = "tfl.fully_connected"(%4507, %4508, %4509) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4511 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4512 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4513 = "tfl.fully_connected"(%4510, %4511, %4512) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4514 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4515 = "tfl.reshape"(%4513, %4514) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4516 = tfl.add %4515, %4507 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4517 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4518 = "tfl.mul"(%4516, %4517) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4519 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4520 = "tfl.add"(%4518, %4519) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4521 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4522 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4523 = "tfl.fully_connected"(%4520, %4521, %4522) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4524 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4525 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4526 = "tfl.fully_connected"(%4523, %4524, %4525) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4527 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4528 = "tfl.reshape"(%4526, %4527) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4529 = tfl.add %4528, %4520 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4530 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4531 = "tfl.mul"(%4529, %4530) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4532 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4533 = "tfl.add"(%4531, %4532) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4534 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4535 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4536 = "tfl.fully_connected"(%4533, %4534, %4535) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4537 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4538 = "tfl.reshape"(%4536, %4537) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %4539 = tfl.add %4538, %4325 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %4540 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4541 = "tfl.mul"(%4539, %4540) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4542 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4543 = "tfl.add"(%4541, %4542) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4544 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4545 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4546 = "tfl.fully_connected"(%4543, %4544, %4545) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4547 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4548 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4549 = "tfl.fully_connected"(%4543, %4547, %4548) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4550 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4551 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4552 = "tfl.fully_connected"(%4543, %4550, %4551) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4553 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4554 = "tfl.reshape"(%4546, %4553) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4555 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4556 = "tfl.reshape"(%4549, %4555) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4557 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4558 = "tfl.reshape"(%4552, %4557) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4559 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4560 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4561 = "tfl.fully_connected"(%4556, %4559, %4560) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4562 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4563 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4564 = "tfl.fully_connected"(%4556, %4562, %4563) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4565 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4566 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4567 = "tfl.fully_connected"(%4558, %4565, %4566) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4568 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4569 = "tfl.reshape"(%4561, %4568) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4570 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4571 = "tfl.reshape"(%4564, %4570) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4572 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4573 = "tfl.reshape"(%4567, %4572) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4574 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4575 = "tfl.transpose"(%4569, %4574) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4576 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4577 = "tfl.transpose"(%4571, %4576) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4578 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4579 = "tfl.transpose"(%4573, %4578) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4580 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4581 = "tfl.transpose"(%4577, %4580) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %4582 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4583 = "tfl.reshape"(%4575, %4582) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %4584 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4585 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4586 = "tfl.slice"(%4583, %4584, %4585) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4587 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4588 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4589 = "tfl.slice"(%4583, %4587, %4588) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4590 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4591 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4592 = "tfl.slice"(%4583, %4590, %4591) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4593 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4594 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4595 = "tfl.slice"(%4583, %4593, %4594) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4596 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4597 = "tfl.reshape"(%4581, %4596) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %4598 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4599 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4600 = "tfl.slice"(%4597, %4598, %4599) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4601 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4602 = "tfl.transpose"(%4600, %4601) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4603 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4604 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4605 = "tfl.slice"(%4597, %4603, %4604) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4606 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4607 = "tfl.transpose"(%4605, %4606) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4608 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4609 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4610 = "tfl.slice"(%4597, %4608, %4609) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4611 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4612 = "tfl.transpose"(%4610, %4611) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4613 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4614 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4615 = "tfl.slice"(%4597, %4613, %4614) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4616 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4617 = "tfl.transpose"(%4615, %4616) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4618 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4619 = "tfl.reshape"(%4602, %4618) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4620 = "tfl.fully_connected"(%4586, %4619, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4621 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4622 = "tfl.reshape"(%4607, %4621) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4623 = "tfl.fully_connected"(%4589, %4622, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4624 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4625 = "tfl.reshape"(%4612, %4624) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4626 = "tfl.fully_connected"(%4592, %4625, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4627 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4628 = "tfl.reshape"(%4617, %4627) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4629 = "tfl.fully_connected"(%4595, %4628, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4630 = "tfl.pack"(%4620, %4623, %4626, %4629) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %4631 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %4632 = "tfl.mul"(%4630, %4631) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %4633 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4634 = "tfl.reshape"(%4632, %4633) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %4635 = "tfl.add"(%4634, %160) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %4636 = "tfl.softmax"(%4635) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %4637 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4638 = "tfl.reshape"(%4636, %4637) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %4639 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4640 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4641 = "tfl.slice"(%4638, %4639, %4640) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4642 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4643 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4644 = "tfl.slice"(%4638, %4642, %4643) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4645 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4646 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4647 = "tfl.slice"(%4638, %4645, %4646) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4648 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4649 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4650 = "tfl.slice"(%4638, %4648, %4649) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4651 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4652 = "tfl.reshape"(%4579, %4651) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %4653 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4654 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4655 = "tfl.slice"(%4652, %4653, %4654) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4656 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4657 = "tfl.transpose"(%4655, %4656) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4658 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4659 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4660 = "tfl.slice"(%4652, %4658, %4659) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4661 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4662 = "tfl.transpose"(%4660, %4661) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4663 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4664 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4665 = "tfl.slice"(%4652, %4663, %4664) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4666 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4667 = "tfl.transpose"(%4665, %4666) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4668 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4669 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4670 = "tfl.slice"(%4652, %4668, %4669) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4671 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4672 = "tfl.transpose"(%4670, %4671) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4673 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4674 = "tfl.reshape"(%4657, %4673) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4675 = "tfl.fully_connected"(%4641, %4674, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4676 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4677 = "tfl.reshape"(%4662, %4676) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4678 = "tfl.fully_connected"(%4644, %4677, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4679 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4680 = "tfl.reshape"(%4667, %4679) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4681 = "tfl.fully_connected"(%4647, %4680, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4682 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4683 = "tfl.reshape"(%4672, %4682) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4684 = "tfl.fully_connected"(%4650, %4683, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4685 = "tfl.pack"(%4675, %4678, %4681, %4684) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %4686 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4687 = "tfl.transpose"(%4685, %4686) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %4688 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4689 = "tfl.reshape"(%4687, %4688) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4690 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4691 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4692 = "tfl.fully_connected"(%4689, %4690, %4691) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4693 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4694 = "tfl.reshape"(%4692, %4693) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4695 = tfl.add %4694, %4554 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4696 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4697 = "tfl.mul"(%4695, %4696) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4698 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4699 = "tfl.add"(%4697, %4698) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4700 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4701 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4702 = "tfl.fully_connected"(%4699, %4700, %4701) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4703 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4704 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4705 = "tfl.fully_connected"(%4702, %4703, %4704) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4706 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4707 = "tfl.reshape"(%4705, %4706) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4708 = tfl.add %4707, %4699 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4709 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4710 = "tfl.mul"(%4708, %4709) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4711 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4712 = "tfl.add"(%4710, %4711) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4713 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4714 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4715 = "tfl.fully_connected"(%4712, %4713, %4714) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4716 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4717 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4718 = "tfl.fully_connected"(%4715, %4716, %4717) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4719 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4720 = "tfl.reshape"(%4718, %4719) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4721 = tfl.add %4720, %4712 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4722 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4723 = "tfl.mul"(%4721, %4722) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4724 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4725 = "tfl.add"(%4723, %4724) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4726 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4727 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4728 = "tfl.fully_connected"(%4725, %4726, %4727) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4729 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4730 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4731 = "tfl.fully_connected"(%4728, %4729, %4730) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4732 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4733 = "tfl.reshape"(%4731, %4732) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4734 = tfl.add %4733, %4725 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4735 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4736 = "tfl.mul"(%4734, %4735) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4737 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4738 = "tfl.add"(%4736, %4737) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4739 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4740 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4741 = "tfl.fully_connected"(%4738, %4739, %4740) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4742 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4743 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4744 = "tfl.fully_connected"(%4741, %4742, %4743) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4745 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4746 = "tfl.reshape"(%4744, %4745) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4747 = tfl.add %4746, %4738 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4748 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4749 = "tfl.mul"(%4747, %4748) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4750 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4751 = "tfl.add"(%4749, %4750) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4752 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4753 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4754 = "tfl.fully_connected"(%4751, %4752, %4753) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4755 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4756 = "tfl.reshape"(%4754, %4755) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %4757 = tfl.add %4756, %4543 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %4758 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4759 = "tfl.mul"(%4757, %4758) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4760 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4761 = "tfl.add"(%4759, %4760) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4762 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4763 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4764 = "tfl.fully_connected"(%4761, %4762, %4763) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4765 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4766 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4767 = "tfl.fully_connected"(%4761, %4765, %4766) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4768 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4769 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4770 = "tfl.fully_connected"(%4761, %4768, %4769) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4771 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4772 = "tfl.reshape"(%4764, %4771) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4773 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4774 = "tfl.reshape"(%4767, %4773) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4775 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4776 = "tfl.reshape"(%4770, %4775) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4777 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4778 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4779 = "tfl.fully_connected"(%4774, %4777, %4778) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4780 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4781 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4782 = "tfl.fully_connected"(%4774, %4780, %4781) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4783 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4784 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4785 = "tfl.fully_connected"(%4776, %4783, %4784) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4786 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4787 = "tfl.reshape"(%4779, %4786) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4788 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4789 = "tfl.reshape"(%4782, %4788) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4790 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4791 = "tfl.reshape"(%4785, %4790) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4792 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4793 = "tfl.transpose"(%4787, %4792) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4794 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4795 = "tfl.transpose"(%4789, %4794) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4796 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4797 = "tfl.transpose"(%4791, %4796) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %4798 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4799 = "tfl.transpose"(%4795, %4798) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %4800 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4801 = "tfl.reshape"(%4793, %4800) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %4802 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4803 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4804 = "tfl.slice"(%4801, %4802, %4803) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4805 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4806 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4807 = "tfl.slice"(%4801, %4805, %4806) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4808 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4809 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4810 = "tfl.slice"(%4801, %4808, %4809) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4811 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4812 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4813 = "tfl.slice"(%4801, %4811, %4812) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4814 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4815 = "tfl.reshape"(%4799, %4814) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %4816 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4817 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4818 = "tfl.slice"(%4815, %4816, %4817) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4819 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4820 = "tfl.transpose"(%4818, %4819) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4821 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4822 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4823 = "tfl.slice"(%4815, %4821, %4822) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4824 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4825 = "tfl.transpose"(%4823, %4824) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4826 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4827 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4828 = "tfl.slice"(%4815, %4826, %4827) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4829 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4830 = "tfl.transpose"(%4828, %4829) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4831 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4832 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4833 = "tfl.slice"(%4815, %4831, %4832) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %4834 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4835 = "tfl.transpose"(%4833, %4834) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %4836 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4837 = "tfl.reshape"(%4820, %4836) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4838 = "tfl.fully_connected"(%4804, %4837, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4839 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4840 = "tfl.reshape"(%4825, %4839) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4841 = "tfl.fully_connected"(%4807, %4840, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4842 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4843 = "tfl.reshape"(%4830, %4842) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4844 = "tfl.fully_connected"(%4810, %4843, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4845 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4846 = "tfl.reshape"(%4835, %4845) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %4847 = "tfl.fully_connected"(%4813, %4846, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %4848 = "tfl.pack"(%4838, %4841, %4844, %4847) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %4849 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %4850 = "tfl.mul"(%4848, %4849) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %4851 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4852 = "tfl.reshape"(%4850, %4851) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %4853 = "tfl.add"(%4852, %162) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %4854 = "tfl.softmax"(%4853) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %4855 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4856 = "tfl.reshape"(%4854, %4855) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %4857 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4858 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4859 = "tfl.slice"(%4856, %4857, %4858) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4860 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4861 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4862 = "tfl.slice"(%4856, %4860, %4861) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4863 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4864 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4865 = "tfl.slice"(%4856, %4863, %4864) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4866 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4867 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4868 = "tfl.slice"(%4856, %4866, %4867) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %4869 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4870 = "tfl.reshape"(%4797, %4869) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %4871 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %4872 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4873 = "tfl.slice"(%4870, %4871, %4872) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4874 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4875 = "tfl.transpose"(%4873, %4874) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4876 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4877 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4878 = "tfl.slice"(%4870, %4876, %4877) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4879 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4880 = "tfl.transpose"(%4878, %4879) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4881 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4882 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4883 = "tfl.slice"(%4870, %4881, %4882) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4884 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4885 = "tfl.transpose"(%4883, %4884) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4886 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4887 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4888 = "tfl.slice"(%4870, %4886, %4887) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %4889 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4890 = "tfl.transpose"(%4888, %4889) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %4891 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4892 = "tfl.reshape"(%4875, %4891) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4893 = "tfl.fully_connected"(%4859, %4892, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4894 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4895 = "tfl.reshape"(%4880, %4894) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4896 = "tfl.fully_connected"(%4862, %4895, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4897 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4898 = "tfl.reshape"(%4885, %4897) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4899 = "tfl.fully_connected"(%4865, %4898, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4900 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %4901 = "tfl.reshape"(%4890, %4900) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %4902 = "tfl.fully_connected"(%4868, %4901, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %4903 = "tfl.pack"(%4893, %4896, %4899, %4902) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %4904 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4905 = "tfl.transpose"(%4903, %4904) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %4906 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4907 = "tfl.reshape"(%4905, %4906) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %4908 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4909 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4910 = "tfl.fully_connected"(%4907, %4908, %4909) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4911 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4912 = "tfl.reshape"(%4910, %4911) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4913 = tfl.add %4912, %4772 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4914 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4915 = "tfl.mul"(%4913, %4914) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4916 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4917 = "tfl.add"(%4915, %4916) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4918 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4919 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4920 = "tfl.fully_connected"(%4917, %4918, %4919) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4921 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4922 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4923 = "tfl.fully_connected"(%4920, %4921, %4922) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4924 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4925 = "tfl.reshape"(%4923, %4924) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4926 = tfl.add %4925, %4917 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4927 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4928 = "tfl.mul"(%4926, %4927) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4929 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4930 = "tfl.add"(%4928, %4929) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4931 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4932 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4933 = "tfl.fully_connected"(%4930, %4931, %4932) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4934 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4935 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4936 = "tfl.fully_connected"(%4933, %4934, %4935) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4937 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4938 = "tfl.reshape"(%4936, %4937) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4939 = tfl.add %4938, %4930 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4940 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4941 = "tfl.mul"(%4939, %4940) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4942 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4943 = "tfl.add"(%4941, %4942) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4944 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4945 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4946 = "tfl.fully_connected"(%4943, %4944, %4945) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4947 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4948 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4949 = "tfl.fully_connected"(%4946, %4947, %4948) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4950 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4951 = "tfl.reshape"(%4949, %4950) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4952 = tfl.add %4951, %4943 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4953 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4954 = "tfl.mul"(%4952, %4953) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4955 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4956 = "tfl.add"(%4954, %4955) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4957 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4958 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4959 = "tfl.fully_connected"(%4956, %4957, %4958) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4960 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4961 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4962 = "tfl.fully_connected"(%4959, %4960, %4961) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4963 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4964 = "tfl.reshape"(%4962, %4963) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4965 = tfl.add %4964, %4956 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %4966 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4967 = "tfl.mul"(%4965, %4966) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4968 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4969 = "tfl.add"(%4967, %4968) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %4970 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %4971 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4972 = "tfl.fully_connected"(%4969, %4970, %4971) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %4973 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4974 = "tfl.reshape"(%4972, %4973) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %4975 = tfl.add %4974, %4761 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %4976 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4977 = "tfl.mul"(%4975, %4976) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4978 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %4979 = "tfl.add"(%4977, %4978) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %4980 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4981 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4982 = "tfl.fully_connected"(%4979, %4980, %4981) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4983 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4984 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4985 = "tfl.fully_connected"(%4979, %4983, %4984) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4986 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %4987 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4988 = "tfl.fully_connected"(%4979, %4986, %4987) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4989 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4990 = "tfl.reshape"(%4982, %4989) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4991 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4992 = "tfl.reshape"(%4985, %4991) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4993 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %4994 = "tfl.reshape"(%4988, %4993) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %4995 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4996 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %4997 = "tfl.fully_connected"(%4992, %4995, %4996) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %4998 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %4999 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5000 = "tfl.fully_connected"(%4992, %4998, %4999) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5001 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %5002 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5003 = "tfl.fully_connected"(%4994, %5001, %5002) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5004 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5005 = "tfl.reshape"(%4997, %5004) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %5006 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5007 = "tfl.reshape"(%5000, %5006) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %5008 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5009 = "tfl.reshape"(%5003, %5008) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %5010 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5011 = "tfl.transpose"(%5005, %5010) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %5012 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5013 = "tfl.transpose"(%5007, %5012) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %5014 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5015 = "tfl.transpose"(%5009, %5014) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %5016 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5017 = "tfl.transpose"(%5013, %5016) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %5018 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5019 = "tfl.reshape"(%5011, %5018) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %5020 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %5021 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5022 = "tfl.slice"(%5019, %5020, %5021) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5023 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5024 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5025 = "tfl.slice"(%5019, %5023, %5024) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5026 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5027 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5028 = "tfl.slice"(%5019, %5026, %5027) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5029 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5030 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5031 = "tfl.slice"(%5019, %5029, %5030) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5032 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5033 = "tfl.reshape"(%5017, %5032) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %5034 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %5035 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5036 = "tfl.slice"(%5033, %5034, %5035) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %5037 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5038 = "tfl.transpose"(%5036, %5037) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %5039 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5040 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5041 = "tfl.slice"(%5033, %5039, %5040) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %5042 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5043 = "tfl.transpose"(%5041, %5042) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %5044 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5045 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5046 = "tfl.slice"(%5033, %5044, %5045) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %5047 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5048 = "tfl.transpose"(%5046, %5047) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %5049 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5050 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5051 = "tfl.slice"(%5033, %5049, %5050) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %5052 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5053 = "tfl.transpose"(%5051, %5052) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %5054 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5055 = "tfl.reshape"(%5038, %5054) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %5056 = "tfl.fully_connected"(%5022, %5055, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %5057 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5058 = "tfl.reshape"(%5043, %5057) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %5059 = "tfl.fully_connected"(%5025, %5058, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %5060 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5061 = "tfl.reshape"(%5048, %5060) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %5062 = "tfl.fully_connected"(%5028, %5061, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %5063 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5064 = "tfl.reshape"(%5053, %5063) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %5065 = "tfl.fully_connected"(%5031, %5064, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %5066 = "tfl.pack"(%5056, %5059, %5062, %5065) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %5067 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %5068 = "tfl.mul"(%5066, %5067) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %5069 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5070 = "tfl.reshape"(%5068, %5069) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %5071 = "tfl.add"(%5070, %164) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %5072 = "tfl.softmax"(%5071) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %5073 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5074 = "tfl.reshape"(%5072, %5073) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %5075 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %5076 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5077 = "tfl.slice"(%5074, %5075, %5076) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %5078 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5079 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5080 = "tfl.slice"(%5074, %5078, %5079) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %5081 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5082 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5083 = "tfl.slice"(%5074, %5081, %5082) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %5084 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5085 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5086 = "tfl.slice"(%5074, %5084, %5085) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %5087 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5088 = "tfl.reshape"(%5015, %5087) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %5089 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %5090 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5091 = "tfl.slice"(%5088, %5089, %5090) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5092 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5093 = "tfl.transpose"(%5091, %5092) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %5094 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5095 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5096 = "tfl.slice"(%5088, %5094, %5095) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5097 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5098 = "tfl.transpose"(%5096, %5097) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %5099 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5100 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5101 = "tfl.slice"(%5088, %5099, %5100) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5102 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5103 = "tfl.transpose"(%5101, %5102) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %5104 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5105 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5106 = "tfl.slice"(%5088, %5104, %5105) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5107 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5108 = "tfl.transpose"(%5106, %5107) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %5109 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5110 = "tfl.reshape"(%5093, %5109) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %5111 = "tfl.fully_connected"(%5077, %5110, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %5112 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5113 = "tfl.reshape"(%5098, %5112) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %5114 = "tfl.fully_connected"(%5080, %5113, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %5115 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5116 = "tfl.reshape"(%5103, %5115) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %5117 = "tfl.fully_connected"(%5083, %5116, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %5118 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5119 = "tfl.reshape"(%5108, %5118) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %5120 = "tfl.fully_connected"(%5086, %5119, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %5121 = "tfl.pack"(%5111, %5114, %5117, %5120) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %5122 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5123 = "tfl.transpose"(%5121, %5122) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %5124 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5125 = "tfl.reshape"(%5123, %5124) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %5126 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %5127 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5128 = "tfl.fully_connected"(%5125, %5126, %5127) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5129 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5130 = "tfl.reshape"(%5128, %5129) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5131 = tfl.add %5130, %4990 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5132 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5133 = "tfl.mul"(%5131, %5132) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5134 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5135 = "tfl.add"(%5133, %5134) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5136 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5137 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5138 = "tfl.fully_connected"(%5135, %5136, %5137) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5139 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5140 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5141 = "tfl.fully_connected"(%5138, %5139, %5140) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5142 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5143 = "tfl.reshape"(%5141, %5142) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5144 = tfl.add %5143, %5135 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5145 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5146 = "tfl.mul"(%5144, %5145) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5147 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5148 = "tfl.add"(%5146, %5147) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5149 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5150 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5151 = "tfl.fully_connected"(%5148, %5149, %5150) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5152 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5153 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5154 = "tfl.fully_connected"(%5151, %5152, %5153) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5155 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5156 = "tfl.reshape"(%5154, %5155) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5157 = tfl.add %5156, %5148 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5158 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5159 = "tfl.mul"(%5157, %5158) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5160 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5161 = "tfl.add"(%5159, %5160) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5162 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5163 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5164 = "tfl.fully_connected"(%5161, %5162, %5163) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5165 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5166 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5167 = "tfl.fully_connected"(%5164, %5165, %5166) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5168 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5169 = "tfl.reshape"(%5167, %5168) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5170 = tfl.add %5169, %5161 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5171 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5172 = "tfl.mul"(%5170, %5171) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5173 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5174 = "tfl.add"(%5172, %5173) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5175 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5176 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5177 = "tfl.fully_connected"(%5174, %5175, %5176) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5178 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5179 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5180 = "tfl.fully_connected"(%5177, %5178, %5179) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5181 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5182 = "tfl.reshape"(%5180, %5181) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5183 = tfl.add %5182, %5174 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5184 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5185 = "tfl.mul"(%5183, %5184) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5186 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5187 = "tfl.add"(%5185, %5186) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5188 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5189 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5190 = "tfl.fully_connected"(%5187, %5188, %5189) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5191 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5192 = "tfl.reshape"(%5190, %5191) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %5193 = tfl.add %5192, %4979 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %5194 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5195 = "tfl.mul"(%5193, %5194) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %5196 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5197 = "tfl.add"(%5195, %5196) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %5198 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5199 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5200 = "tfl.fully_connected"(%5197, %5198, %5199) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5201 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5202 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5203 = "tfl.fully_connected"(%5197, %5201, %5202) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5204 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5205 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5206 = "tfl.fully_connected"(%5197, %5204, %5205) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5207 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5208 = "tfl.reshape"(%5200, %5207) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5209 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5210 = "tfl.reshape"(%5203, %5209) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5211 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5212 = "tfl.reshape"(%5206, %5211) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5213 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %5214 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5215 = "tfl.fully_connected"(%5210, %5213, %5214) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5216 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %5217 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5218 = "tfl.fully_connected"(%5210, %5216, %5217) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5219 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %5220 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5221 = "tfl.fully_connected"(%5212, %5219, %5220) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5222 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5223 = "tfl.reshape"(%5215, %5222) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %5224 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5225 = "tfl.reshape"(%5218, %5224) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %5226 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5227 = "tfl.reshape"(%5221, %5226) : (tensor<384x128xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %5228 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5229 = "tfl.transpose"(%5223, %5228) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %5230 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5231 = "tfl.transpose"(%5225, %5230) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %5232 = "tfl.pseudo_const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5233 = "tfl.transpose"(%5227, %5232) : (tensor<1x384x4x32xf32>, tensor<4xi32>) -> tensor<1x4x384x32xf32>
    %5234 = "tfl.pseudo_const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5235 = "tfl.transpose"(%5231, %5234) : (tensor<1x4x384x32xf32>, tensor<4xi32>) -> tensor<1x4x32x384xf32>
    %5236 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5237 = "tfl.reshape"(%5229, %5236) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %5238 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %5239 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5240 = "tfl.slice"(%5237, %5238, %5239) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5241 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5242 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5243 = "tfl.slice"(%5237, %5241, %5242) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5244 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5245 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5246 = "tfl.slice"(%5237, %5244, %5245) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5247 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5248 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5249 = "tfl.slice"(%5237, %5247, %5248) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5250 = "tfl.pseudo_const"() {value = dense<[4, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5251 = "tfl.reshape"(%5235, %5250) : (tensor<1x4x32x384xf32>, tensor<3xi32>) -> tensor<4x32x384xf32>
    %5252 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %5253 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5254 = "tfl.slice"(%5251, %5252, %5253) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %5255 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5256 = "tfl.transpose"(%5254, %5255) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %5257 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5258 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5259 = "tfl.slice"(%5251, %5257, %5258) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %5260 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5261 = "tfl.transpose"(%5259, %5260) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %5262 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5263 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5264 = "tfl.slice"(%5251, %5262, %5263) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %5265 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5266 = "tfl.transpose"(%5264, %5265) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %5267 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5268 = "tfl.pseudo_const"() {value = dense<[1, 32, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5269 = "tfl.slice"(%5251, %5267, %5268) : (tensor<4x32x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x32x384xf32>
    %5270 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5271 = "tfl.transpose"(%5269, %5270) : (tensor<1x32x384xf32>, tensor<3xi32>) -> tensor<384x32x1xf32>
    %5272 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5273 = "tfl.reshape"(%5256, %5272) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %5274 = "tfl.fully_connected"(%5240, %5273, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %5275 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5276 = "tfl.reshape"(%5261, %5275) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %5277 = "tfl.fully_connected"(%5243, %5276, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %5278 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5279 = "tfl.reshape"(%5266, %5278) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %5280 = "tfl.fully_connected"(%5246, %5279, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %5281 = "tfl.pseudo_const"() {value = dense<[384, 32]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5282 = "tfl.reshape"(%5271, %5281) : (tensor<384x32x1xf32>, tensor<2xi32>) -> tensor<384x32xf32>
    %5283 = "tfl.fully_connected"(%5249, %5282, %258) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x32xf32>, tensor<384x32xf32>, tensor<384xf32>) -> tensor<384x384xf32>
    %5284 = "tfl.pack"(%5274, %5277, %5280, %5283) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>, tensor<384x384xf32>) -> tensor<4x384x384xf32>
    %5285 = "tfl.pseudo_const"() {value = dense<0.176776692> : tensor<f32>} : () -> tensor<f32>
    %5286 = "tfl.mul"(%5284, %5285) {fused_activation_function = "NONE"} : (tensor<4x384x384xf32>, tensor<f32>) -> tensor<4x384x384xf32>
    %5287 = "tfl.pseudo_const"() {value = dense<[1, 4, 384, 384]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5288 = "tfl.reshape"(%5286, %5287) : (tensor<4x384x384xf32>, tensor<4xi32>) -> tensor<1x4x384x384xf32>
    %5289 = "tfl.add"(%5288, %166) {fused_activation_function = "NONE"} : (tensor<1x4x384x384xf32>, tensor<1x1x384x384xf32>) -> tensor<1x4x384x384xf32>
    %5290 = "tfl.softmax"(%5289) {beta = 1.000000e+00 : f32} : (tensor<1x4x384x384xf32>) -> tensor<1x4x384x384xf32>
    %5291 = "tfl.pseudo_const"() {value = dense<[4, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5292 = "tfl.reshape"(%5290, %5291) : (tensor<1x4x384x384xf32>, tensor<3xi32>) -> tensor<4x384x384xf32>
    %5293 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %5294 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5295 = "tfl.slice"(%5292, %5293, %5294) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %5296 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5297 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5298 = "tfl.slice"(%5292, %5296, %5297) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %5299 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5300 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5301 = "tfl.slice"(%5292, %5299, %5300) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %5302 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5303 = "tfl.pseudo_const"() {value = dense<[1, 384, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5304 = "tfl.slice"(%5292, %5302, %5303) : (tensor<4x384x384xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x384xf32>
    %5305 = "tfl.pseudo_const"() {value = dense<[4, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5306 = "tfl.reshape"(%5233, %5305) : (tensor<1x4x384x32xf32>, tensor<3xi32>) -> tensor<4x384x32xf32>
    %5307 = "tfl.pseudo_const"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %5308 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5309 = "tfl.slice"(%5306, %5307, %5308) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5310 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5311 = "tfl.transpose"(%5309, %5310) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %5312 = "tfl.pseudo_const"() {value = dense<[1, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5313 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5314 = "tfl.slice"(%5306, %5312, %5313) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5315 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5316 = "tfl.transpose"(%5314, %5315) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %5317 = "tfl.pseudo_const"() {value = dense<[2, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5318 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5319 = "tfl.slice"(%5306, %5317, %5318) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5320 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5321 = "tfl.transpose"(%5319, %5320) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %5322 = "tfl.pseudo_const"() {value = dense<[3, 0, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5323 = "tfl.pseudo_const"() {value = dense<[1, 384, 32]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5324 = "tfl.slice"(%5306, %5322, %5323) : (tensor<4x384x32xf32>, tensor<3xi32>, tensor<3xi32>) -> tensor<1x384x32xf32>
    %5325 = "tfl.pseudo_const"() {value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5326 = "tfl.transpose"(%5324, %5325) : (tensor<1x384x32xf32>, tensor<3xi32>) -> tensor<32x384x1xf32>
    %5327 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5328 = "tfl.reshape"(%5311, %5327) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %5329 = "tfl.fully_connected"(%5295, %5328, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %5330 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5331 = "tfl.reshape"(%5316, %5330) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %5332 = "tfl.fully_connected"(%5298, %5331, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %5333 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5334 = "tfl.reshape"(%5321, %5333) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %5335 = "tfl.fully_connected"(%5301, %5334, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %5336 = "tfl.pseudo_const"() {value = dense<[32, 384]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5337 = "tfl.reshape"(%5326, %5336) : (tensor<32x384x1xf32>, tensor<2xi32>) -> tensor<32x384xf32>
    %5338 = "tfl.fully_connected"(%5304, %5337, %314) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x384xf32>, tensor<32x384xf32>, tensor<32xf32>) -> tensor<384x32xf32>
    %5339 = "tfl.pack"(%5329, %5332, %5335, %5338) {axis = 0 : i32, values_count = 4 : i32} : (tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>, tensor<384x32xf32>) -> tensor<4x384x32xf32>
    %5340 = "tfl.pseudo_const"() {value = dense<[1, 0, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5341 = "tfl.transpose"(%5339, %5340) : (tensor<4x384x32xf32>, tensor<3xi32>) -> tensor<384x4x32xf32>
    %5342 = "tfl.pseudo_const"() {value = dense<[1, 384, 4, 32]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5343 = "tfl.reshape"(%5341, %5342) : (tensor<384x4x32xf32>, tensor<4xi32>) -> tensor<1x384x4x32xf32>
    %5344 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x128xf32>} : () -> tensor<128x128xf32>
    %5345 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5346 = "tfl.fully_connected"(%5343, %5344, %5345) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x4x32xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5347 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5348 = "tfl.reshape"(%5346, %5347) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5349 = tfl.add %5348, %5208 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5350 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5351 = "tfl.mul"(%5349, %5350) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5352 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5353 = "tfl.add"(%5351, %5352) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5354 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5355 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5356 = "tfl.fully_connected"(%5353, %5354, %5355) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5357 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5358 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5359 = "tfl.fully_connected"(%5356, %5357, %5358) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5360 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5361 = "tfl.reshape"(%5359, %5360) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5362 = tfl.add %5361, %5353 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5363 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5364 = "tfl.mul"(%5362, %5363) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5365 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5366 = "tfl.add"(%5364, %5365) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5367 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5368 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5369 = "tfl.fully_connected"(%5366, %5367, %5368) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5370 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5371 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5372 = "tfl.fully_connected"(%5369, %5370, %5371) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5373 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5374 = "tfl.reshape"(%5372, %5373) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5375 = tfl.add %5374, %5366 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5376 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5377 = "tfl.mul"(%5375, %5376) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5378 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5379 = "tfl.add"(%5377, %5378) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5380 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5381 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5382 = "tfl.fully_connected"(%5379, %5380, %5381) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5383 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5384 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5385 = "tfl.fully_connected"(%5382, %5383, %5384) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5386 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5387 = "tfl.reshape"(%5385, %5386) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5388 = tfl.add %5387, %5379 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5389 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5390 = "tfl.mul"(%5388, %5389) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5391 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5392 = "tfl.add"(%5390, %5391) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5393 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5394 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5395 = "tfl.fully_connected"(%5392, %5393, %5394) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5396 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128x512xf32>} : () -> tensor<128x512xf32>
    %5397 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5398 = "tfl.fully_connected"(%5395, %5396, %5397) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<384x512xf32>, tensor<128x512xf32>, tensor<128xf32>) -> tensor<384x128xf32>
    %5399 = "tfl.pseudo_const"() {value = dense<[1, 384, 128]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5400 = "tfl.reshape"(%5398, %5399) : (tensor<384x128xf32>, tensor<3xi32>) -> tensor<1x384x128xf32>
    %5401 = tfl.add %5400, %5392 {fused_activation_function = "NONE"} : tensor<1x384x128xf32>
    %5402 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5403 = "tfl.mul"(%5401, %5402) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5404 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<128xf32>} : () -> tensor<128xf32>
    %5405 = "tfl.add"(%5403, %5404) {fused_activation_function = "NONE"} : (tensor<1x384x128xf32>, tensor<128xf32>) -> tensor<1x384x128xf32>
    %5406 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512x128xf32>} : () -> tensor<512x128xf32>
    %5407 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5408 = "tfl.fully_connected"(%5405, %5406, %5407) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x128xf32>, tensor<512x128xf32>, tensor<512xf32>) -> tensor<384x512xf32>
    %5409 = "tfl.pseudo_const"() {value = dense<[1, 384, 512]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5410 = "tfl.reshape"(%5408, %5409) : (tensor<384x512xf32>, tensor<3xi32>) -> tensor<1x384x512xf32>
    %5411 = tfl.add %5410, %5197 {fused_activation_function = "NONE"} : tensor<1x384x512xf32>
    %5412 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5413 = "tfl.mul"(%5411, %5412) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %5414 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<512xf32>} : () -> tensor<512xf32>
    %5415 = "tfl.add"(%5413, %5414) {fused_activation_function = "NONE"} : (tensor<1x384x512xf32>, tensor<512xf32>) -> tensor<1x384x512xf32>
    %5416 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<2x512xf32>} : () -> tensor<2x512xf32>
    %5417 = "tfl.pseudo_const"() {value = dense<[0.0158917457, 0.0135550713]> : tensor<2xf32>} : () -> tensor<2xf32>
    %5418 = "tfl.fully_connected"(%5415, %5416, %5417) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x384x512xf32>, tensor<2x512xf32>, tensor<2xf32>) -> tensor<384x2xf32>
    %5419 = "tfl.pseudo_const"() {value = dense<[1, 0]> : tensor<2xi32>} : () -> tensor<2xi32>
    %5420 = "tfl.transpose"(%5418, %5419) : (tensor<384x2xf32>, tensor<2xi32>) -> tensor<2x384xf32>
    %5421 = "tfl.pseudo_const"() {value = dense<[2, 1, 384]> : tensor<3xi32>} : () -> tensor<3xi32>
    %5422 = "tfl.reshape"(%5420, %5421) : (tensor<2x384xf32>, tensor<3xi32>) -> tensor<2x1x384xf32>
    %5423:2 = "tfl.unpack"(%5422) {axis = 0 : i32, num = 2 : i32} : (tensor<2x1x384xf32>) -> (tensor<1x384xf32>, tensor<1x384xf32>)
    return %5423#1, %5423#0 : tensor<1x384xf32>, tensor<1x384xf32>
  }
}