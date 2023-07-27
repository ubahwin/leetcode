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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        var right: ListNode?
        while slow != nil {
            var forward = slow?.next
            slow?.next = right
            right = slow
            slow = forward
        }
        
        var left = head
        while right != nil && left != nil {
            if left?.val != right?.val {
                return false
            }
            left = left?.next
            right = right?.next
        }
        return true
    }
}