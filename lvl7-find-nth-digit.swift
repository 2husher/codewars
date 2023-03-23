func findDigit(_ num:Int, _ nth: Int) -> Int {
  guard nth > 0 else { return -1 }
  guard String(num).count >= nth else { return 0} 
  
  let number = num > 0 ? num : -num
  let a = String(number).reversed().map { Int(String($0))! }
  return a[nth - 1]
}
