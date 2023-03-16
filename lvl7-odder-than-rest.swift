// lvl7 Odder Than the Rest

// arr.firstIndex { $0 % 2 != 0 }
// arr.enumerated().first { (tup) -> Bool in tup.element % 2 != 0 }?.offset
// arr.enumerated().filter { $0.element % 2 != 0 }.map { $0.offset }

func oddOne(_ arr: [Int]) -> Int? {
  for (i, x) in arr.enumerated() {
    if abs(x) % 2 == 1 {
      return i
    }
  }
  return nil
}
