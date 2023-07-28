class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var left = 0
        var right = letters.count - 1
        
        while left <= right {
            let middle = (left + right) / 2
            
            if letters[middle] > target {
                right = middle - 1
            } else {
                left = middle + 1
            }
        }
        return letters[left % letters.count]
    }
}
