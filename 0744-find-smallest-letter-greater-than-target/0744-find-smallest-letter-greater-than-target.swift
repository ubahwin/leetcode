class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        
        for i in letters {
            if i > target {
                return i
            }
        }
        return letters[0]
    }
}
