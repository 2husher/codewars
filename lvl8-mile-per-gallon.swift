func converter(mpg: Int) -> Double {
  let kph = 1.609344 / 4.54609188 * Double(mpg)
  return round(kph * 100) / 100.0
//   return Double(String(format: "%.2f", kph))!
}
