class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var arr = [Int](repeating: 0, count: 2 * n)
        
        for i in 0..<n {
            arr[i] = nums[i]
            arr[i + n] = nums[i]
        }
        return arr
    }
}