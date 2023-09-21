class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var g = g.sorted()
        var s = s.sorted()
        
        var child = 0
        
        for i in s {
            if g[child] <= i {
                child += 1
                if child == g.count { return child }
            }
        }
        
        return child
    }
}
