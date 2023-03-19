func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
  arr.flatMap { $0 }.sorted()
}
