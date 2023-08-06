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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let root = root else { return [] }
        var answer = [String]()
        dfs(root, &answer, "")
        return answer
    }
    
    func dfs(_ root: TreeNode, _ answer: inout [String], _ path: String) -> [String] {
        if root.left == nil && root.right == nil { 
            answer += [path + String(root.val)]
        }
        if let left = root.left {
            dfs(left, &answer, path + String(root.val) + "->")
        }
        if let right = root.right {
            dfs(right, &answer, path + String(root.val) + "->")
        }
        return answer
    }
}