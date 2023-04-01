func circleOfNumbers(_ n: Int, _ fst: Int) -> Int {
  // BEST PRACTICE:
  // (fst + n / 2) % n
  fst < n / 2 ? fst + n/2 : fst - n/2
}