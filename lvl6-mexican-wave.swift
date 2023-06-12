func wave(_ y: String) -> [String] {
  var strings = [String]()
  for char in y {
    strings.append(char.isWhitespace ? "" : y)
  }
  var newStrings = [String]()
  for i in 0..<strings.count {
    var word = Array(strings[i])
    var newWord = ""
    for (idx, char) in word.enumerated() {
      let letter = String(char)
      newWord += (idx == i) ? letter.uppercased() : letter
    }
    if !newWord.isEmpty {
      newStrings.append(newWord)
    }
  }
  return newStrings
}
