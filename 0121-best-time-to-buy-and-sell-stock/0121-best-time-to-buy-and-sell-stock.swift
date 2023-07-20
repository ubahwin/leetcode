class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var left = 0
        var right = 1
        var currentProfit = 0
        
        while right < prices.count {
            if prices[left] < prices[right] {
                maxProfit = max(maxProfit, prices[right] - prices[left])
            } else {
                left = right
            }
            right += 1
        }
        
        return maxProfit
    }
}