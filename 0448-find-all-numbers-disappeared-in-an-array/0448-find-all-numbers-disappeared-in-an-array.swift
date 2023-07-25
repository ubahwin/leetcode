class Solution {
    
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        
        var hashTable = [Int: Bool]()
        
        for i in nums {
            hashTable[i] = true
        }
        
        var result = [Int]()
        for i in 1...nums.count {
            if hashTable[i] == nil {
                result.append(i)
            }
        }
        return result
    }
}