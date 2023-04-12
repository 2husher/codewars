func spinWords(in sentence: String) -> String {
  sentence
    .components(separatedBy: " ")
    .map { $0.count < 5 ? $0 : String($0.reversed()) }
    .joined(separator: " ")
}
