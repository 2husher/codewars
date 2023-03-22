func validParentheses(_ str: String) -> Bool {
//  guard !str.isEmpty else { return true }
//
//  var a = [String]()
//  for c in str {
//    if c == "(" {
//      a.append("(")
//    }
//    else if c == ")" {
//      if a.isEmpty {
//        return false
//      }
//      else {
//        a.removeLast()
//      }
//    }
//  }
//  return a.isEmpty

  var sum = 0
  for c in str {
    sum += (c == "(") ? 1 : -1
    if sum < 0 { return false }
  }
  return sum == 0
}
