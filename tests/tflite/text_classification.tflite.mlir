

module attributes {tfl.description = "TOCO Converted.", tfl.schema_version = 3 : i32} {
  func @main(%arg0: tensor<1x256xf32>) -> tensor<1x2xf32> attributes {tf.entry_function = {inputs = "embedding_input", outputs = "dense_1/Softmax"}} {
    %0 = "quant.stats"(%arg0) {layerStats = dense<[0.000000e+00, 2.550000e+02]> : tensor<2xf32>} : (tensor<1x256xf32>) -> tensor<1x256xf32>
    %1 = "tfl.cast"(%0) : (tensor<1x256xf32>) -> tensor<1x256xi32>
    %2 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<10000x16xf32>} : () -> tensor<10000x16xf32>
    %3 = "tfl.gather"(%2, %1) {axis = 0 : i32} : (tensor<10000x16xf32>, tensor<1x256xi32>) -> tensor<1x256x16xf32>
    %4 = "tfl.pseudo_const"() {value = dense<1> : tensor<i32>} : () -> tensor<i32>
    %5 = "tfl.mean"(%3, %4) {keep_dims = false} : (tensor<1x256x16xf32>, tensor<i32>) -> tensor<1x16xf32>
    %6 = "tfl.pseudo_const"() {value = dense<"hex_value_removed_for_legibility_this_model_will_not_run_correctly_without_it"> : tensor<16x16xf32>} : () -> tensor<16x16xf32>
    %7 = "tfl.pseudo_const"() {value = dense<[0.202190831, 0.196290389, -0.0122557431, 0.137540683, -0.0085774241, 0.272950053, -0.0222802889, 0.188007757, 0.231972501, -0.0123254592, 0.137810275, 0.133474976, 0.167213172, 0.181732759, 0.1778927, 0.199312195]> : tensor<16xf32>} : () -> tensor<16xf32>
    %8 = "tfl.fully_connected"(%5, %6, %7) {fused_activation_function = "RELU", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x16xf32>, tensor<16x16xf32>, tensor<16xf32>) -> tensor<1x16xf32>
    %9 = "tfl.pseudo_const"() {value = dense<[[1.13068867, 1.17499471, -0.177602962, -1.20010734, 0.518027186, 0.374945372, -4.198870e-03, 1.24878323, -1.20709479, -0.045450937, -6.226800e-01, 1.11114717, -0.717226863, -0.819159865, 1.11706734, 1.28012192], [-0.803017139, -0.761088371, -0.436251342, 1.16765094, 0.292282283, -1.0967257, -0.12370833, -0.264452964, 0.41047886, 0.304812104, 1.35609293, -0.646377444, 1.00838923, 1.15994132, -0.836824059, -6.044190e-01]]> : tensor<2x16xf32>} : () -> tensor<2x16xf32>
    %10 = "tfl.pseudo_const"() {value = dense<[-0.00448626466, 0.00448626373]> : tensor<2xf32>} : () -> tensor<2xf32>
    %11 = "tfl.fully_connected"(%8, %9, %10) {fused_activation_function = "NONE", keep_num_dims = false, weights_format = "DEFAULT"} : (tensor<1x16xf32>, tensor<2x16xf32>, tensor<2xf32>) -> tensor<1x2xf32>
    %12 = "tfl.softmax"(%11) {beta = 1.000000e+00 : f32} : (tensor<1x2xf32>) -> tensor<1x2xf32>
    return %12 : tensor<1x2xf32>
  }
}