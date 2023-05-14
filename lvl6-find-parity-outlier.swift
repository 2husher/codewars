extension BinaryInteger {
    var isEven: Bool { isMultiple(of: 2) }
    var isOdd:  Bool { !isEven }
}

func findOutlier(_ array: [Int]) -> Int {
  let firstEven = array[0].isEven
  let secondEven = array[1].isEven
  let thirdEven = array[2].isEven
  var filtered = [Int]()
  if firstEven && secondEven || firstEven && thirdEven || secondEven && thirdEven {
    filtered = array.filter { $0.isOdd } 
  }
  else {
    filtered = array.filter { $0.isEven }
  }
  return filtered.first!
}
