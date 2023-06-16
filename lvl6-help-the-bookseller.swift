func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
  guard !listOfArt.isEmpty && !listOfCat.isEmpty else { return "" }
  
  var books = [String: Int]()
  for category in listOfCat {
    books[category] = 0
  }
  for art in listOfArt {
    let arrOfArt = art.components(separatedBy: .whitespaces)
    let category = String(arrOfArt[0].prefix(1))
    let quantity = Int(arrOfArt[1])!
    books[category, default:0] += quantity
  }
  var output = [String]()
  for category in listOfCat {
    output.append("(\(category) : \(books[category, default: 0]))")
  }
  return output.joined(separator: " - ")
}
