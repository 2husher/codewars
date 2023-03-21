func printerError(_ s: String) -> String {
  // BEST PRACTICE:
  // s.filter { $0 > "m" }
  
  "\(s.filter { ("n"..."z").contains(String($0)) }.count)/\(s.count)"
}
