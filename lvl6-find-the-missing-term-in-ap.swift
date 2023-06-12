func find_missing(l:[Int]) -> Int {
  let step = (l.last! - l.first!) / l.count
  for i in 0 ..< l.count {
    let next = l.first! + step * i
    if l[i] != next  { return next }
  }
  return 0
}
