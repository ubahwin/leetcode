class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var hay = Array(haystack)
        var ne = Array(needle)
        
        var i = 0, j = 0
        
        while i < hay.count {
            if hay[i] == ne[j] {
                j += 1
                if j == ne.count { 
                    return i - j + 1
                }
            } else {
                i = i - j
                j = 0
            }
            i += 1
        }
        
        return -1
    }
}