

module attributes {tfl.description = "TOCO Converted.", tfl.schema_version = 3 : i32} {
  func @main(%arg0: tensor<1x384x384x3xf32>, %arg1: tensor<1x1x1x100xf32>) -> tensor<1x384x384x3xf32> attributes {tf.entry_function = {inputs = "content_image,mobilenet_conv/Conv/BiasAdd", outputs = "transformer/expand/conv3/conv/Sigmoid"}} {
    %0 = "quant.stats"(%arg0) {layerStats = dense<[0.000000e+00, 2.550000e+02]> : tensor<2xf32>} : (tensor<1x384x384x3xf32>) -> tensor<1x384x384x3xf32>
    %1 = "quant.stats"(%arg1) {layerStats = dense<[0.000000e+00, 2.550000e+02]> : tensor<2xf32>} : (tensor<1x1x1x100xf32>) -> tensor<1x1x1x100xf32>
    %2 = "tfl.pseudo_const"() {value = dense<[[0, 0], [4, 4], [4, 4], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %3 = "tfl.mirror_pad"(%0, %2) {mode = "REFLECT"} : (tensor<1x384x384x3xf32>, tensor<4x2xi32>) -> tensor<1x392x392x3xf32>
    %4 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<8x9x9x3xf16>} : () -> tensor<8x9x9x3xf16>
    %5 = "tfl.dequantize"(%4) : (tensor<8x9x9x3xf16>) -> tensor<8x9x9x3xf32>
    %6 = "tfl.pseudo_const"() {value = dense<[1.139650e+00, 1.200200e+00, -9.624020e-01, 1.521000e-01, 3.063960e-01, -1.085940e+00, 3.742680e-01, 1.035160e+00]> : tensor<8xf16>} : () -> tensor<8xf16>
    %7 = "tfl.dequantize"(%6) : (tensor<8xf16>) -> tensor<8xf32>
    %8 = "tfl.conv_2d"(%3, %5, %7) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "RELU", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x392x392x3xf32>, tensor<8x9x9x3xf32>, tensor<8xf32>) -> tensor<1x384x384x8xf32>
    %9 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %10 = "tfl.mirror_pad"(%8, %9) {mode = "REFLECT"} : (tensor<1x384x384x8xf32>, tensor<4x2xi32>) -> tensor<1x386x386x8xf32>
    %11 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<16x3x3x8xf16>} : () -> tensor<16x3x3x8xf16>
    %12 = "tfl.dequantize"(%11) : (tensor<16x3x3x8xf16>) -> tensor<16x3x3x8xf32>
    %13 = "tfl.pseudo_const"() {value = dense<[1.968990e-01, -2.102050e-01, 4.716800e-01, -4.382320e-01, 1.095700e+00, -6.191400e-01, -1.115720e-01, 5.346680e-01, 1.906250e+00, -1.120610e-01, 1.539310e-01, 3.347170e-01, 6.733400e-01, 2.049560e-01, 1.291020e+00, -1.693360e+00]> : tensor<16xf16>} : () -> tensor<16xf16>
    %14 = "tfl.dequantize"(%13) : (tensor<16xf16>) -> tensor<16xf32>
    %15 = "tfl.conv_2d"(%10, %12, %14) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "RELU", padding = "VALID", stride_h = 2 : i32, stride_w = 2 : i32} : (tensor<1x386x386x8xf32>, tensor<16x3x3x8xf32>, tensor<16xf32>) -> tensor<1x192x192x16xf32>
    %16 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %17 = "tfl.mirror_pad"(%15, %16) {mode = "REFLECT"} : (tensor<1x192x192x16xf32>, tensor<4x2xi32>) -> tensor<1x194x194x16xf32>
    %18 = "tfl.pseudo_const"() {value = dense<[1.475830e-01, 3.718260e-01, 1.004880e+00, 3.264160e-01, 6.235350e-01, 9.599600e-01, 4.990230e-01, -9.173580e-02, 8.652340e-01, 4.775390e-01, 2.262880e-02, 8.090820e-01, 8.437500e-01, -1.593020e-01, -4.934080e-01, 7.016600e-01, -1.000980e-02, 5.375980e-01, 7.285150e-01, 1.285400e-01, 2.203370e-01, 4.699710e-01, 5.800780e-01, 1.078490e-01, 3.347170e-01, 3.041990e-01, 4.160160e-01, -1.925050e-01, 1.484380e-01, -3.039550e-01, 5.327150e-01, 6.430660e-01]> : tensor<32xf16>} : () -> tensor<32xf16>
    %19 = "tfl.dequantize"(%18) : (tensor<32xf16>) -> tensor<32xf32>
    %20 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x16xf16>} : () -> tensor<32x3x3x16xf16>
    %21 = "tfl.dequantize"(%20) : (tensor<32x3x3x16xf16>) -> tensor<32x3x3x16xf32>
    %22 = "tfl.conv_2d"(%17, %21, %19) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "RELU", padding = "VALID", stride_h = 2 : i32, stride_w = 2 : i32} : (tensor<1x194x194x16xf32>, tensor<32x3x3x16xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %23 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %24 = "tfl.mirror_pad"(%22, %23) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %25 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %26 = "tfl.dequantize"(%25) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %27 = "tfl.pseudo_const"() {value = dense<0.000000e+00> : tensor<32xf16>} : () -> tensor<32xf16>
    %28 = "tfl.dequantize"(%27) : (tensor<32xf16>) -> tensor<32xf32>
    %29 = "tfl.conv_2d"(%24, %26, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %30 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %31 = "tfl.mean"(%29, %30) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %32 = "tfl.squared_difference"(%29, %31) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %33 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %34 = "tfl.mean"(%32, %33) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %35 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %36 = "tfl.dequantize"(%35) : (tensor<f16>) -> tensor<*xf32>
    %37 = "tfl.add"(%34, %36) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %38 = "tfl.rsqrt"(%37) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %39 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %40 = "tfl.dequantize"(%39) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %41 = "tfl.pseudo_const"() {value = dense<[1.001740e-02, 2.532960e-02, 3.231810e-02, 2.763370e-02, 4.400630e-02, 3.019710e-02, -1.140590e-02, -1.082610e-02, 4.849240e-02, 2.345280e-02, 1.366420e-02, 1.895140e-02, 7.275390e-02, 1.811520e-01, 4.891970e-02, 7.977290e-02, 6.951900e-02, -4.383090e-03, 1.896670e-02, 5.960080e-02, 2.407070e-03, 2.941890e-01, 5.599980e-02, 1.589970e-02, 1.980590e-02, 2.989200e-02, 3.527830e-02, 2.207950e-02, 9.262080e-03, 3.518680e-02, 4.537960e-02, 2.105710e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %42 = "tfl.dequantize"(%41) : (tensor<32xf16>) -> tensor<32xf32>
    %43 = "tfl.conv_2d"(%1, %40, %42) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %44 = "tfl.pseudo_const"() {value = dense<[-5.191040e-02, 6.694790e-03, 1.872250e-02, -8.216850e-03, -1.933290e-02, 2.973940e-02, -5.397800e-03, -4.455570e-02, -3.268430e-02, 1.071930e-02, 2.359390e-03, 1.991270e-02, 3.262330e-02, -4.116820e-02, 2.674870e-02, 3.503420e-02, -2.323910e-02, 2.728270e-02, -2.086640e-03, -1.369480e-02, 6.927490e-03, 2.201840e-02, 1.308440e-02, -1.617430e-02, 2.297970e-02, 1.959230e-02, 1.724240e-02, 1.898190e-02, -3.637700e-02, 1.475520e-02, -2.610780e-02, 3.872680e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %45 = "tfl.dequantize"(%44) : (tensor<32xf16>) -> tensor<32xf32>
    %46 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %47 = "tfl.dequantize"(%46) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %48 = "tfl.conv_2d"(%1, %47, %45) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %49 = "tfl.pseudo_const"() {value = dense<[-9.834280e-03, -3.134160e-02, -1.407620e-02, 8.187290e-04, 3.625490e-02, 1.644900e-02, -9.338370e-03, -1.896670e-02, -1.063540e-02, 2.066040e-02, -5.035400e-03, -1.951600e-02, -9.368890e-03, 1.167300e-02, 3.259660e-03, 2.267460e-02, -1.531220e-02, -1.795960e-02, -2.052310e-02, 4.215240e-03, 1.960750e-02, 7.028580e-04, -5.064010e-04, 3.551480e-03, 1.232150e-03, -6.698610e-03, -2.085880e-02, 2.610780e-02, -6.092070e-03, -2.175900e-02, -3.004460e-02, 1.065060e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %50 = "tfl.dequantize"(%49) : (tensor<32xf16>) -> tensor<32xf32>
    %51 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %52 = "tfl.dequantize"(%51) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %53 = "tfl.conv_2d"(%1, %52, %50) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %54 = "tfl.pseudo_const"() {value = dense<[4.440310e-02, -1.219750e-03, -3.759770e-02, -6.161500e-02, 1.327510e-02, 2.958680e-02, 1.069640e-02, -1.411440e-02, -2.479550e-02, 7.648470e-03, -2.059940e-02, -3.089900e-02, -9.025570e-03, -2.746580e-02, 1.586910e-02, -1.660160e-02, -1.864620e-02, -2.231600e-03, 1.756290e-02, 8.827200e-03, -2.426150e-02, -5.462650e-03, 5.840300e-03, 5.134580e-03, 8.039470e-04, 1.854900e-03, -3.320310e-02, 1.419830e-02, -4.947660e-03, -4.013060e-02, 5.958550e-03, -1.794430e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %55 = "tfl.dequantize"(%54) : (tensor<32xf16>) -> tensor<32xf32>
    %56 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %57 = "tfl.dequantize"(%56) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %58 = "tfl.conv_2d"(%1, %57, %55) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %59 = "tfl.pseudo_const"() {value = dense<[1.038820e-01, 3.375240e-02, -1.698490e-03, 2.746580e-02, 3.698730e-02, 9.106440e-02, 2.629090e-02, 1.663210e-02, -2.049260e-02, 5.346680e-02, 1.546630e-01, 2.534480e-02, 1.432040e-02, 1.151730e-01, 1.120000e-02, 3.427120e-02, 4.150390e-02, 1.759340e-02, 2.374270e-02, 3.408810e-02, 3.958130e-02, 2.067570e-02, 6.893160e-03, 1.849370e-02, 4.656980e-02, 2.355960e-02, 4.364010e-02, 8.758540e-02, 3.555300e-02, 1.456450e-02, 2.195740e-02, 1.084900e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %60 = "tfl.dequantize"(%59) : (tensor<32xf16>) -> tensor<32xf32>
    %61 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %62 = "tfl.dequantize"(%61) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %63 = "tfl.conv_2d"(%1, %62, %60) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %64 = "tfl.pseudo_const"() {value = dense<[2.839660e-02, 2.238460e-02, -3.448490e-02, 3.711700e-03, 3.686900e-03, 4.046630e-02, -2.487180e-02, -1.431270e-02, -5.943290e-03, 1.716610e-02, 1.332090e-02, 4.061890e-02, -3.985600e-02, -2.517700e-02, 4.000850e-02, 1.416210e-03, -2.369690e-02, 3.598020e-02, 3.406520e-03, -8.743280e-03, -4.507450e-02, 1.411440e-02, 2.566530e-02, 2.276610e-02, 9.117120e-03, -1.226040e-02, -1.921080e-02, 2.320860e-02, 1.986690e-02, 2.639770e-02, -1.084900e-02, 5.227660e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %65 = "tfl.dequantize"(%64) : (tensor<32xf16>) -> tensor<32xf32>
    %66 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %67 = "tfl.dequantize"(%66) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %68 = "tfl.conv_2d"(%1, %67, %65) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %69 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %70 = "tfl.dequantize"(%69) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %71 = "tfl.pseudo_const"() {value = dense<[-1.698300e-02, 1.686100e-02, 7.614130e-03, -2.427670e-02, -1.924130e-02, 1.258850e-02, -4.231930e-06, -1.358800e-02, 2.197270e-03, -1.792910e-02, -1.298520e-02, 2.162930e-03, -9.902950e-03, 4.248050e-02, -1.702880e-02, -2.330020e-02, -1.340480e-02, -1.482010e-03, 1.085660e-02, 2.476500e-02, 2.526860e-02, 8.605950e-03, -1.358030e-03, 2.866740e-03, -1.699830e-02, 1.209970e-05, 3.248210e-03, -6.607060e-03, 2.320860e-02, 1.568600e-02, -1.576230e-02, -7.514950e-03]> : tensor<32xf16>} : () -> tensor<32xf16>
    %72 = "tfl.dequantize"(%71) : (tensor<32xf16>) -> tensor<32xf32>
    %73 = "tfl.conv_2d"(%1, %70, %72) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %74 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %75 = "tfl.dequantize"(%74) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %76 = "tfl.pseudo_const"() {value = dense<[1.921080e-02, 1.856990e-02, -4.886630e-03, -1.116940e-02, -6.759640e-03, 4.737850e-03, -3.594970e-02, -2.890010e-02, 3.771970e-02, -2.044680e-02, 1.191710e-02, 3.610230e-02, -5.062870e-02, -2.940370e-02, 3.018190e-02, 1.565550e-02, -2.746580e-02, -9.849540e-03, 9.796140e-03, 1.007080e-02, 4.596710e-03, -1.143650e-02, -3.436280e-02, 3.366090e-02, 2.761840e-02, 3.298950e-02, -2.320860e-02, -8.567810e-03, -2.014160e-03, -1.448060e-02, -2.050780e-02, 3.161620e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %77 = "tfl.dequantize"(%76) : (tensor<32xf16>) -> tensor<32xf32>
    %78 = "tfl.conv_2d"(%1, %75, %77) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %79 = "tfl.pseudo_const"() {value = dense<[-1.705930e-02, 2.198790e-02, 9.051510e-02, 1.573180e-02, 2.560420e-02, 6.023410e-03, 1.168820e-02, 9.269710e-03, 1.194760e-02, 1.544950e-02, 2.227780e-02, 3.695680e-02, 3.826900e-02, -7.236480e-03, 3.158570e-02, 5.871580e-02, 3.146360e-02, 1.248170e-02, -4.665370e-03, 9.149160e-02, 9.472650e-02, 5.386350e-02, 2.806090e-02, 3.027340e-02, 7.928470e-02, 4.605100e-02, 3.860470e-02, -2.006530e-02, 2.276610e-01, -1.151280e-02, -5.928030e-03, 1.120610e-01]> : tensor<32xf16>} : () -> tensor<32xf16>
    %80 = "tfl.dequantize"(%79) : (tensor<32xf16>) -> tensor<32xf32>
    %81 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %82 = "tfl.dequantize"(%81) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %83 = "tfl.conv_2d"(%1, %82, %80) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %84 = "tfl.pseudo_const"() {value = dense<[5.054470e-03, -7.133480e-03, -1.210780e-02, 8.422850e-03, 2.516170e-02, 1.934810e-02, -2.784730e-02, -2.037050e-02, -4.116820e-02, 1.239010e-02, -1.663210e-02, -1.271060e-02, -1.725770e-02, -1.479390e-04, 2.621460e-02, -2.612300e-02, -1.370240e-02, 2.041630e-02, -1.322170e-02, -1.490020e-02, 7.755280e-03, -3.469850e-02, -2.546690e-02, 3.038020e-02, 1.728060e-03, 1.785280e-02, -1.403810e-02, 9.651180e-03, 4.037480e-02, 6.095880e-03, 2.261350e-02, 1.008610e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %85 = "tfl.dequantize"(%84) : (tensor<32xf16>) -> tensor<32xf32>
    %86 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %87 = "tfl.dequantize"(%86) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %88 = "tfl.conv_2d"(%1, %87, %85) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %89 = "tfl.pseudo_const"() {value = dense<[8.972160e-03, 4.379270e-03, -2.180480e-02, 4.165650e-03, 1.047520e-02, -4.455570e-03, 1.063540e-02, 2.458190e-02, 1.235200e-02, 2.201840e-02, 3.599170e-03, 3.274540e-02, -2.091980e-02, -5.783080e-03, -3.219600e-03, -8.834830e-03, -1.756290e-02, 2.755740e-02, 3.997800e-03, -7.865900e-03, -3.192140e-02, 1.540370e-02, -9.475700e-03, 8.544920e-04, -1.482390e-02, -1.513670e-02, -2.554320e-02, 1.024630e-02, 6.851200e-03, 2.087400e-02, -2.188110e-02, 4.026890e-04]> : tensor<32xf16>} : () -> tensor<32xf16>
    %90 = "tfl.dequantize"(%89) : (tensor<32xf16>) -> tensor<32xf32>
    %91 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %92 = "tfl.dequantize"(%91) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %93 = "tfl.conv_2d"(%1, %92, %90) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %94 = "tfl.pseudo_const"() {value = dense<[-2.658840e-03, 9.277340e-03, -1.817320e-02, -1.081090e-02, 2.534480e-02, -1.947020e-02, 3.707890e-02, -1.345060e-02, -5.123900e-02, -1.805110e-02, 3.381350e-02, 1.435090e-02, -2.227780e-02, 6.721490e-03, -1.045230e-03, 3.903200e-02, 3.045650e-02, 1.638790e-02, -4.360680e-04, -2.470400e-02, 2.520750e-02, -2.239990e-02, 2.128600e-02, -3.561400e-02, -1.520540e-02, -1.352690e-02, -2.485660e-02, -4.196170e-02, -2.493290e-02, 1.278690e-02, -3.896710e-03, -1.710510e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %95 = "tfl.dequantize"(%94) : (tensor<32xf16>) -> tensor<32xf32>
    %96 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %97 = "tfl.dequantize"(%96) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %98 = "tfl.conv_2d"(%1, %97, %95) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %99 = "tfl.pseudo_const"() {value = dense<[4.180910e-02, 7.827750e-03, -3.566740e-03, -1.446530e-02, 5.874630e-02, -1.318360e-02, 3.298950e-02, 2.696230e-02, 1.942440e-02, 9.849540e-03, 5.447390e-02, 1.463320e-02, 1.123810e-02, 7.587430e-03, 2.653500e-02, 2.403260e-02, 4.437260e-02, 2.879330e-02, 4.074100e-02, -1.077270e-02, -1.912120e-03, 5.993650e-02, 6.919860e-03, 1.417540e-02, 4.202270e-02, 7.025150e-02, 1.416020e-02, 1.580810e-02, 9.619140e-02, 1.864620e-02, 3.512570e-02, -3.944400e-03]> : tensor<32xf16>} : () -> tensor<32xf16>
    %100 = "tfl.dequantize"(%99) : (tensor<32xf16>) -> tensor<32xf32>
    %101 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %102 = "tfl.dequantize"(%101) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %103 = "tfl.conv_2d"(%1, %102, %100) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %104 = "tfl.pseudo_const"() {value = dense<[1.361080e-02, -1.689150e-02, -1.293180e-02, -1.268770e-02, 1.044460e-02, 3.399660e-02, -3.524780e-02, 3.099060e-02, -1.498410e-02, -1.593020e-02, -4.169460e-03, -1.145940e-02, -2.226260e-02, -4.016880e-03, -2.516170e-02, -1.574710e-02, -1.974490e-02, 7.099150e-03, -2.697750e-02, -4.261020e-03, -2.009580e-02, -8.682250e-03, 2.312660e-04, 8.416170e-04, -2.093510e-02, -2.409360e-02, 2.565000e-02, -2.870180e-02, -1.319890e-02, 4.085540e-03, 8.132930e-03, -1.901250e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %105 = "tfl.dequantize"(%104) : (tensor<32xf16>) -> tensor<32xf32>
    %106 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %107 = "tfl.dequantize"(%106) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %108 = "tfl.conv_2d"(%1, %107, %105) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %109 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %110 = "tfl.dequantize"(%109) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %111 = "tfl.pseudo_const"() {value = dense<[2.316280e-02, -8.422850e-03, -1.243590e-02, -9.559630e-03, 3.472900e-02, 4.589080e-03, -3.182980e-02, -1.494410e-03, 1.788330e-02, 2.758790e-02, -2.290340e-02, -1.461030e-02, -1.370240e-02, -1.383970e-02, 1.204490e-03, 1.402280e-02, -1.014710e-02, -1.983640e-02, 4.074100e-03, -1.000210e-02, 1.247410e-02, -5.901340e-03, 1.058960e-02, -5.611420e-03, -5.897520e-03, -3.460690e-02, 1.529690e-03, -1.722720e-02, -1.394650e-02, 1.002500e-02, -9.391780e-03, 1.300050e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %112 = "tfl.dequantize"(%111) : (tensor<32xf16>) -> tensor<32xf32>
    %113 = "tfl.conv_2d"(%1, %110, %112) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %114 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %115 = "tfl.dequantize"(%114) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %116 = "tfl.pseudo_const"() {value = dense<[2.989200e-02, -2.897640e-02, 5.780030e-02, 4.193120e-02, 3.469850e-02, -1.828000e-02, -3.128050e-02, -3.967290e-03, -4.083250e-02, 2.613830e-02, 2.450560e-02, -3.274540e-02, 3.402710e-02, 4.837040e-02, -2.822880e-02, -1.617430e-02, 1.113890e-03, -5.221560e-02, -3.656010e-02, -1.287840e-02, 3.189090e-02, 7.629390e-02, 2.958680e-02, -2.890010e-02, 1.078800e-02, 4.629520e-02, -4.574580e-02, 1.698490e-03, -4.635620e-02, -1.588820e-03, -4.388430e-02, 3.848270e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %117 = "tfl.dequantize"(%116) : (tensor<32xf16>) -> tensor<32xf32>
    %118 = "tfl.conv_2d"(%1, %115, %117) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %119 = "tfl.pseudo_const"() {value = dense<[3.219600e-02, 7.209770e-03, 1.240540e-02, 7.942190e-03, 3.096010e-02, 1.091310e-01, 3.471370e-03, 3.253170e-02, 1.233670e-02, 4.547120e-02, -4.623410e-03, 8.367920e-02, 2.581790e-02, 1.956180e-02, 1.175690e-02, 1.707460e-02, 5.715940e-02, 3.256230e-02, 1.216130e-02, 1.412960e-02, -6.038670e-03, 1.182250e-01, -2.145390e-02, 1.056670e-02, 3.402710e-02, 1.171110e-02, 3.128050e-02, -1.586910e-02, 3.900530e-03, 3.616330e-02, 5.073550e-03, 4.051210e-03]> : tensor<32xf16>} : () -> tensor<32xf16>
    %120 = "tfl.dequantize"(%119) : (tensor<32xf16>) -> tensor<32xf32>
    %121 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %122 = "tfl.dequantize"(%121) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %123 = "tfl.conv_2d"(%1, %122, %120) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %124 = "tfl.pseudo_const"() {value = dense<[9.193420e-03, -1.618960e-02, -2.323910e-02, 2.343750e-02, 8.193960e-03, -1.618960e-02, 1.237490e-02, -2.203370e-02, 1.947020e-02, -1.485440e-02, 1.471710e-02, -1.968380e-02, -1.602170e-02, -4.623410e-02, -1.007080e-02, 3.942870e-02, -2.635190e-02, -1.152040e-02, 2.272030e-02, 3.109740e-02, 2.042770e-03, 1.547240e-02, -1.446530e-02, 1.684190e-03, 1.004030e-02, 2.442930e-02, -1.657490e-03, 3.381350e-02, 2.909850e-02, 3.982540e-03, 3.686520e-02, 1.062010e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %125 = "tfl.dequantize"(%124) : (tensor<32xf16>) -> tensor<32xf32>
    %126 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %127 = "tfl.dequantize"(%126) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %128 = "tfl.conv_2d"(%1, %127, %125) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %129 = "tfl.pseudo_const"() {value = dense<[-1.855470e-02, 2.552030e-03, -1.858520e-02, 9.468070e-03, 1.333240e-03, 2.041630e-02, 1.145940e-02, 4.112240e-03, -3.818510e-03, -2.012250e-03, 1.539230e-03, -1.618960e-02, -1.280980e-02, -2.889630e-03, -7.564540e-03, -2.337650e-02, -9.300230e-03, 1.028440e-02, -1.998900e-02, -5.653380e-03, -1.611330e-02, 3.717420e-03, -5.611420e-03, 1.647950e-03, -7.041930e-03, -5.081180e-03, -1.756290e-02, -1.867680e-02, 7.488250e-03, -8.178710e-03, 5.889890e-03, -8.499140e-03]> : tensor<32xf16>} : () -> tensor<32xf16>
    %130 = "tfl.dequantize"(%129) : (tensor<32xf16>) -> tensor<32xf32>
    %131 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %132 = "tfl.dequantize"(%131) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %133 = "tfl.conv_2d"(%1, %132, %130) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %134 = "tfl.pseudo_const"() {value = dense<[4.370120e-02, 2.423100e-02, -6.146240e-02, -6.207280e-02, -4.080200e-02, -5.929570e-02, 3.146360e-02, 1.436610e-02, 4.660030e-02, -5.685420e-02, 5.407710e-02, -4.724120e-02, 1.510620e-02, -4.260250e-02, -4.122920e-02, -4.769900e-02, 4.342650e-02, -3.982540e-02, -7.061770e-02, -3.634640e-02, 8.404540e-02, -3.155520e-02, 3.756710e-02, -3.283690e-02, 4.733280e-02, 2.725220e-02, -2.355960e-02, -3.842160e-02, -5.233760e-02, -3.881840e-02, 4.794310e-02, -8.612060e-02]> : tensor<32xf16>} : () -> tensor<32xf16>
    %135 = "tfl.dequantize"(%134) : (tensor<32xf16>) -> tensor<32xf32>
    %136 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x1x1x100xf16>} : () -> tensor<32x1x1x100xf16>
    %137 = "tfl.dequantize"(%136) : (tensor<32x1x1x100xf16>) -> tensor<32x1x1x100xf32>
    %138 = "tfl.conv_2d"(%1, %137, %135) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<32x1x1x100xf32>, tensor<32xf32>) -> tensor<1x1x1x32xf32>
    %139 = "tfl.pseudo_const"() {value = dense<[-5.470280e-03, 3.515630e-02, 1.641850e-02, -4.076960e-04, -5.065920e-03, 3.111270e-02, -8.079520e-03, -1.283260e-02, -2.407840e-02, -2.302550e-02, 1.681520e-02, 3.750610e-02, -7.133480e-03, 2.293400e-02, -8.186340e-03, 3.936770e-02]> : tensor<16xf16>} : () -> tensor<16xf16>
    %140 = "tfl.dequantize"(%139) : (tensor<16xf16>) -> tensor<16xf32>
    %141 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<16x1x1x100xf16>} : () -> tensor<16x1x1x100xf16>
    %142 = "tfl.dequantize"(%141) : (tensor<16x1x1x100xf16>) -> tensor<16x1x1x100xf32>
    %143 = "tfl.conv_2d"(%1, %142, %140) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<16x1x1x100xf32>, tensor<16xf32>) -> tensor<1x1x1x16xf32>
    %144 = "tfl.pseudo_const"() {value = dense<[-4.949570e-04, -5.146030e-03, -2.590940e-02, -3.564450e-02, -2.798460e-02, 9.643550e-03, -2.630620e-02, 3.028870e-02, 2.093510e-02, 2.929690e-03, 1.527400e-02, -4.782100e-02, 2.177430e-02, -2.903750e-02, 8.728020e-03, 3.864290e-03]> : tensor<16xf16>} : () -> tensor<16xf16>
    %145 = "tfl.dequantize"(%144) : (tensor<16xf16>) -> tensor<16xf32>
    %146 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<16x1x1x100xf16>} : () -> tensor<16x1x1x100xf16>
    %147 = "tfl.dequantize"(%146) : (tensor<16x1x1x100xf16>) -> tensor<16x1x1x100xf32>
    %148 = "tfl.conv_2d"(%1, %147, %145) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<16x1x1x100xf32>, tensor<16xf32>) -> tensor<1x1x1x16xf32>
    %149 = "tfl.pseudo_const"() {value = dense<[7.641600e-02, 1.222530e-01, 5.130000e-02, 1.187900e-02, 9.338370e-03, -4.531860e-03, 6.445310e-02, 8.416750e-02]> : tensor<8xf16>} : () -> tensor<8xf16>
    %150 = "tfl.dequantize"(%149) : (tensor<8xf16>) -> tensor<8xf32>
    %151 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<8x1x1x100xf16>} : () -> tensor<8x1x1x100xf16>
    %152 = "tfl.dequantize"(%151) : (tensor<8x1x1x100xf16>) -> tensor<8x1x1x100xf32>
    %153 = "tfl.conv_2d"(%1, %152, %150) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<8x1x1x100xf32>, tensor<8xf32>) -> tensor<1x1x1x8xf32>
    %154 = "tfl.pseudo_const"() {value = dense<[-2.320860e-02, 1.251220e-02, -3.070070e-02, 7.759090e-03, 2.677920e-02, -1.490780e-02, -2.499390e-02, 1.471710e-02]> : tensor<8xf16>} : () -> tensor<8xf16>
    %155 = "tfl.dequantize"(%154) : (tensor<8xf16>) -> tensor<8xf32>
    %156 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<8x1x1x100xf16>} : () -> tensor<8x1x1x100xf16>
    %157 = "tfl.dequantize"(%156) : (tensor<8x1x1x100xf16>) -> tensor<8x1x1x100xf32>
    %158 = "tfl.conv_2d"(%1, %157, %155) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<8x1x1x100xf32>, tensor<8xf32>) -> tensor<1x1x1x8xf32>
    %159 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<3x1x1x100xf16>} : () -> tensor<3x1x1x100xf16>
    %160 = "tfl.dequantize"(%159) : (tensor<3x1x1x100xf16>) -> tensor<3x1x1x100xf32>
    %161 = "tfl.pseudo_const"() {value = dense<[5.012510e-03, -1.899720e-02, 2.319340e-02]> : tensor<3xf16>} : () -> tensor<3xf16>
    %162 = "tfl.dequantize"(%161) : (tensor<3xf16>) -> tensor<3xf32>
    %163 = "tfl.conv_2d"(%1, %160, %162) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<3x1x1x100xf32>, tensor<3xf32>) -> tensor<1x1x1x3xf32>
    %164 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<3x1x1x100xf16>} : () -> tensor<3x1x1x100xf16>
    %165 = "tfl.dequantize"(%164) : (tensor<3x1x1x100xf16>) -> tensor<3x1x1x100xf32>
    %166 = "tfl.pseudo_const"() {value = dense<[1.883510e-05, 5.729670e-03, 3.753660e-03]> : tensor<3xf16>} : () -> tensor<3xf16>
    %167 = "tfl.dequantize"(%166) : (tensor<3xf16>) -> tensor<3xf32>
    %168 = "tfl.conv_2d"(%1, %165, %167) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "SAME", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x1x1x100xf32>, tensor<3x1x1x100xf32>, tensor<3xf32>) -> tensor<1x1x1x3xf32>
    %169 = tfl.mul %38, %48 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %170 = "tfl.mul"(%29, %169) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %171 = tfl.mul %31, %169 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %172 = tfl.sub %43, %171 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %173 = "tfl.add"(%170, %172) {fused_activation_function = "RELU"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %174 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %175 = "tfl.mirror_pad"(%173, %174) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %176 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %177 = "tfl.dequantize"(%176) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %178 = "tfl.conv_2d"(%175, %177, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %179 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %180 = "tfl.mean"(%178, %179) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %181 = "tfl.squared_difference"(%178, %180) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %182 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %183 = "tfl.mean"(%181, %182) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %184 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %185 = "tfl.dequantize"(%184) : (tensor<f16>) -> tensor<*xf32>
    %186 = "tfl.add"(%183, %185) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %187 = "tfl.rsqrt"(%186) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %188 = tfl.mul %187, %58 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %189 = "tfl.mul"(%178, %188) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %190 = tfl.mul %180, %188 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %191 = tfl.sub %53, %190 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %192 = "tfl.add"(%189, %191) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %193 = tfl.add %22, %192 {fused_activation_function = "NONE"} : tensor<1x96x96x32xf32>
    %194 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %195 = "tfl.mirror_pad"(%193, %194) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %196 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %197 = "tfl.dequantize"(%196) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %198 = "tfl.conv_2d"(%195, %197, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %199 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %200 = "tfl.mean"(%198, %199) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %201 = "tfl.squared_difference"(%198, %200) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %202 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %203 = "tfl.mean"(%201, %202) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %204 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %205 = "tfl.dequantize"(%204) : (tensor<f16>) -> tensor<*xf32>
    %206 = "tfl.add"(%203, %205) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %207 = "tfl.rsqrt"(%206) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %208 = tfl.mul %207, %68 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %209 = "tfl.mul"(%198, %208) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %210 = tfl.mul %200, %208 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %211 = tfl.sub %63, %210 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %212 = "tfl.add"(%209, %211) {fused_activation_function = "RELU"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %213 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %214 = "tfl.mirror_pad"(%212, %213) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %215 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %216 = "tfl.dequantize"(%215) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %217 = "tfl.conv_2d"(%214, %216, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %218 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %219 = "tfl.mean"(%217, %218) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %220 = "tfl.squared_difference"(%217, %219) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %221 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %222 = "tfl.mean"(%220, %221) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %223 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %224 = "tfl.dequantize"(%223) : (tensor<f16>) -> tensor<*xf32>
    %225 = "tfl.add"(%222, %224) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %226 = "tfl.rsqrt"(%225) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %227 = tfl.mul %226, %78 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %228 = "tfl.mul"(%217, %227) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %229 = tfl.mul %219, %227 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %230 = tfl.sub %73, %229 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %231 = "tfl.add"(%228, %230) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %232 = tfl.add %193, %231 {fused_activation_function = "NONE"} : tensor<1x96x96x32xf32>
    %233 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %234 = "tfl.mirror_pad"(%232, %233) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %235 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %236 = "tfl.dequantize"(%235) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %237 = "tfl.conv_2d"(%234, %236, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %238 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %239 = "tfl.mean"(%237, %238) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %240 = "tfl.squared_difference"(%237, %239) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %241 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %242 = "tfl.mean"(%240, %241) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %243 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %244 = "tfl.dequantize"(%243) : (tensor<f16>) -> tensor<*xf32>
    %245 = "tfl.add"(%242, %244) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %246 = "tfl.rsqrt"(%245) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %247 = tfl.mul %246, %88 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %248 = "tfl.mul"(%237, %247) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %249 = tfl.mul %239, %247 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %250 = tfl.sub %83, %249 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %251 = "tfl.add"(%248, %250) {fused_activation_function = "RELU"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %252 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %253 = "tfl.mirror_pad"(%251, %252) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %254 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %255 = "tfl.dequantize"(%254) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %256 = "tfl.conv_2d"(%253, %255, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %257 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %258 = "tfl.mean"(%256, %257) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %259 = "tfl.squared_difference"(%256, %258) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %260 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %261 = "tfl.mean"(%259, %260) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %262 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %263 = "tfl.dequantize"(%262) : (tensor<f16>) -> tensor<*xf32>
    %264 = "tfl.add"(%261, %263) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %265 = "tfl.rsqrt"(%264) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %266 = tfl.mul %265, %98 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %267 = "tfl.mul"(%256, %266) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %268 = tfl.mul %258, %266 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %269 = tfl.sub %93, %268 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %270 = "tfl.add"(%267, %269) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %271 = tfl.add %232, %270 {fused_activation_function = "NONE"} : tensor<1x96x96x32xf32>
    %272 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %273 = "tfl.mirror_pad"(%271, %272) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %274 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %275 = "tfl.dequantize"(%274) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %276 = "tfl.conv_2d"(%273, %275, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %277 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %278 = "tfl.mean"(%276, %277) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %279 = "tfl.squared_difference"(%276, %278) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %280 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %281 = "tfl.mean"(%279, %280) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %282 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %283 = "tfl.dequantize"(%282) : (tensor<f16>) -> tensor<*xf32>
    %284 = "tfl.add"(%281, %283) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %285 = "tfl.rsqrt"(%284) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %286 = tfl.mul %285, %108 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %287 = "tfl.mul"(%276, %286) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %288 = tfl.mul %278, %286 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %289 = tfl.sub %103, %288 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %290 = "tfl.add"(%287, %289) {fused_activation_function = "RELU"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %291 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %292 = "tfl.mirror_pad"(%290, %291) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %293 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %294 = "tfl.dequantize"(%293) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %295 = "tfl.conv_2d"(%292, %294, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %296 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %297 = "tfl.mean"(%295, %296) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %298 = "tfl.squared_difference"(%295, %297) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %299 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %300 = "tfl.mean"(%298, %299) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %301 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %302 = "tfl.dequantize"(%301) : (tensor<f16>) -> tensor<*xf32>
    %303 = "tfl.add"(%300, %302) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %304 = "tfl.rsqrt"(%303) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %305 = tfl.mul %304, %118 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %306 = "tfl.mul"(%295, %305) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %307 = tfl.mul %297, %305 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %308 = tfl.sub %113, %307 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %309 = "tfl.add"(%306, %308) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %310 = tfl.add %271, %309 {fused_activation_function = "NONE"} : tensor<1x96x96x32xf32>
    %311 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %312 = "tfl.mirror_pad"(%310, %311) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %313 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %314 = "tfl.dequantize"(%313) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %315 = "tfl.conv_2d"(%312, %314, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %316 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %317 = "tfl.mean"(%315, %316) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %318 = "tfl.squared_difference"(%315, %317) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %319 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %320 = "tfl.mean"(%318, %319) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %321 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %322 = "tfl.dequantize"(%321) : (tensor<f16>) -> tensor<*xf32>
    %323 = "tfl.add"(%320, %322) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %324 = "tfl.rsqrt"(%323) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %325 = tfl.mul %324, %128 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %326 = "tfl.mul"(%315, %325) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %327 = tfl.mul %317, %325 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %328 = tfl.sub %123, %327 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %329 = "tfl.add"(%326, %328) {fused_activation_function = "RELU"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %330 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %331 = "tfl.mirror_pad"(%329, %330) {mode = "REFLECT"} : (tensor<1x96x96x32xf32>, tensor<4x2xi32>) -> tensor<1x98x98x32xf32>
    %332 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<32x3x3x32xf16>} : () -> tensor<32x3x3x32xf16>
    %333 = "tfl.dequantize"(%332) : (tensor<32x3x3x32xf16>) -> tensor<32x3x3x32xf32>
    %334 = "tfl.conv_2d"(%331, %333, %28) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x98x98x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x96x96x32xf32>
    %335 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %336 = "tfl.mean"(%334, %335) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %337 = "tfl.squared_difference"(%334, %336) : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %338 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %339 = "tfl.mean"(%337, %338) {keep_dims = true} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x1x1x32xf32>
    %340 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %341 = "tfl.dequantize"(%340) : (tensor<f16>) -> tensor<*xf32>
    %342 = "tfl.add"(%339, %341) {fused_activation_function = "NONE"} : (tensor<1x1x1x32xf32>, tensor<*xf32>) -> tensor<1x1x1x32xf32>
    %343 = "tfl.rsqrt"(%342) : (tensor<1x1x1x32xf32>) -> tensor<1x1x1x32xf32>
    %344 = tfl.mul %343, %138 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %345 = "tfl.mul"(%334, %344) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %346 = tfl.mul %336, %344 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %347 = tfl.sub %133, %346 {fused_activation_function = "NONE"} : tensor<1x1x1x32xf32>
    %348 = "tfl.add"(%345, %347) {fused_activation_function = "NONE"} : (tensor<1x96x96x32xf32>, tensor<1x1x1x32xf32>) -> tensor<1x96x96x32xf32>
    %349 = tfl.add %310, %348 {fused_activation_function = "NONE"} : tensor<1x96x96x32xf32>
    %350 = "tfl.pseudo_const"() {value = dense<192> : tensor<2xi32>} : () -> tensor<2xi32>
    %351 = "tfl.resize_nearest_neighbor"(%349, %350) {align_corners = false} : (tensor<1x96x96x32xf32>, tensor<2xi32>) -> tensor<1x192x192x32xf32>
    %352 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %353 = "tfl.mirror_pad"(%351, %352) {mode = "REFLECT"} : (tensor<1x192x192x32xf32>, tensor<4x2xi32>) -> tensor<1x194x194x32xf32>
    %354 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<16x3x3x32xf16>} : () -> tensor<16x3x3x32xf16>
    %355 = "tfl.dequantize"(%354) : (tensor<16x3x3x32xf16>) -> tensor<16x3x3x32xf32>
    %356 = "tfl.pseudo_const"() {value = dense<0.000000e+00> : tensor<16xf16>} : () -> tensor<16xf16>
    %357 = "tfl.dequantize"(%356) : (tensor<16xf16>) -> tensor<16xf32>
    %358 = "tfl.conv_2d"(%353, %355, %357) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x194x194x32xf32>, tensor<16x3x3x32xf32>, tensor<16xf32>) -> tensor<1x192x192x16xf32>
    %359 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %360 = "tfl.mean"(%358, %359) {keep_dims = true} : (tensor<1x192x192x16xf32>, tensor<2xi32>) -> tensor<1x1x1x16xf32>
    %361 = "tfl.squared_difference"(%358, %360) : (tensor<1x192x192x16xf32>, tensor<1x1x1x16xf32>) -> tensor<1x192x192x16xf32>
    %362 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %363 = "tfl.mean"(%361, %362) {keep_dims = true} : (tensor<1x192x192x16xf32>, tensor<2xi32>) -> tensor<1x1x1x16xf32>
    %364 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %365 = "tfl.dequantize"(%364) : (tensor<f16>) -> tensor<*xf32>
    %366 = "tfl.add"(%363, %365) {fused_activation_function = "NONE"} : (tensor<1x1x1x16xf32>, tensor<*xf32>) -> tensor<1x1x1x16xf32>
    %367 = "tfl.rsqrt"(%366) : (tensor<1x1x1x16xf32>) -> tensor<1x1x1x16xf32>
    %368 = tfl.mul %367, %148 {fused_activation_function = "NONE"} : tensor<1x1x1x16xf32>
    %369 = "tfl.mul"(%358, %368) {fused_activation_function = "NONE"} : (tensor<1x192x192x16xf32>, tensor<1x1x1x16xf32>) -> tensor<1x192x192x16xf32>
    %370 = tfl.mul %360, %368 {fused_activation_function = "NONE"} : tensor<1x1x1x16xf32>
    %371 = tfl.sub %143, %370 {fused_activation_function = "NONE"} : tensor<1x1x1x16xf32>
    %372 = "tfl.add"(%369, %371) {fused_activation_function = "RELU"} : (tensor<1x192x192x16xf32>, tensor<1x1x1x16xf32>) -> tensor<1x192x192x16xf32>
    %373 = "tfl.pseudo_const"() {value = dense<384> : tensor<2xi32>} : () -> tensor<2xi32>
    %374 = "tfl.resize_nearest_neighbor"(%372, %373) {align_corners = false} : (tensor<1x192x192x16xf32>, tensor<2xi32>) -> tensor<1x384x384x16xf32>
    %375 = "tfl.pseudo_const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %376 = "tfl.mirror_pad"(%374, %375) {mode = "REFLECT"} : (tensor<1x384x384x16xf32>, tensor<4x2xi32>) -> tensor<1x386x386x16xf32>
    %377 = "tfl.pseudo_const"() {value = dense<0.000000e+00> : tensor<8xf16>} : () -> tensor<8xf16>
    %378 = "tfl.dequantize"(%377) : (tensor<8xf16>) -> tensor<8xf32>
    %379 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<8x3x3x16xf16>} : () -> tensor<8x3x3x16xf16>
    %380 = "tfl.dequantize"(%379) : (tensor<8x3x3x16xf16>) -> tensor<8x3x3x16xf32>
    %381 = "tfl.conv_2d"(%376, %380, %378) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x386x386x16xf32>, tensor<8x3x3x16xf32>, tensor<8xf32>) -> tensor<1x384x384x8xf32>
    %382 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %383 = "tfl.mean"(%381, %382) {keep_dims = true} : (tensor<1x384x384x8xf32>, tensor<2xi32>) -> tensor<1x1x1x8xf32>
    %384 = "tfl.squared_difference"(%381, %383) : (tensor<1x384x384x8xf32>, tensor<1x1x1x8xf32>) -> tensor<1x384x384x8xf32>
    %385 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %386 = "tfl.mean"(%384, %385) {keep_dims = true} : (tensor<1x384x384x8xf32>, tensor<2xi32>) -> tensor<1x1x1x8xf32>
    %387 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %388 = "tfl.dequantize"(%387) : (tensor<f16>) -> tensor<*xf32>
    %389 = "tfl.add"(%386, %388) {fused_activation_function = "NONE"} : (tensor<1x1x1x8xf32>, tensor<*xf32>) -> tensor<1x1x1x8xf32>
    %390 = "tfl.rsqrt"(%389) : (tensor<1x1x1x8xf32>) -> tensor<1x1x1x8xf32>
    %391 = tfl.mul %390, %158 {fused_activation_function = "NONE"} : tensor<1x1x1x8xf32>
    %392 = "tfl.mul"(%381, %391) {fused_activation_function = "NONE"} : (tensor<1x384x384x8xf32>, tensor<1x1x1x8xf32>) -> tensor<1x384x384x8xf32>
    %393 = tfl.mul %383, %391 {fused_activation_function = "NONE"} : tensor<1x1x1x8xf32>
    %394 = tfl.sub %153, %393 {fused_activation_function = "NONE"} : tensor<1x1x1x8xf32>
    %395 = "tfl.add"(%392, %394) {fused_activation_function = "RELU"} : (tensor<1x384x384x8xf32>, tensor<1x1x1x8xf32>) -> tensor<1x384x384x8xf32>
    %396 = "tfl.pseudo_const"() {value = dense<384> : tensor<2xi32>} : () -> tensor<2xi32>
    %397 = "tfl.resize_nearest_neighbor"(%395, %396) {align_corners = false} : (tensor<1x384x384x8xf32>, tensor<2xi32>) -> tensor<1x384x384x8xf32>
    %398 = "tfl.pseudo_const"() {value = dense<[[0, 0], [4, 4], [4, 4], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %399 = "tfl.mirror_pad"(%397, %398) {mode = "REFLECT"} : (tensor<1x384x384x8xf32>, tensor<4x2xi32>) -> tensor<1x392x392x8xf32>
    %400 = "tfl.pseudo_const"() {value = dense<0.000000e+00> : tensor<3xf16>} : () -> tensor<3xf16>
    %401 = "tfl.dequantize"(%400) : (tensor<3xf16>) -> tensor<3xf32>
    %402 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<3x9x9x8xf16>} : () -> tensor<3x9x9x8xf16>
    %403 = "tfl.dequantize"(%402) : (tensor<3x9x9x8xf16>) -> tensor<3x9x9x8xf32>
    %404 = "tfl.conv_2d"(%399, %403, %401) {dilation_h_factor = 1 : i32, dilation_w_factor = 1 : i32, fused_activation_function = "NONE", padding = "VALID", stride_h = 1 : i32, stride_w = 1 : i32} : (tensor<1x392x392x8xf32>, tensor<3x9x9x8xf32>, tensor<3xf32>) -> tensor<1x384x384x3xf32>
    %405 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %406 = "tfl.mean"(%404, %405) {keep_dims = true} : (tensor<1x384x384x3xf32>, tensor<2xi32>) -> tensor<1x1x1x3xf32>
    %407 = "tfl.squared_difference"(%404, %406) : (tensor<1x384x384x3xf32>, tensor<1x1x1x3xf32>) -> tensor<1x384x384x3xf32>
    %408 = "tfl.pseudo_const"() {value = dense<[1, 2]> : tensor<2xi32>} : () -> tensor<2xi32>
    %409 = "tfl.mean"(%407, %408) {keep_dims = true} : (tensor<1x384x384x3xf32>, tensor<2xi32>) -> tensor<1x1x1x3xf32>
    %410 = "tfl.pseudo_const"() {value = dense<1.001360e-05> : tensor<f16>} : () -> tensor<f16>
    %411 = "tfl.dequantize"(%410) : (tensor<f16>) -> tensor<*xf32>
    %412 = "tfl.add"(%409, %411) {fused_activation_function = "NONE"} : (tensor<1x1x1x3xf32>, tensor<*xf32>) -> tensor<1x1x1x3xf32>
    %413 = "tfl.rsqrt"(%412) : (tensor<1x1x1x3xf32>) -> tensor<1x1x1x3xf32>
    %414 = tfl.mul %413, %168 {fused_activation_function = "NONE"} : tensor<1x1x1x3xf32>
    %415 = "tfl.mul"(%404, %414) {fused_activation_function = "NONE"} : (tensor<1x384x384x3xf32>, tensor<1x1x1x3xf32>) -> tensor<1x384x384x3xf32>
    %416 = tfl.mul %406, %414 {fused_activation_function = "NONE"} : tensor<1x1x1x3xf32>
    %417 = tfl.sub %163, %416 {fused_activation_function = "NONE"} : tensor<1x1x1x3xf32>
    %418 = "tfl.add"(%415, %417) {fused_activation_function = "NONE"} : (tensor<1x384x384x3xf32>, tensor<1x1x1x3xf32>) -> tensor<1x384x384x3xf32>
    %419 = "tfl.logistic"(%418) : (tensor<1x384x384x3xf32>) -> tensor<1x384x384x3xf32>
    return %419 : tensor<1x384x384x3xf32>
  }
}