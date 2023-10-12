class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        var newMatrix = [[Int]]()
        
        for i in 0..<n {
            var newRow = [Int]()
            
            for j in (0..<n).reversed() {
                newRow.append(matrix[j][i])
            }
            
            newMatrix.append(newRow)
        }
        
        matrix = newMatrix
    }
}