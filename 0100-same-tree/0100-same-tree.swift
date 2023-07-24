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
            var count = queueP.count // lenght of some queue

            if count != queueQ.count { // check for diff lenght
                return false
            }

            for i in 0..<count { 
                if queueQ[i]?.val == queueP[i]?.val { // check for diff values
                    continue
                }
                return false
            }

            // flags for check left and right nodes on empty
            var leftPIsEmpty = false 
            var rightPIsEmpty = false

            // fill new queue with nodes
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

            // if left node is empty, then other left node most be empty...
            if !(leftPIsEmpty == leftQIsEmpty && rightPIsEmpty == rightQIsEmpty) {
                return false
            }
            
            // replace old queue
            queueP = newQueueP
            queueQ = newQueueQ
        }
        return true
    }
}
