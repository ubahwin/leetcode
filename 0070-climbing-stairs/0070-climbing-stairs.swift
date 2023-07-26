class Solution {
    func climbStairs(_ n: Int) -> Int {
        var val1 = 1
        var val2 = 1

        for _ in 1..<n {
            let next = val1 + val2
            val1 = val2
            val2 = next
        }
        
        return val2
    }
}




//==============
// My Solution
//==============
//
// func permutations(k1: Int, k2: Int) -> Int {
//     return (factorial(k1 + k2)) / (factorial(k1) * factorial(k2))
// }

// func factorial(_ n: Int) -> Int {
//     if n < 1 { return 1 }
//     var result = 1
//     for i in 1...n {
//         result *= i
//     }
//     return result
// }

// func climbStairs(_ n: Int) -> Int {
//     var twoCount = n / 2
//     var oneCount = 0

//     if n % 2 != 0 {
//         oneCount += 1
//     }

//     var result = 1
//     while twoCount != 0 {
//         result += permutations(k1: twoCount, k2: oneCount)
//         twoCount -= 1
//         oneCount += 2
//     }
//     return result
// }

// 2 = 11 + 2 = 2
// 3 = 21 + 12 + 111 = 3
// 4 = 1111 + 22 + 121 + 211 + 112 = 5
// 5 = 11111 + 221 + 122 + 212 + 1112 + 1121 + 1211 + 2111 = 8
// 6 = 111111 + 222 + ...