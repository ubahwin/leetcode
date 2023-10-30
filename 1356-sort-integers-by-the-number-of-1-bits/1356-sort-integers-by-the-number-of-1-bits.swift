class Solution {
    func sortByBits(_ arr: [Int]) -> [Int] {
        return arr.sorted().sorted(by: { countBinOne(n: $0) < countBinOne(n: $1) })
    }

    func countBinOne(n: Int) -> Int {
        var num = n
        var countOne = 0

        while num != 0 {
            if num % 2 == 1 {
                countOne += 1
            }
            num /= 2
        }

        return countOne
    }
}
