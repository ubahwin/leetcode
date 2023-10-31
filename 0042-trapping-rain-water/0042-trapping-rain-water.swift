class Solution {
    func trap(_ height: [Int]) -> Int {
        var count = 0
        var lastUp = 0

        for i in 1..<height.count {
            if height[i - 1] > height[i] {
                if height[lastUp] < height[i] {
                    lastUp = i - 1
                }
            }

            if height[i - 1] < height[i] {
                if height[lastUp] <= height[i] {
                    count += countOfCurPool(height, from: lastUp, to: i)
                    lastUp = i
                }
            }
        }

        var arr = [Int]()
        for i in (lastUp..<height.count).reversed() {
            arr.append(height[i])
        }

        lastUp = 0

        for i in 1..<arr.count {
            if arr[i - 1] > arr[i] {
                if arr[lastUp] < arr[i] {
                    lastUp = i - 1
                }
            }

            if arr[i - 1] < arr[i] {
                if arr[lastUp] <= arr[i] {
                    count += countOfCurPool(arr, from: lastUp, to: i)
                    lastUp = i
                }
            }
        }

        return count
    }

    func countOfCurPool(_ height: [Int], from a: Int, to b: Int) -> Int {
        var count = 0

        let minEdge = min(height[a], height[b])

        for i in a...b {
            let div = minEdge - height[i]
            if div > 0 {
                count += div
            }
        }

        return count
    }
}
