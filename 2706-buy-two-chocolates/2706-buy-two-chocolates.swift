class Solution {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        let prices = prices.sorted()
        
        let buying = money - prices[0] - prices[1]
        
        return buying < 0 ? money : buying
    }
}