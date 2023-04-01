func squareDigits(_ num: Int) -> Int {
//  BEST PRACTICE:
//  Int(String(num).compactMap() { String(Int(pow(Double(String($0))!, 2))) }.joined())!
//  Int(String(num).compactMap { Int(String($0)) }.compactMap { String($0 * $0) }.joined()) ?? 0
  
  return Int(String(num).map { char in
    let num = Int(String(char)) ?? 0
    return String(num * num)
  }.joined()) ?? 0
}
