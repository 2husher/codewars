func tribonacci(_ signature: [Int], _ n: Int) -> [Int] {
  guard n > 3 else { return Array(signature[0..<n]) }
  
  var a = Array(repeating: 0, count: n)
  a[0...2] = signature[0...2]
  
  for i in 3..<n {
    a[i] = a[i-3] + a[i-2] + a[i-1]
  }
  return a
}
