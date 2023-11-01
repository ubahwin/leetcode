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
    func findMode(_ root: TreeNode?) -> [Int] {
        var dict = [Int: Int]()
        
        var queue: [TreeNode?] = [root]
        
        while !queue.isEmpty {
            let node = queue.removeFirst()

            if let val = node?.val {
                if dict[val] == nil {
                    dict[val] = 1
                } else {
                    dict[val]! += 1
                }
            }

            if let left = node?.left {
                queue.append(left)
            }
            if let right = node?.right {
                queue.append(right)
            }
        }
        
        var max = 0
        
        for el in dict {
            max = Swift.max(max, el.value)
        }
        
        var res = [Int]()
        
        for el in dict where el.value == max {
            res.append(el.key)
        }
        
        return res
    }
}