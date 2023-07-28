class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let middle = (left + right) / 2

            if nums[middle] > target {
                right = middle - 1
            } else if nums[middle] < target {
                left = middle + 1
            } else if nums[middle] == target {
                return middle
            }
        }
        return -1
    }
}
