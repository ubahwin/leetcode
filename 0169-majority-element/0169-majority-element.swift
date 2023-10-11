class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var major = 0
        var counter = 1
        
        for i in 1..<nums.count {
            if nums[major] == nums[i] {
                counter += 1
            } else {
                counter -= 1
            }
            
            if counter == 0 {
                major = i
                counter = 1
            }
        }
        
        return nums[major]
    }
}