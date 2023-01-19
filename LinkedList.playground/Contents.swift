import UIKit

class ListNode {
    var value: Int
    var next: ListNode?
    init(value: Int, next: ListNode?) {
        self.value = value
        self.next = next
    }
}

let thirdNode = ListNode(value: 3, next: nil)
let secondNode = ListNode(value: 2, next: thirdNode)
let oneNode = ListNode(value: 1, next: secondNode)

//func printList(head: ListNode?) {
//    var currentNode = head
//    while currentNode != nil {
//        print(currentNode?.value ?? "-1")
//        currentNode = currentNode?.next
//    }
//}

//printList(head: oneNode)


func reverseLinkedList(head: ListNode?) -> ListNode? {
    var currentNode = head // 1->nil
    var prev: ListNode?
    var next: ListNode?
    while currentNode != nil {
        next = currentNode?.next // next = nil
        currentNode?.next = prev // nil = prev
        prev = currentNode       // prev = 3
        currentNode = next       // 3 = nil
    }
    
    return prev
}

reverseLinkedList(head: oneNode)
