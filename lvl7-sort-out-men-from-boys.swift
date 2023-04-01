func menFromBoys(_ arr: [Int]) -> [Int] {
  let noDups: Set<Int> = Set(arr)
  let men = noDups.filter { $0 % 2 == 0 }.sorted()
  let boys = noDups.filter { $0 % 2 != 0 }.sorted(by: >)
  return men + boys
}
