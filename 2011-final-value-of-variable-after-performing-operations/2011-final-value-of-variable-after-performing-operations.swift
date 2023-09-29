class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var x = 0
        
        for oper in operations {
            for char in oper {
                if char == "-" {
                    x -= 1
                    break
                }
                if char == "+" {
                    x += 1
                    break
                }
            }
        }
        
        return x
    }
}