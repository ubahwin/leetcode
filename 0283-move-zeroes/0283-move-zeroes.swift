class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[j] = nums[i]
                if j != i {
                    nums[i] = 0
                }
                j += 1
            }
        }
    }
}