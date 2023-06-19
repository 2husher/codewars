func isTriangleNumber(_ number: Int) -> Bool {
  guard number != 0 else { return true }
  guard number != 1 else { return true }
  var sum = 0
  for i in 1 ..< number {
    sum = i * (i + 1) / 2
    if sum >= number { break }
  }
  return sum == number
}
