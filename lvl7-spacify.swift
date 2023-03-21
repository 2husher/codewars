func spacify(_ str: String) -> String {
  // BEST PRACTICE:
  // str.map { String($0) }
    
  // TRAINING:
  //  var s = ""
  //  var index = str.startIndex
  //  while index != str.endIndex {
  //    let c = str[index]
  //    s = s + String(c) + " "
  //    index = str.index(index, offsetBy: 1)
  //  }
  //  s.removeLast()

  Array(str).map { String($0) }.joined(separator: " ")
}
