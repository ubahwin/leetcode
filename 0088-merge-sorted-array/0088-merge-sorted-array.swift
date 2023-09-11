class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var back = m + n - 1
        var i = m - 1
        var j = n - 1
        
        while i >= 0 && j >= 0 {
            if nums2[j] > nums1[i] {
                nums1[back] = nums2[j]
                j -= 1
            } else {
                nums1[back] = nums1[i]
                i -= 1
            }
            back -= 1
        }
        
        while j >= 0 {
            nums1[back] = nums2[j]
            j -= 1
            back -= 1
        }
    }
}