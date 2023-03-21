func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
  // BEST PRACTISE:
  //   return array.first(where: { !mixArray.contains($0) }) ?? 0
  //   return array.reduce(0, +) - mixArray.reduce(0, +)
  //   return mixArray.reduce(array.reduce(0, ^), ^)

  guard !array.isEmpty else { return 0 }
  guard !mixArray.isEmpty else { return array[0] }
  guard array.count != mixArray.count else { return 0}
  
  let index = mixArray.sorted().enumerated().filter { $0.element != array[$0.offset] }[0].offset
  return array[index]
}
