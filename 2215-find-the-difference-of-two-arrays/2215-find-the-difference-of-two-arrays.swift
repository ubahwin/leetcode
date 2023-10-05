class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var table = [Int: Bool]()

        for num in nums1 {
            table[num] = true
        }

        var ans = [[Int]](repeating: [], count: 2)
        for num in nums2 {
            if table[num] == nil {
                ans[1].append(num)
                table[num] = false
                continue
            }
            if table[num]! {
                table[num] = false
            }
        }

        for num in table {
            if num.value {
                ans[0].append(num.key)
            }
        }

        return ans
    }
}
