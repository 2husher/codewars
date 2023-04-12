class Solution {
  static func twosum(numbers: [Double], target: Double) -> [Int] {
    for i in numbers {
      let first = numbers.firstIndex(of: target - i)
      let last = numbers.lastIndex(of: i)
      if let first = first, let last = last, first != last { 
        return [first, last].sorted()
      }
    }
    return []
  }
}
