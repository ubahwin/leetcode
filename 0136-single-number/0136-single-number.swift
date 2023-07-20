class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        var current = 0
        
        for i in 0..<sortedNums.count {
            
            if i % 2 == 0 {
                current = sortedNums[i]
            } else if current != sortedNums[i] {
                return current
            }
        }
        return current
    }
}