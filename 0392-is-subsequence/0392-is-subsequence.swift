class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var iS = 0, iT = 0
        let nT = t.count - 1, nS = s.count - 1

        while iT <= nT + 1 {
            if iS > nS {
                return true
            }
            if iT > nT {
                return false
            }
            var sChar = s[s.index(s.startIndex, offsetBy: iS)]
            var tChar = t[t.index(t.startIndex, offsetBy: iT)]
            if sChar != tChar {
                iT += 1
            } else {
                iT += 1
                iS += 1
            }
        }
        return false
    }
}