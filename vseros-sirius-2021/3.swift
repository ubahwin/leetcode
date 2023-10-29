func countTriangle(details: [Int]) -> Int {
    var count = 0

    var left = 0
    for right in 1..<details.count {
        if details[left] != details[right] {
            count += (right - left) / 3
            left = right
        }
    }

    return count
}

print(countTriangle(details: [1,1,1,1,2,2]) == 1)
print(countTriangle(details: [1,1,3,3,5,5]) == 0)
