func getOrder(_ input: String) -> String {
  var menu = ["Burger":0, "Fries":0, "Chicken":0, "Pizza":0,
            "Sandwich":0, "Onionrings":0, "Milkshake":0, "Coke":0]
  var inputStr = input
  while !inputStr.isEmpty {
    var secondIndex = inputStr.index(after: inputStr.startIndex)
    let twoLetters = inputStr[...secondIndex]
    var offset = 0
    switch twoLetters {
    case "bu":
      menu["Burger"]! += 1
      offset = 6
    case "fr":
      menu["Fries"]! += 1
      offset = 5
    case "ch":
      menu["Chicken"]! += 1
      offset = 7
    case "pi":
      menu["Pizza"]! += 1
      offset = 5
    case "sa":
      menu["Sandwich"]! += 1
      offset = 8
    case "on":
      menu["Onionrings"]! += 1
      offset = 10
    case "mi":
      menu["Milkshake"]! += 1
      offset = 9
    case "co":
      menu["Coke"]! += 1
      offset = 4
    default:
      break
    }
    let index = String(inputStr).index(inputStr.startIndex, offsetBy: offset)
    inputStr = String(inputStr[index...])
  }

  var menuStr = ""
  let menuOrder = ["Burger", "Fries", "Chicken", "Pizza",
                   "Sandwich", "Onionrings", "Milkshake", "Coke"]
  for item in menuOrder {
    if let count = menu[item], count > 0 {
      menuStr += Array(repeating: item, count: count).joined(separator: " ") + " "
    }
  }
  if !menuStr.isEmpty { 
    menuStr.removeLast()
  }
  return menuStr
}
