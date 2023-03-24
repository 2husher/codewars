func balancedNumber(_ number: Int) -> String {
//  var number = number
//  var arr = [Int]()
//  while number > 0 {
//    arr.append(number % 10)
//    number /= 10
//  }
//  if arr.count == 1 || arr.count == 2 {
//    return "Balanced"
//  }
//
//  var toLeft = 0
//  if arr.count % 2 == 0 {
//    toLeft = arr.count / 2 - 2
//  }
//  else {
//    toLeft = arr.count / 2 - 1
//  }
//
//  var leftSum = 0
//  for i in 0 ... toLeft {
//    leftSum += arr[i]
//  }
//  var rightSum = 0
//  for i in arr.count / 2 + 1 ..< arr.count {
//    rightSum += arr[i]
//  }
//
//  if leftSum == rightSum {
//    return "Balanced"
//  }
//  else {
//    return "Not Balanced"
//  }
//
  
// BEST PRACTICE:
//  let firstHalf = intArray.prefix(numberOfElementsToCompare).reduce(0,+)
//  let secondHalf = intArray.suffix(numberOfElementsToCompare).reduce(0,+)
  
  var arr = String(number).map { Int(String($0)) ?? 0 }
  var rightSum = { (a:[Int]) -> Int in a[a.count / 2 + 1 ..< a.count].reduce(0, +) }
  return rightSum(arr) == rightSum(arr.reversed()) ? "Balanced" : "Not Balanced"
}
