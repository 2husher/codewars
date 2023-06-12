func pyramid(_ n: Int) -> [[Int]] {
  n > 0 ? Array(1...n).map { Array(repeating: 1, count: $0) } : []
}
