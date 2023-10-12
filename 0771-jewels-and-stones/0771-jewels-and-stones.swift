class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var set = Set<Character>()
        
        var jewels = Array(jewels)
        
        for jew in jewels {
            set.insert(jew)
        }
        
        var count = 0
        var stones = Array(stones)
        
        for stone in stones {
            if set.contains(stone) {
                count += 1
            }
        }
        
        return count
    }
}