func wordSearch(_ str: String, _ arr: [String]) -> [String] {
  let a = arr.filter { s in
    s.lowercased().contains(str.lowercased())
  }
  return a.isEmpty ? ["Empty"] : a
}
