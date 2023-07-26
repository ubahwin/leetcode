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
    func middleNode(_ head: ListNode?) -> ListNode? {
        var tmpList = head
        var lenght = 0
        while tmpList != nil {
            tmpList = tmpList?.next
            lenght += 1
        }
        
        var middle = lenght / 2
        var resList = head
        while middle > 0 {
            middle -= 1
            resList = resList?.next
        }
        return resList
    }
}