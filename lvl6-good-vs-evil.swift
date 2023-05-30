func forces(of worthes: [Int], by numbersStr: String) -> Int {
  let numbers = numbersStr.components(separatedBy: .whitespaces).map { Int($0)! }
  var forces = 0
  for i in 0 ..< numbers.count {
    forces += worthes[i] * numbers[i]
  }
  return forces
}

func evaluate(good: String, vsEvil evil: String) -> String {
  let goodWorthes = [1, 2, 3, 3, 4, 10]
  let evilWorthes = [1, 2, 2, 2, 3, 5, 10]
  
  var goodForces = forces(of: goodWorthes, by: good)
  var evilForces = forces(of: evilWorthes, by: evil)
  
  let winner = [
    "Battle Result: Good triumphs over Evil",
    "Battle Result: Evil eradicates all trace of Good",
    "Battle Result: No victor on this battle field"
  ]

  return goodForces > evilForces ? winner[0] : 
                                  (goodForces < evilForces ? winner[1] : winner[2])
}
