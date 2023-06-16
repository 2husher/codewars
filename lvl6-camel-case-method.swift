func camelCase(_ str: String) -> String {
  var words = str.components(separatedBy: .whitespaces)
  let capsWords = words.map { $0.capitalized }
  return capsWords.joined()
}
