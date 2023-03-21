func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
  // BEST PRACTICE:
  // How dropFirst + filter works?
  // arr.enumerated().dropFirst().filter { arr[$0.0 - 1] != $0.1 - 1 }
  
  guard arr.count > 1 else { return [] }
  
  var res = [(Int, Int)]()
  for (i, x) in arr.enumerated() {
    if i == 0 { continue }
    
    if x - arr[i - 1] != 1 {
      res.append((i, x))
    }
  }
  if res.isEmpty { return [] }
  return res
}
