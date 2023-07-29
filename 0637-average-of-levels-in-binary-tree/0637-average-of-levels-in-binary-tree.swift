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
            
            for node in queue { // we go through all the nodes in the current array of trees
                sum += node.val // write in the sum the value of each node of each tree
                
                if let left = node.left { // we throw the left and right twix sticks
                    childs.append(left)
                }
                if let right = node.right {
                    childs.append(right)
                }
            }
            
            // at this stage, we have divided the queue into several child
            // we can now consider the average of the level, because we have just passed it
            
            result.append(Double(sum) / Double(count))
            queue = childs
        }
        return result
    }
}