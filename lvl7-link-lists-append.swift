class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func append(_ listA:Node?, _ listB:Node?) -> Node? {
  var head = listA
  guard head != nil else { return listB }
  
  var pointer = head                      
  while pointer?.next != nil {
    pointer = pointer?.next
  }
  pointer?.next = listB
  return head
}

// BETTER PRACTICES:
// func append(_ listA: Node?, _ listB: Node?) -> Node? {
//  guard var node = listA else { return listB }
//  while let next = node.next {
//    node = next
//  }
//  node.next = listB
//  return listA
//}

// 2
//func append(_ listA:Node?, _ listB:Node?) -> Node? {
//guard listA != nil else {return listB}
//listA?.next = append(listA?.next, listB)
//return listA
//}


// 3
//extension Node {
//  var last: Node {
//    return next?.last ?? self
//  }
//}
//
//func append(_ listA: Node?, _ listB: Node?) -> Node? {
//  guard let first = listA else { return listB }
//  guard let second = listB else { return first }
//  
//  first.last.next = second
//  return first
//}

