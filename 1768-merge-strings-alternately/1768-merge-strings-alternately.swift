class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var word1 = Array(word1)
        var word2 = Array(word2)
        
        var res = ""
        var i = 0, j = 0
        while i < word1.count || j < word2.count {
            if i < word1.count {
                res += String(word1[i])
                i += 1
            }
            if j < word2.count {
                res += String(word2[j])
                j += 1
            }
        }
        
        return res
    }
}