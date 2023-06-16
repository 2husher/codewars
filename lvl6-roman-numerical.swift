let numbers = 
  [1, 2, 3, 4, 5, 6, 7, 8, 9,
   10, 20, 30, 40, 50, 60, 70, 80, 90,
   100, 200, 300, 400, 500, 600, 700, 800, 900,
   1000, 2000, 3000]

let romanNumerals = 
  ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX",
   "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC",
   "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM",
   "M", "MM", "MMM"]

func solution(_ number:Int) -> String {
  var mapping = [Int: String]()
  for i in 0..<numbers.count {
    mapping[numbers[i]] = romanNumerals[i]
  }
  
  var number = number
  var output = ""
  var i = 1
  while number > 0 {
    let digit = number % 10
    output = mapping[digit * i, default: ""] + output
    number = number / 10
    i = i * 10
  }
  return output
}
