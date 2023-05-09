func decodeMorse(_ morseCode: String) -> String {
  let trimmedString = morseCode.trimmingCharacters(in: .whitespaces)
  let morseWords = trimmedString.components(separatedBy: "   ")
  var words = [String]()
  for morseWord in morseWords { 
    let morseLetters = morseWord.components(separatedBy: " ") 
    var word = ""
    for morseLetter in morseLetters {
      let letter = MorseCode[morseLetter, default: ""]
      word += letter
    }
    words.append(word)
  }
  return words.joined(separator: " ")
}
