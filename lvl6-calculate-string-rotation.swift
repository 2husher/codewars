func shiftedDiff(_ s1: String, _ s2: String) -> Int? {
  let s3 = s2 + s2
  var i = s3.startIndex
  var k = 0
  var shift: Int?

  // without helper string methods
  /*while i < s2.endIndex {
   if s3[i] == s1[s1.startIndex] {
   shift = k
   var ii = i
   for ss in s1 {
   if ss == s3[ii] {
   ii = s3.index(after: ii)
   }
   else {
   shift = nil
   break
   }
   }
   if shift != nil {
   break
   }
   }
   k += 1
   i = s3.index(s3.startIndex, offsetBy: k)
   }
   return shift
   */

  while i < s1.endIndex {
    let s = s3[i..<s3.index(i, offsetBy: s1.count)]
    if s.hasPrefix(s1) {
      shift = k
      break
    }
    i = s3.index(after: i)
    k += 1
  }
  return shift

}
