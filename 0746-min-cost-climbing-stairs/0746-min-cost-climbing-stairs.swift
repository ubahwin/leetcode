class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {    
        var cost = cost
        
        for i in 2..<cost.count {
            cost[i] += min(cost[i - 1], cost[i - 2])
        }

        return min(cost[cost.count - 1], cost[cost.count - 2])
    }
}