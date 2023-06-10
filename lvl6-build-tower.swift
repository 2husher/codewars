func towerBuilder(n:Int) -> [String] {
  let fullLen = 2 * n - 1
  var output = [String]()
  for i in 1...n {
    let starsLen = 2 * i - 1
    let spacesLen = (fullLen - starsLen) / 2
    let spaces = String(repeating: " ", count: spacesLen)
    let stars = String(repeating: "*", count: starsLen)
    output.append(spaces + stars + spaces)
  }
  return output
}
