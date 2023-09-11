class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = Array(s)
        var i = 0, j = s.count - 1
        
        while i < j {
            while (s[i] == " " || s[i] == "," || s[i] == ":" || s[i] == "." || s[i] == "@" || s[i] == "#" || s[i] == "_" || s[i] == "[" || s[i] == "]" || s[i] == "{" || s[i] == "}" || s[i] == "\\" || s[i] == "'" || s[i] == "\"" || s[i] == "-" || s[i] == "?" || s[i] == ";" || s[i] == "!" || s[i] == "(" || s[i] == ")" || s[i] == "`") {
                i += 1
                if i == s.count - 1 { return true }
            }

            while (s[j] == " " || s[j] == "," || s[j] == ":" || s[j] == "." || s[j] == "@" || s[j] == "#" || s[j] == "_" || s[j] == "[" || s[j] == "]" || s[j] == "{" || s[j] == "}" || s[j] == "\\" || s[j] == "'" || s[j] == "\"" || s[j] == "-" || s[j] == "?" || s[j] == ";" || s[j] == "!" || s[j] == "(" || s[j] == ")" || s[j] == "`") {
                j -= 1
                if j == 0 { return true }
            }
            if s[i].lowercased() != s[j].lowercased() {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}