#map0 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4 - 1, d2 + d5 - 1, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map6 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map7 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map8 = affine_map<(d0, d1) -> (d0, 0)>
#map9 = affine_map<(d0, d1) -> (d0, d1)>
#set0 = affine_set<(d0, d1, d2, d3, d4, d5) : (d4 >= 0, -d4 + 1 >= 0, d5 >= 0, -d5 + 1 >= 0)>
module {
  func @mnist_cnn(%arg0: tensor<100xf32>, %arg1: tensor<128x100xf32>, %arg2: tensor<128xf32>, %arg3: tensor<12100x128xf32>, %arg4: tensor<64xf32>, %arg5: tensor<3x3x32x64xf32>, %arg6: tensor<32xf32>, %arg7: tensor<3x3x1x32xf32>, %arg8: tensor<1x224x224x1xf32>) -> tensor<1x100xf32> {
    %c12100 = tile.constant 12100
    %cst = "eltwise.sconst"() {value = 0.000000e+00 : f64} : () -> f32
    %c1 = "eltwise.sconst"() {value = 1 : i64} : () -> si32
    %0 = tile.contract add, mul, %cst, %arg8, %arg7 {sink = #map0, srcs = [#map1, #map2]} : f32, tensor<1x224x224x1xf32>, tensor<3x3x1x32xf32> -> tensor<1x222x222x32xf32>
    %1 = "eltwise.add"(%0, %arg6) : (tensor<1x222x222x32xf32>, tensor<32xf32>) -> tensor<1x222x222x32xf32>
    %2 = "eltwise.cmp_lt"(%1, %cst) : (tensor<1x222x222x32xf32>, f32) -> tensor<1x222x222x32xi1>
    %3 = "eltwise.select"(%2, %cst, %1) : (tensor<1x222x222x32xi1>, f32, tensor<1x222x222x32xf32>) -> tensor<1x222x222x32xf32>
    %4 = tile.contract add, mul, %cst, %3, %arg5 {sink = #map0, srcs = [#map1, #map2]} : f32, tensor<1x222x222x32xf32>, tensor<3x3x32x64xf32> -> tensor<1x220x220x64xf32>
    %5 = "eltwise.add"(%4, %arg4) : (tensor<1x220x220x64xf32>, tensor<64xf32>) -> tensor<1x220x220x64xf32>
    %6 = "eltwise.cmp_lt"(%5, %cst) : (tensor<1x220x220x64xf32>, f32) -> tensor<1x220x220x64xi1>
    %7 = "eltwise.select"(%6, %cst, %5) : (tensor<1x220x220x64xi1>, f32, tensor<1x220x220x64xf32>) -> tensor<1x220x220x64xf32>
    %8 = tile.contract max, none, %cst, %7 {cons = #set0, sink = #map3, srcs = [#map4]} : f32, tensor<1x220x220x64xf32> -> tensor<1x110x110x64xf32>
    %9 = "tile.reshape"(%8, %c1, %c12100) : (tensor<1x110x110x64xf32>, si32, index) -> tensor<1x12100xf32>
    %10 = tile.contract add, mul, %cst, %9, %arg3 {sink = #map5, srcs = [#map6, #map7]} : f32, tensor<1x12100xf32>, tensor<12100x128xf32> -> tensor<1x128xf32>
    %11 = "eltwise.add"(%10, %arg2) : (tensor<1x128xf32>, tensor<128xf32>) -> tensor<1x128xf32>
    %12 = "eltwise.cmp_lt"(%11, %cst) : (tensor<1x128xf32>, f32) -> tensor<1x128xi1>
    %13 = "eltwise.select"(%12, %cst, %11) : (tensor<1x128xi1>, f32, tensor<1x128xf32>) -> tensor<1x128xf32>
    %14 = tile.contract add, mul, %cst, %13, %arg1 {sink = #map5, srcs = [#map6, #map7]} : f32, tensor<1x128xf32>, tensor<128x100xf32> -> tensor<1x100xf32>
    %15 = "eltwise.add"(%14, %arg0) : (tensor<1x100xf32>, tensor<100xf32>) -> tensor<1x100xf32>
    %16 = tile.contract max, none, %cst, %15 {sink = #map8, srcs = [#map9]} : f32, tensor<1x100xf32> -> tensor<1x1xf32>
    %17 = "eltwise.sub"(%15, %16) : (tensor<1x100xf32>, tensor<1x1xf32>) -> tensor<1x100xf32>
    %18 = "eltwise.exp"(%17) : (tensor<1x100xf32>) -> tensor<1x100xf32>
    %19 = tile.contract add, none, %cst, %18 {sink = #map8, srcs = [#map9]} : f32, tensor<1x100xf32> -> tensor<1x1xf32>
    %20 = "eltwise.div"(%18, %19) : (tensor<1x100xf32>, tensor<1x1xf32>) -> tensor<1x100xf32>
    return %20 : tensor<1x100xf32>
  }
}

module {
  func @arg_max(%arg0: f32, %arg1: tensor<1x10x10xf32>) -> tensor<1x10xui32> {
    %cst = "eltwise.sconst"() {value = 0.000000e+00 : f64} : () -> f32
    %0 = tile.contract assign, none, %cst, %arg0 {sink = #map0, srcs = [#map1]} : f32, f32 -> tensor<10xf32>
    %1 = "tile.index"(%0) {dim = 0 : i64} : (tensor<10xf32>) -> tensor<10xsi32>
    %2 = tile.contract max, none, %cst, %arg1 {sink = #map2, srcs = [#map3]} : f32, tensor<1x10x10xf32> -> tensor<1x10xf32>
    %3 = tile.contract max, cond, %cst, %arg1, %2, %1 {sink = #map2, srcs = [#map3, #map2, #map4]} : f32, tensor<1x10x10xf32>, tensor<1x10xf32>, tensor<10xsi32> -> tensor<1x10xsi32>
    %4 = "eltwise.cast"(%3) : (tensor<1x10xsi32>) -> tensor<1x10xui32>
    return %4 : tensor<1x10xui32>
  }
}