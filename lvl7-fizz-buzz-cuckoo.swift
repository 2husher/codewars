func fizzBuzzCuckooClock(_ time: String) -> String {
  var timeArr = time.components(separatedBy: ":").compactMap { Int($0) }
  var timeTuple = (timeArr[0], timeArr[1])
  switch timeTuple {
  case (let hours, 0): 
    let counts = hours % 12 == 0 ? 12 : hours % 12
    return Array(repeating: "Cuckoo", count: counts).joined(separator: " ")
  case (_, 30): return "Cuckoo"
  case (_, let minutes) where minutes % 15 == 0: return "Fizz Buzz"
  case (_, let minutes) where minutes % 3 == 0: return "Fizz"
  case (_, let minutes) where minutes % 5 == 0: return "Buzz"
  default: return "tick"
  }
}
