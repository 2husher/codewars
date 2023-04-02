func countArare(_ n: Int) -> String {
  // BEST PRACTICE:
  //   return (Array(repeating: "adak", count: n/2) + Array(repeating: "anane", count: n%2)).joined(separator:" ")
  Array(repeating: "adak ", count: (n - 1) / 2).joined() + (n % 2 == 0 ? (n == 0 ? "" : "adak") : "anane")
}
