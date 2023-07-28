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
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var queue = [TreeNode]()
        
        if let root = root {
            queue.append(root)
        } else { return [] }
        
        var result = [Double]()
        
        while !queue.isEmpty {
            var childs = [TreeNode]()
            
            var count = queue.count
            var sum = 0
            
            for node in queue {
                sum += node.val
                
                if let left = node.left {
                    childs.append(left)
                }
                if let right = node.right {
                    childs.append(right)
                }
            }
            
            result.append(Double(sum) / Double(count))
            queue = childs
        }
        return result
    }
}