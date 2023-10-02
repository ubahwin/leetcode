class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var table = [Int: Int]()
        let n = nums2.count

        for i in 0..<n {
            for j in i + 1..<n {
                if nums2[i] < nums2[j] {
                    table[nums2[i]] = nums2[j]
                    break
                }
            }
        }

        var res = [Int]()
        for i in nums1 {
            if let num = table[i] {
                res.append(num)
            } else {
                res.append(-1)
            }
        }

        return res
    }
}
