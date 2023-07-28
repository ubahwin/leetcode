/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        var l1 = list1
        var l2 = list2
        
        var dummy = ListNode(-1)
        var result = dummy
        
        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                dummy.next = l1
                l1 = l1!.next
            } else {
                dummy.next = l2
                l2 = l2!.next
            }
            dummy = dummy.next!
        }
        
        dummy.next = l1 == nil ? l2 : l1
        
        return result.next
    }
}