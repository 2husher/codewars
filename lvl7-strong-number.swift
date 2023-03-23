unc strongNumber(_ number: Int) -> String {
  func fac(_ n: Int) -> Int {
    if n == 0 { return 1 }
//    var product = 1
//    for i in 1...n {
//      product *= i
//    }
//    return product
    return (1 ... n).reduce(1, *)
  }
  
  let a: [Int] = String(number).map { fac(Int(String($0)) ?? 0) }
  return a.reduce(0, +) == number ? "STRONG!!!!" : "Not Strong !!"
}
