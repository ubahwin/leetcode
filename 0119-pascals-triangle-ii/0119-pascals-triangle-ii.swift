class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var res = [[Int]]()

        var curArr = [Int](repeating: 1, count: 1)
        for n in 2...rowIndex + 2 {
            var newArr = [Int](repeating: 1, count: n)

            for i in 1..<curArr.count {
                newArr[i] = curArr[i - 1] + curArr[i]
            }
            res.append(curArr)
            curArr = newArr
        }
                
        return res[rowIndex]
    }
}