class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int : Int] = [:] // [ target - currentValue : indexOfCurrentValue ]
        
        for i in 0..<nums.count {
            let currentComplement = target - nums[i]
            if let indexOfComplement = dict[nums[i]], nums[indexOfComplement] == currentComplement {
                return [indexOfComplement, i]
            }
            dict[currentComplement] = i
        }
        return []
    }
}
