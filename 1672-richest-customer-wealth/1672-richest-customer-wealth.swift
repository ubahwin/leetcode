class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var res = 0
        
        for user in accounts {
            var currentSum = 0
            for amount in user {
                currentSum += amount
            }
            res = max(res, currentSum)
        }
        
        return res
    }
}