func findIt(_ seq: [Int]) -> Int {
// BEST:
// seq.reduce(0, ^)
  var dict: [Int: Int] = [:]
  for number in seq {
    if dict[number] == nil {
      dict[number] = 1
    }
    else {
      dict[number]! +=  1
    }
  }
  for key in dict.keys {
    if dict[key]! % 2 == 1 {
      return key
    }
  }
  return 0
}
