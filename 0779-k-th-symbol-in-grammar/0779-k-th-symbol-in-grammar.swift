class Solution {
    func kthGrammar(_ n: Int, _ k: Int) -> Int {
        let bin = String(k - 1, radix: 2)
        var count = 0
        
        for char in bin {
            if char == "1" {
                count += 1
            }
        }

        return count & 1
    }
}
