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
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        if root1 == nil, root2 == nil {
            return nil
        }
        
        let res = TreeNode((root1?.val ?? 0) + (root2?.val ?? 0)) // fill tree with dfs recursive
        res.left = mergeTrees(root1?.left, root2?.left)
        res.right = mergeTrees(root1?.right, root2?.right)

        return res
    }
}
