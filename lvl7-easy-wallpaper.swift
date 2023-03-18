// LEVEL 7 Easy Wallpaper

func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
  let numbers = ["zero", "one", "two", "three", "four", "five",
               "six", "seven", "eight", "nine", "ten",
               "eleven", "twelve", "thirteen", "fourteen", "fifteen",
               "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
  
  guard l * h * w != 0 else { return numbers[0]}
    
  let squareOfWallsPlusExtra = 1.15 * 2 * (l + w) * h
  let squareOfRoll = 0.52 * 10
  let numberOfRolls = Int(ceil(squareOfWallsPlusExtra / squareOfRoll))
  return numbers[numberOfRolls]
}
