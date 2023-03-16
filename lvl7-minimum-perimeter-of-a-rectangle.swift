func minimumPerimeter(_ area: Int64) -> Int64 {
  var doubleSide = sqrt(Double(area))
  var side1: Int64 = Int64(floor(doubleSide))
  var perimeter: Int64 = 0
  while side1 > 0 {
    if area % side1 == Int64(0) {
      let side2: Int64 =  area / Int64(side1)
      perimeter = 2 * (side1 + side2)
      break
    }
    side1 -= 1
  }
  return perimeter
}
