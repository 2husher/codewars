enum Operator {
    case ADD, SUBTRACT, MULTIPLY
}

func decimalFromBits(_ str: String) -> Int {
  let a = Array(str)
  .compactMap { Double(String($0)) }
  .enumerated()
  .reduce(0){ acc, nxt in
    acc + nxt.1 * pow(2, Double(str.count - nxt.0 - 1))
  }
  return Int(a)
}

func bitsFromDecimal(_ d: Int) -> String {
  var decimal = d
  var bitsOutpus = ""
  while decimal != 0 {
    bitsOutpus = String(decimal % 2) + bitsOutpus
    decimal = decimal / 2
  }
  return bitsOutpus
}
