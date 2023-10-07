class Solution {
    func integerBreak(_ n: Int) -> Int {
        if n < 4 { return n - 1 }

        var maxProd = 1
        for del in 2..<6 {
            var prod = 0

            if n % del == 0 {
                prod = del.power(n / del)
            } else {
                if n % del == 1 {
                    prod = del.power(n / del - 1) * (del + 1)
                } else {
                    prod = del.power(n / del) * (n % del)
                }
            }
            maxProd = max(maxProd, prod)
        }
        return maxProd
    }
}

extension Int {
    func power(_ power: Int) -> Int {
        return Int(pow(Double(self), Double(power)))
    }
}