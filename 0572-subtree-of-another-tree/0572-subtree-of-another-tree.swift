/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class Solution {
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let main = root, let sub = subRoot else { return false }
        
        var stackMain: [TreeNode] = [main]
        
        while !stackMain.isEmpty {
            let node = stackMain.popLast()!
            
            if isSubtree(first: node, second: sub) { return true }
            
            if let left = node.left {
                stackMain.append(left)
            }
            if let right = node.right {
                stackMain.append(right)
            }
        }
        return false
    }
    func isSubtree(first: TreeNode?, second: TreeNode?) -> Bool {
        if first == nil && second == nil { return true }
        guard let first = first, let second = second, second.val == first.val else { return false }
        return isSubtree(first: first.left, second: second.left) && isSubtree(first: first.right, second: second.right)
    }
}
