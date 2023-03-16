// LEVEL 7: Moves in squared strings (I)

// s.split(separator: "\n") // returns array of substring
// s.components(separatedBy: "\n").map{ (component) in String(component.reversed()) } // long variant
// s.components(separatedBy: "\n").map { "\($0.reversed())" } // returns reversed collection

func horMirror(_ s: String) -> String {
  s.components(separatedBy: "\n").reversed().joined(separator: "\n")
}
func vertMirror(_ s: String) -> String {
  s.components(separatedBy: "\n").map { String($0.reversed()) }.joined(separator: "\n")
}
func oper(_ mirror: (String) -> String, _ s: String) -> String {
  mirror(s)
}
