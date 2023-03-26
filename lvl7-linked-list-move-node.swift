class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

struct Context {
    var source:Node?
    var dest:Node?
}

enum MyError: Error {
  case nilSource
}

func moveNode(source:Node?, dest:Node?) throws -> Context? {
  guard var source = source else { throw MyError.nilSource }
  var movedNode = Node(source.data)
  movedNode.next = dest
  return Context(source: source.next, dest: movedNode)
}

// BETTER
/*
func moveNode(source:Node?, dest:Node?) throws -> Context? {
  guard let sourceHead = source else { throw SourceError.Empty }
  let newSource = source!.next
  
  sourceHead.next = dest
  return Context(source: newSource, dest: sourceHead)
}
*/
