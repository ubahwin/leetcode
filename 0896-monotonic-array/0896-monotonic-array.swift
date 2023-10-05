class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        
        var incr = false
        var decr = false

        for i in 1..<nums.count {
            if nums[i - 1] < nums[i] {
                incr = true
            }
            if nums[i - 1] > nums[i] {
                decr = true
            }
            if incr && decr {
                return false
            }
        }

        return true
    }
}
