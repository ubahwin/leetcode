class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var res = bin(array: nums, t: target)
        return nums[res] < target ? res + 1 : res
    }
    
    func bin(array: [Int], t: Int) -> Int {
        var left = 0, right = array.count - 1
        var mid = 0
        
        while left < right {
            mid = left + (right - left) / 2
            
            if array[mid] < t {
                left = mid + 1
            } else if array[mid] > t {
                right = mid
            } else if array[mid] == t {
                return mid
            }
        }
        return left
    }
}