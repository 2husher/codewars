func findUniq(_ arr: [Int]) -> Int {
  let acc = arr.count % 2 == 0 ? (arr[0] == arr[1] ? arr[0] : arr[2]) : 0
  return arr.reduce(acc, ^)
}
