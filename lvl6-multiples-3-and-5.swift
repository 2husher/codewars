func solution(_ num: Int) -> Int {
  //   var sum = 0
  //   var i = 1
  //   while i < num {
  //     if i % 3 == 0 || i % 5 == 0 {
  //       sum += i
  //     }
  //     i += 1
  //   }
  //   return sum

  num > 0 ? (1 ..< num).filter { $0 % 3 == 0 || $0 % 5 == 0 }.reduce(0, +) : 0
}
