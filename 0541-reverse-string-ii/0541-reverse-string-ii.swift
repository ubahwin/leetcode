class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var array = Array(s)
        let n = array.count

        var i = 0
        var j = 0
        while i < n {
            j = min(i + k - 1, n - 1)
            rev(s: &array, a: i, b: j)
            i += 2 * k
        }

        var res = ""
        for i in array {
            res += String(i)
        }

        return res
    }

    func rev(s: inout [Character], a: Int, b: Int) {
        var i = a, j = b
        while i < j {
            let tmp = s[i]
            s[i] = s[j]
            s[j] = tmp
            i += 1
            j -= 1
        }
    }
}