class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int : [Int]] = [:]
        
        for i in 0..<nums.count {
            if let value = dict[nums[i]] {
                if value[0] == nums[i] {
                    return [value[1], i]
                }
            }
            dict[target - nums[i]] = [target - nums[i], i]
        }
        return []
    }
}
