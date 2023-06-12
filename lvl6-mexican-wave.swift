func wave(_ y: String) -> [String] {
//  BEST PRACTICE:
//  for i in y.indices {
//    if !y[i].isWhitespace {
//      wave.append(y[..<i] + y[i].uppercased() + y[y.index(after: i)...])
//    }
//  }

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
