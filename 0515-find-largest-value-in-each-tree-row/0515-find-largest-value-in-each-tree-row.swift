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
    func largestValues(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        
        var queue: [TreeNode?] = [root]
        var res: [Int] = [(root?.val)!]
        
        while !queue.isEmpty {
            var child = [TreeNode?]()        
            var maxVal = Int.min
            
            for node in queue {
                
                if let left = node?.left {
                    maxVal = max(maxVal, left.val)
                    child.append(left)
                }
                if let right = node?.right {
                    maxVal = max(maxVal, right.val)
                    child.append(right)
                }
            }

            if maxVal != Int.min {
                res.append(maxVal)
            }

            queue = child
        }
        
        return res
    }
}
