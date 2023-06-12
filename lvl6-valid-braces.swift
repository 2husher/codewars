import Foundation

func validBraces(_ string:String) -> Bool {
  let valid = [ ")":"(", "}":"{", "]":"[" ]
  var stack = [String]()
  let braces = Array(string)
  for brace in braces {
    let brace = String(brace)
    switch brace {
    case "(", "[", "{":
      stack.append(brace)
    case ")", "]", "}":
      if stack.isEmpty { return false }
      let prevBrace = stack.removeLast()
      if prevBrace != valid[brace] { return false }
    default:
      return false
    }
  }
  return stack.isEmpty
}
