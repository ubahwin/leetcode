class Solution {    
    func reverseVowels(_ s: String) -> String {
        let n = s.count
        var array = Array(s)
        
        var left = 0, right = n - 1
        while left < right {
            if vowel(array[left]) && vowel(array[right]) {
                let tmp = array[left]
                array[left] = array[right]
                array[right] = tmp
                left += 1
                right -= 1
            } else {
                while !vowel(array[left]) && left < right {
                    left += 1
                }
                while !vowel(array[right]) && left < right {
                    right -= 1
                }
            }
        }
        
        var res = ""
        for char in array {
            res += String(char)
        }
        
        return res
    }
    func vowel(_ char: Character) -> Bool {
        let vowels: [Character] = ["a", "e", "i", "o", "u"]

        for c in vowels {
            if c == char || c.uppercased() == String(char) {
                return true
            }
        }
        return false
    }
}