class Solution {
    func isHappy(_ n: Int) -> Bool {
        var array = numToArray(num: n)

        var s = 0
        while s != 1 {
            s = 0
            for i in array {
                s += i * i
            }
            if s == 4 { return false}
            array = numToArray(num: s)
        }
        return true
    }

    func numToArray(num: Int) -> [Int] {
        var array = [Int]()
        var n = num
        while n > 0 {
            array.append(n % 10)
            n /= 10
        }
        return array
    }
}