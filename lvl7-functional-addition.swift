func add(_ n: Int) -> ((Int) -> Int) { 
  // return {(num: Int) -> Int in num + n}
  // {num in num + n}
  {$0 + n}
}
