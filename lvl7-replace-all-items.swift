// LEVEL 7: Replace all items

func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
  /* let newArray = array.map { (elem: T) -> T in
    if elem == old {
      return new
    }
    else {
      return elem
    }
  }
  return newArray */
  
  array.map { $0 == old ? new : $0 }
}
