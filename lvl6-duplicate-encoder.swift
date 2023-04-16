func duplicateEncode(_ word: String) -> String {
  let word = word.lowercased()
  var dict = [Character: Int]()
  for char in word {
    dict[char, default: 0] += 1
  }
  var encoded = ""
  for char in word {
    if dict[char] == 1 {
      encoded += "("
    }
    else {
      encoded += ")"
    }
  }
  return encoded
}
