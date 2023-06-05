let NATO = ["A":"Alfa", "B":"Bravo","C":"Charlie", "D":"Delta", "E":"Echo", "F":"Foxtrot",
            "G":"Golf", "H": "Hotel", "I":"India", "J":"Juliett", "K":"Kilo", "L":"Lima", 
            "M":"Mike", "N":"November", "O":"Oscar", "P":"Papa", "Q":"Quebec", "R":"Romeo", 
            "S":"Sierra", "T":"Tango", "U":"Uniform", "V":"Victor", "W":"Whiskey", "X":"Xray", 
            "Y":"Yankee", "Z":"Zulu"]
func toNato(_ words: String) -> String {
  var output = [String]()
  print(words)
  for char in words {
    let char = String(char).uppercased()
    switch char {
    case " ": continue
    case ",", ".", "!", "?", "(", ")", "\"": output.append(char)
    default: output.append(NATO[char]!)
    }
  }
  return output.joined(separator: " ")
}
