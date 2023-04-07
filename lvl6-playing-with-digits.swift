func digPow(for number: Int, using power: Int) -> Int {
  let arr = String(number).map { Int(String($0))! }.enumerated()
  let sum = arr.map { Int(pow(Double($0.1), Double(power + $0.0))) }.reduce(0, +)
  return sum % number == 0 ? sum / number : -1
}
 