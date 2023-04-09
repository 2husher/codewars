func digitalRoot(of number: Int) -> Int {
  // BEST SOLUTION:
  // return digit > 9 ? digitalRoot(of: digit) : digit
  
  if number < 10 { return number }
  
  let sum = String(number).map { Int(String($0))! }.reduce(0, +)
  return digitalRoot(of: sum)
}
