class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sum = 0
        var result = nums
        for i in 1..<nums.count {
            result[i] = result[i-1] + result[i]
        }
        return result
    }
}