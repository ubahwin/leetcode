class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var s = Array(s)
        var t = Array(t)
        
        var dict = [Character: Int]()
        
        for char in s {
            if dict[char] == nil {
                dict[char] = 1
            } else {
                dict[char]! += 1
            }
        }

        for char in t {
            if dict[char] == nil {
                return false
            }

            dict[char]! -= 1
            
            if dict[char]! == 0 {
                dict[char] = nil
            }
        }

        if !dict.isEmpty {
            return false
        }
        return true
    }
}