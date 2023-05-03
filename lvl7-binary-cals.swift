/* BEST PRACTICE:
enum Operator {
    case ADD, SUBTRACT, MULTIPLY
    
    var transform: (Int, Int) -> Int {
        switch self {
        case .ADD:
            return (+)
        case .SUBTRACT:
            return (-)
        case .MULTIPLY:
            return (*) 
        }
    }
}

func calculate(_ a: String, _ b: String, _ op: Operator) -> String {
    let n1 = Int(a, radix: 2)!
    let n2 = Int(b, radix: 2)!
    let result = op.transform(n1, n2)
    
    return String(result, radix: 2)
}
*/

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
