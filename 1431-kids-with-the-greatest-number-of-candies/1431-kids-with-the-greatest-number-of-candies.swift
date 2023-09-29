class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var extraCandy = 0
        for candy in candies {
            if candy > extraCandy {
                extraCandy = candy
            }
        }
        
        var res = [Bool]()
        
        for i in candies {
            if i + extraCandies >= extraCandy {
                res.append(true)
            } else {
                res.append(false)
            }
        }
        return res
    }
}
