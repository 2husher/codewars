class Node {
  var data: Int
  var next: Node?
    
  init(_ data: Int) {
    self.data = data;
  }
}

func push(_ head:Node?, _ data:Int) -> Node {
  let node = Node(data)
  node.next = head
  return node
}

func buildOneTwoThree() -> Node {
  var head = push(nil, 3)
  head = push(head, 2)
  head = push(head, 1)
  return head
}
