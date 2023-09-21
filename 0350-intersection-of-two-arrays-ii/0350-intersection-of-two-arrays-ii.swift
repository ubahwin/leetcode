class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var table = [Int : Int]()
        
        for i in nums1 {
            if let count = table[i] {
                table[i]! += 1
            } else {
                table[i] = 1
            }
        }
        
        var res = [Int]()
        for i in nums2 {
            if let count = table[i], count >= 1 {
                res.append(i)
                table[i]! -= 1
            }
        }
        return res
    }
}