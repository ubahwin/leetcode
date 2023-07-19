class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var hashTable: [Int : Bool] = [:]
        
        for i in nums {
            if let value = hashTable[i] {
                return true
            }
            hashTable[i] = true
        }
        return false
    }
}
