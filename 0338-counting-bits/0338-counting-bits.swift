class Solution {
    func countBits(_ n: Int) -> [Int] {
        var res = [Int]()
        
        for i in 0...n {
            res.append(toBinary(i))
        }
        return res
    }
    
    func toBinary(_ n: Int) -> Int {
        var res = 0
        var num = n
        while num > 0 {
            if num % 2 == 1 {
                res += 1
            }
            num /= 2
        }
        return res
    }
}