class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

enum ListError: Error {
  case indexOutOfRange
}

func getNth(_ head: Node?, _ index: Int) throws -> Node? {
  guard index >= 0 else { throw ListError.indexOutOfRange }
  var i = index
  var pointer = head
  while let node = pointer?.next {
    if i <= 0 {
      return pointer 
    }
    pointer = node
    i -= 1
  }
  if i > 0 {
    throw ListError.indexOutOfRange
  } 
  return pointer
}
