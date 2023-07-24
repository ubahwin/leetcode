/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { 
            self.val = 0; 
            self.left = nil; 
            self.right = nil; 
        }
 *     public init(_ val: Int) { 
            self.val = val; 
            self.left = nil; 
            self.right = nil; 
        }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var queueP: [TreeNode?] = [p]
        var queueQ: [TreeNode?] = [q]

        while !queueP.isEmpty {
            var count = queueP.count

            if count != queueQ.count {
                return false
            }

            for i in 0..<count {
                if queueQ[i]?.val == queueP[i]?.val {
                    continue
                }
                return false
            }

            var leftPIsEmpty = false
            var rightPIsEmpty = false

            var newQueueP = [TreeNode?]()
            for i in queueP {
                if let left = i?.left {
                    newQueueP.append(left)
                } else { leftPIsEmpty = true }
                if let right = i?.right {
                    newQueueP.append(right)
                } else { rightPIsEmpty = true }
            }

            var leftQIsEmpty = false
            var rightQIsEmpty = false

            var newQueueQ = [TreeNode?]()
            for i in queueQ {
                if let left = i?.left {
                    newQueueQ.append(left)
                } else { leftQIsEmpty = true }
                if let right = i?.right {
                    newQueueQ.append(right)
                } else { rightQIsEmpty = true }
            }

            if !(leftPIsEmpty == leftQIsEmpty && rightPIsEmpty == rightQIsEmpty) {
                return false
            }
            
            queueP = newQueueP
            queueQ = newQueueQ
        }
        return true
    }
}
