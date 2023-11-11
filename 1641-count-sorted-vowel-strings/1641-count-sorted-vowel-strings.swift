class Solution {
    func countVowelStrings(_ n: Int) -> Int {
        var a = 1
        var b = 1
        var c = 1
        var d = 1
        var e = 1

        for _ in 1..<n {
            a += b + c + d + e
            b += c + d + e
            c += d + e
            d += e
        }

        return a + b + c + d + e
    }
}