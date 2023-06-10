func persistence(for num: Int) -> Int {
  var number = num
  var times = 0
  while number > 9 {
    number = String(number).map { Int(String($0))! }.reduce(1, *)
    times += 1
  }
  return times
}
