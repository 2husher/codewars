func getRandomArray(from a: [Int], num: Int, letter: String) -> [String] {
  var arr = a
  var output = [String]()
  for i in 0 ..< num {
    let index = Int.random(in: 0 ..< arr.count)
    let elem = arr.remove(at: index)
    output.append("\(letter)\(elem)")
  }
  return output
}

func getCard() -> [String] {
  return
  getRandomArray(from: Array(1...15), num: 5, letter: "B") +
  getRandomArray(from: Array(16...30), num: 5, letter: "I") +
  getRandomArray(from: Array(31...45), num: 4, letter: "N") +
  getRandomArray(from: Array(46...60), num: 5, letter: "G") +
  getRandomArray(from: Array(61...75), num: 5, letter: "O")
}
