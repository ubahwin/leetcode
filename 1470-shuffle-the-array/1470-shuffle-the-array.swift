class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var arr = [Int]()
        
        for i in 0..<n {
            arr.append(nums[i])
            arr.append(nums[i + n])
        }
        
        return arr
    }
}