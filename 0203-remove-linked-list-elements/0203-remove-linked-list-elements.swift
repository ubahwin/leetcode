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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var current = head
        var tail = ListNode(-1)
        
        tail.next = current
        current = tail
        
        while current != nil {
            if current?.next?.val == val {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }
        return tail.next
    }
}