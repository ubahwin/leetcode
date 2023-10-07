class Solution {
    func minimumSum(_ num: Int) -> Int {
        var arr = [Int]()
        var number = num
        
        while number != 0 {
            arr.append(number % 10)
            number /= 10
        }
        
        // 6242 -> 2246
        arr.sort()
        
        // 2246 -> 24 + 26 = min sum
        var num1 = Int(String(arr[0]) + String(arr[2]))!
        var num2 = Int(String(arr[1]) + String(arr[3]))!

        return num1 + num2
    }
}