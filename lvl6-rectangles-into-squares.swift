func sqInRect(_ lng: Int, _ wdth: Int) -> [Int]? {
  if lng == wdth { return nil }
  return squareInRect(lng, wdth)
}

func squareInRect(_ length: Int, _ width: Int) -> [Int] {
  if length == width  { return [length] }
  var minSide = length > width ? width : length 
  return [minSide] + squareInRect(minSide, abs(length - width))
}
