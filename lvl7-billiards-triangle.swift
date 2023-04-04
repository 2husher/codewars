func pyramid(_ balls: Int) -> Int{ 
  var sum = 1
  var level = 0
  while sum <= balls {
    level += 1
    sum += level + 1
  }
  return level
}
