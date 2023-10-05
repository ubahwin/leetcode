class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        if nums.count < 2 {
            return true
        }
        
        var indicator = 1
        while nums[indicator] == nums[0] {
            indicator += 1
            if indicator == nums.count {
                return true
            }
        }        
        
        if nums[indicator] > nums[0] {
            for i in indicator..<nums.count {
                if nums[i - 1] > nums[i] {
                    return false
                }
            }
        } else {
            for i in indicator..<nums.count {
                if nums[i - 1] < nums[i] {
                    return false
                }
            }
        }
        
        return true
    }
}