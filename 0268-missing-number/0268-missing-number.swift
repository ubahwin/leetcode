class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        let sortedNums = nums.sorted()
        
        for i in 0..<n {
            if i != sortedNums[i] {
                return i
            }
        }
        return n
    }
}
