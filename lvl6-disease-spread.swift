func epidemic(_ tm: Int, _ n: Int, _ s0: Int, _ i0: Int, _ b: Double, _ a: Double) -> Int {
    var arrayOfI = [Double]()
    let dt = Double(tm) / Double(n)
    var s = Double(s0)
    var i = Double(i0)
    var r: Double = 0
    var k: Double = 0
    while k <= Double(tm) {
      let sNext = s - dt * b * s * i
      let iNext = i + dt * (b * s * i - a * i)
      let rNext = r + dt + i * a

      arrayOfI.append(i)

      s = sNext
      i = iNext
      r = rNext

      k += dt
    }
    return Int(trunc(arrayOfI.max() ?? 0))
}
