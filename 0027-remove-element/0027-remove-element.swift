class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var counter = 0
        
        for i in 0..<nums.count {
            if nums[i] != val {
                nums[counter] = nums[i]
                counter += 1
            }
        }
        return counter
    }
}