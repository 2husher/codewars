func maxBall(_ v0: Int) -> Int {
  let v = Double(v0) / 3.6
  var n = 1
  var h = 0.0
  while true {
    let t = 0.1 * Double(n)
    let hNext = v * t - 0.5 * 9.81 * t * t
    if hNext < h { return n - 1 }
    h = hNext
    n += 1
  }
}
