func isNarcissistic(_ n: Int64) -> Bool {
  let power = String(n).count
  let digits = String(n).map { Int64(String($0))! }
  var sum: Int64 = 0
  for digit in digits {
    sum += Array(repeating: digit, count: power).reduce(1, *)
  }
  return sum == n
}
