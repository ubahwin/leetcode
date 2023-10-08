class Solution {
    var stack = [String]()
    
    func reverseWords(_ s: String) -> String {
        var arr = Array(s)
        
        var i = 0, j = 0
        while arr[i] == " " {
            i += 1
        }
        while j < arr.count && i < arr.count {
            if arr[j] == " " {
                if i < j {
                    addWord(arr: &arr, a: i, b: j)
                }
                while arr[j] == " " {
                    j += 1
                    if j == arr.count { break }
                }
                i = j
            } else {
                j += 1
            }
        }
        if i < arr.count {
            addWord(arr: &arr, a: i, b: arr.count)
        }
        var res = ""
        for _ in 0..<stack.count {
            res += stack.popLast()! + " "
        }
        res.removeLast()
        return res
    }
    
    func addWord(arr: inout [Character], a: Int, b: Int) {
        var word = ""
        for i in a..<b {
            word += String(arr[i])
        }
        stack.append(word)
    }
}
