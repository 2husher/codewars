func inArray(_ a1: [String], _ a2: [String]) -> [String] {
  var output = Set([String]())
  a1.forEach { subword in
    for word in a2 {
      if word.contains(subword) {
        output.insert(subword)
        break
      }
    }
  }
  return Array(output).sorted()
}
