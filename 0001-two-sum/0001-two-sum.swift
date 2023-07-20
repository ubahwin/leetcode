class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int : Int] = [:] // [ target - currentValue : indexOfCurrentValue ]
        
        for i in 0..<nums.count {
            if let a = dict[nums[i]], nums[a] == target - nums[i] {
                return [a, i]
            }
            dict[target - nums[i]] = i
        }
        return []
    }
}
