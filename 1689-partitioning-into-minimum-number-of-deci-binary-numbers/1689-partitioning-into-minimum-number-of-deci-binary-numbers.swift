class Solution {
    func minPartitions(_ n: String) -> Int {
        var res = 0
        for digit in n {
            res = max(res, digit.wholeNumberValue!)
        }
        return res
    }
}
