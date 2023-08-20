class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var counter = 0
        
        for i in 1..<nums.count {
            if nums[counter] != nums[i] {
                counter += 1
                nums[counter] = nums[i]
            }
        }
        
        return counter + 1
    }
}