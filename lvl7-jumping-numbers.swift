func jumpingNumber(_ number: Int) -> String {
  let arr = String(number).map { Int(String($0))! } 
  var lastNumber = arr[0] - 1
  for n in arr {
    if abs(n - lastNumber) != 1 { return "Not!!"} 
    lastNumber = n            
  }
  return "Jumping!!"
}
