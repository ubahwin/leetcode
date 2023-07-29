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
    func minDepth(_ root: TreeNode?) -> Int {
        var queue = [TreeNode]()
        
        // if let left = root?.left {
        //     queue.append(left)
        // }
        // if let right = root?.right {
        //     queue.append(right)
        // }
                
        if let root = root {
            queue.append(root)
        }
        var shortDepth = 0
        while !queue.isEmpty {
            var childs = [TreeNode]()
            
            shortDepth += 1
            
            for node in queue {

                var isLeftNil = false, isRightNil = false
                
                if let left = node.left {
                    childs.append(left)
                } else { 
                    isLeftNil = true 
                } 
                if let right = node.right {
                    childs.append(right)
                } else { 
                    isRightNil = true 
                }
                
                if isRightNil && isLeftNil {
                    return shortDepth
                }
            }
            queue = childs
        }
        
        return shortDepth
    }
}