var input = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
input.append(-2)

var digit = -1
var digitStart = -1
var count = 1

var i = 0
while i < input.count {
    if input[i] == -1 {
        continue
    }

    if input[i] != digit {
        if count >= 3 {
            remove(nums: &input, start: digitStart, end: i)
        }
        digit = input[i]
        digitStart = i
        count = 1
    } else {
        count += 1
    }

    i += 1
}

func remove(nums: inout [Int], start: Int, end: Int) {
    for i in start..<end {
        nums[i] = -1
    }

    if start == 0 || end == nums.count - 1 {
        return
    }

    var left = start - 1
    var right = end

    let curDigit = nums[left] == nums[right] ? nums[left] : -1

    if curDigit == -1 {
        return
    }

    var count = 0
    while nums[left] == curDigit && left > 0 {
        left -= 1
        count += 1
    }
    while nums[right] == curDigit && right < nums.count - 1 {
        right += 1
        count += 1
    }

    if left == 0 && nums[left] == curDigit {
        count += 1
        nums[left] = -1
    }
    if right == nums.count - 1 && nums[right] == curDigit {
        count += 1
    }

    left += 1

    if count >= 3 {
        i = right
        remove(nums: &nums, start: left, end: right)
    }
}

print(input.filter { $0 == -1 }.count)
