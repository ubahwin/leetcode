class Solution {
    func reverseWords(_ s: String) -> String {
        var array = Array(s)
        
        var i = 0
        for j in 0..<array.count {
            if array[j] == " " {
                reverse(s: &array, a: i, b: j - 1)
                i = j + 1
            }
        }
        reverse(s: &array, a: i, b: array.count - 1)
        var res = ""
        for char in array {
            res += String(char)
        }
        return res
    }
    
    func reverse(s: inout [Character], a: Int, b: Int) {
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