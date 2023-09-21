class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {
        var nums = nums.sorted()
        
        var pairs = 0
        var i = 0, j = nums.count - 1
        
        while i < j {
            if nums[i] + nums[j] < target {
                pairs += j - i
                i += 1
            } else {
                j -= 1
            }
        }
        return pairs
    }
}