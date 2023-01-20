import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard list1 != nil else { return list2 }
        guard list2 != nil else { return list1 }
        let dummyHead: ListNode = ListNode.init()
        var l1 = list1, l2 = list2
        var endOfSortedList: ListNode? = dummyHead
        
        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                endOfSortedList!.next = l1
                l1 = l1!.next
            } else {
                endOfSortedList!.next = l2
                l2 = l2!.next
            }
            endOfSortedList = endOfSortedList?.next
        }
        endOfSortedList?.next = l1 == nil ? l2 : l1
        
        return dummyHead.next
    }
}

