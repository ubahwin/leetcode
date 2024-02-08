func read() -> (Int, Int, [Int]) {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    let n = input[0]
    let m = input[1]

    return (n, m, readLine()!.split(separator: " ").map { Int($0)! })
}

func setup(from arr: [Int]) -> [Int] {
    var sums: [Int] = []

    func generateSums(_ currentIndex: Int, _ currentSum: Int) {
        if currentIndex == arr.count {
            sums.append(currentSum)
            return
        }

        generateSums(currentIndex + 1, currentSum + arr[currentIndex])
        generateSums(currentIndex + 1, currentSum)
    }

    generateSums(0, 0)

    return sums.sorted(by: >)
}

let (n, m, arr) = read()

var sums = setup(from: arr)

var maxOffset = 0
for i in 1..<sums.count {
    if sums[i - 1] >= m {
        continue
    }

    maxOffset = max(sums[i - 1] - sums[i], maxOffset)
}

print(maxOffset - 1)
