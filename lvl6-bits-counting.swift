func countBits(_ n: Int) -> Int {
  // BEST PRACTICE: 
  // n.nonzeroBitCount
  String(n, radix: 2).filter { $0 == "1" }.count
}
