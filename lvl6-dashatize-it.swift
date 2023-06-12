func dashatize(_ number: Int) -> String {
  var s = String(abs(number)).map { Int("\($0)")! % 2 == 1 ? "-\($0)-" : "\($0)" }.joined()
  if s.prefix(1) == "-" { s.removeFirst() }
  if s.suffix(1) == "-" { s.removeLast() }
  return s.replacingOccurrences(of: "--", with: "-")
}
