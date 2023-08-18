class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sum = 0
        var result = nums
        for i in 0..<nums.count {
            result[i] = sum + nums[i]
            sum += nums[i]
        }
        return result
    }
}