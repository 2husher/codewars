func stackHeight2D(_ layers: Int) -> Double {
  layers == 0 ? 0 : sqrt(0.75) * Double(layers - 1) + 1
}
