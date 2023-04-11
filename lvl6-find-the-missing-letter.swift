func findMissingLetter(_ chArr: [Character]) -> Character {
  Set( (chArr[0].asciiValue! ... chArr[chArr.count - 1].asciiValue!)
        .map { Character(UnicodeScalar($0)) }).subtracting(Set(chArr)).first! 
}
