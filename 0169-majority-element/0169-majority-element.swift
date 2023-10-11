class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var table = [Int: Int]()
        
        for num in nums {
            if table[num] != nil {
                table[num]! += 1
            } else {
                table[num] = 1
            }
        }
        
        var major = 0
        var max = 0
        for num in table {
            if num.value > max {
                max = num.value
                major = num.key
            }
        }
        
        return major
    }
}