func disariumNumber(_ number: Int) -> String {
  //var num = number
  //var reversed = [Int]()
  //var len = String(num).count
  //while num > 0 {
  //  let digit = num % 10
  //  var product = 1
  //  for _ in 1...len {
  //    product = product * digit
  //  }
  //  reversed.append(product)
  //  num = num / 10
  //  len = len - 1
  //}
  //var result = 0
  //for i in reversed {
  //  result = result + i
  //}
  //result
  
  let arr = String(number)
    .map { Int(String($0)) ?? 0 }
  let sum = arr.enumerated()
    .map { Array(repeating: $0.element, count: $0.offset + 1).reduce(1, *) }
    .reduce (0, +)
  return sum == number ? "Disarium !!" : "Not !!"
}
