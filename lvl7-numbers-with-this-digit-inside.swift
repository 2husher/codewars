func numbersWithDigitInside(_ x: Int64, _ d: Int64) -> [Int64] {
  
  // BEST PRACTICE:
  // let numbers = (1...x).filter {String($0).contains(String(d))}
  // typealias Long = Int64
  
  let numbers =
  (1 ... x)
    .map { String($0) }
    .filter { $0.contains(String(d)) }
    .map { Int($0) ?? 0 }
  return [
    Int64(numbers.count),
    Int64(numbers.reduce(0, +)),
    Int64(numbers.isEmpty ? 0 : numbers.reduce(1, *))]
}
