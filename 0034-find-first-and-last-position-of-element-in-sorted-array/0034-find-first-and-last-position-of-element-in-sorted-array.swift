class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var indexes = [Int]()

        var indexAnyTarget = binSearch(arr: nums, target: target)

        if indexAnyTarget == -1 { return [-1, -1] }
        
        var indexLeftTarget = indexAnyTarget
        var indexRightTarget = indexAnyTarget

        for i in (0...indexAnyTarget).reversed() {
            indexLeftTarget = i
            if nums[i] != target {
                indexLeftTarget += 1
                break
            }
        }
        for i in indexAnyTarget..<nums.count {
            indexRightTarget = i
            if nums[i] != target {
                indexRightTarget -= 1
                break
            }
        }

        indexes.append(indexLeftTarget)
        indexes.append(indexRightTarget)

        return indexes
    }
    
    func binSearch(arr: [Int], target: Int) -> Int {
        var left = 0, right = arr.count - 1

        while left <= right {
            let mid = left + (right - left) / 2

            if arr[mid] == target {
                return mid
            }

            if arr[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return -1
    }
}
