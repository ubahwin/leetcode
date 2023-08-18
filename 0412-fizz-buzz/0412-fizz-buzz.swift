class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var answer = [String](repeating: "", count: n)
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                answer[i-1] = "FizzBuzz"
            } 
            else if i % 3 == 0 {
                answer[i-1] = "Fizz"
            } 
            else if i % 5 == 0 {
                answer[i-1] = "Buzz"
            }
            else {
                answer[i-1] = String(i)
            }
        }
        return answer
    }
}