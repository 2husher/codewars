func specialNumber(_ number: Int) -> String {
  // String(12345789).filter { $0 >= "0" && $0 <= "5"} -> "12345"

  let len = String(number).map { String($0) }.filter { $0 >= "0" && $0 <= "5"}.count 
  return String(number).count == len ? "Special!!" : "NOT!!"
}
