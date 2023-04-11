func countDuplicates(_ s:String) -> Int {

  // BEST PRACTICE: 
  // dict[char, default: 0] += 1

  let s = s.lowercased()

  var dict = [Character: Int]()
  
  var i = s.startIndex
  while i < s.endIndex {
    let char = s[i]
    if dict[char] == nil {
      dict[char] = 1
    }
    else {
      dict[char]! += 1
    }
    i = s.index(after: i)
  }
  
  var count = 0
  for i in dict.values {
    if i > 1 {
      count += 1
    }
  }
  return count
}
