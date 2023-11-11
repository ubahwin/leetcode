class Solution {
    func countHomogenous(_ s: String) -> Int {
        var arr = Array(s)
        var res = 1
        var count = 1

        for i in 1..<arr.count {
            if arr[i - 1] == arr[i] {
                count += 1
            } else {
                count = 1
            }

            res += count
        }

        return res % 1000000007
    }
}