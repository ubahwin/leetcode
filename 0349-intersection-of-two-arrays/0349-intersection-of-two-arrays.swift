class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var table = [Int : Bool]()
        
        for i in nums1 {
            table[i] = true
        }
        var res = [Int]()
        for i in nums2 {
            if let consist = table[i], consist {
                res.append(i)
                table[i] = false
            }
        }
        return res
    }
}