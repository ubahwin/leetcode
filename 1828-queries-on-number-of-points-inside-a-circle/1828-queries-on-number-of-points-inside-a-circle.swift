class Solution {
    func countPoints(_ points: [[Int]], _ queries: [[Int]]) -> [Int] {
        var res = [Int]()

        for circle in queries {
            let circleX = circle[0]
            let circleY = circle[1]
            let circleR = circle[2]

            var count = 0

            for point in points {
                let pointX = point[0]
                let pointY = point[1]

                // (x - x0) (y - y0)
                let x = pointX - circleX
                let y = pointY - circleY

                // x^2 + y^2 <= R^2 -> point inside circle
                let fun = Int(pow(Double(x), 2) + pow(Double(y), 2))

                if fun <= Int(pow(Double(circleR), 2)) {
                    count += 1
                }
            }

            res.append(count)
        }

        return res
    }
}