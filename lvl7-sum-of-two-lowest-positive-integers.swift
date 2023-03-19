func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
  // Not mine Functional solution
  // array.sorted()[0...1].reduce(0, +)
  // OR...   .prefix(20

  // Solution 1
  var a = array.sorted()
  return a[0] + a[1]


  // Solution 2
  /*
  var a = array
  var min1 = a.min()
  var index1 = a.firstIndex(of: min1) ?? a.startIndex
  a.remove(at: index1)
  var min2 = a.min()
  return min1 + min2
  */
  
  // Solution 3
  /*  
    var min1 = Int.max
    var min2 = Int.max
    for x in array {
      if x < min1 {
        min2 = min1
        min1 = x
      }
      else if x < min2 {
        min2 = x
      }
    }
    return min1 + min2
    */
}