class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        let n = nums.count
        var minOperations = Int.max
        var nums = Array(Set(nums)).sorted()
        let m = nums.count
        
        var right = 0
        for left in 0..<n {
            while right < m && nums[right] < nums[left] + n {
                right += 1
            }
            
            minOperations = min(minOperations, n - right + left)
        }
        
        return minOperations
    }
}