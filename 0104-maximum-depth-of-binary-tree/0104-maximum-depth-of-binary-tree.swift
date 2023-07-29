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
    func maxDepth(_ root: TreeNode?) -> Int { // bfs
        var queue = [TreeNode]()
        if let root = root {
            queue.append(root)
        }
        
        var maxDepth = 0
        while !queue.isEmpty {
            var childs = [TreeNode]()
            maxDepth += 1
            for node in queue {
                if let left = node.left {
                    childs.append(left)
                }
                if let right = node.right {
                    childs.append(right)
                }
            }
            
            queue = childs
        }
        return maxDepth
    }
}
