func decodeResistorColors(_ bands: String) -> String {

  // best practice
  // let digits = names.compactMap(colors.firstIndex)
  
  let codes = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "gray", "white"]
  
  let colors = bands.components(separatedBy: " ")
  
  let firstDigit = codes.firstIndex(of: colors[0])! 
  let secondDigit = codes.firstIndex(of:colors[1])!
  let powerExp = codes.firstIndex(of:colors[2])!
  var tolerance = ""
  if colors.count == 4 {
    tolerance = colors[3]
  }
  
  var number = Double(firstDigit * 10 + secondDigit) * pow(10, Double(powerExp))
  
  var str = ""
  if number < 1000 {
    str = ""
  }
  else if number < 1_000_000 {
    number = number / 1000.0
    str = "k"
  }
  else {
    number = number / 1_000_000.0
    str = "M"
  }
  
  var numberStr = ""
  if Int(number * 10) % 10 == 0 {
    numberStr = "\(Int(number))"
  }
  else {
    numberStr = "\(number)"
  }
  
  var percents = 20
  if tolerance == "gold" {
    percents = 5
  }
  else if tolerance == "silver" {
    percents = 10
  }
  return "\(numberStr)\(str) ohms, \(percents)%"
}
