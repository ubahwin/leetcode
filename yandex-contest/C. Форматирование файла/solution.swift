let n = Int(readLine()!)!

var a = [Int]()
for _ in 0..<n {
    a.append(Int(readLine()!)!)
}

print(fileFormat(lines: a))

func fileFormat(lines: [Int]) -> Int {
    var count = 0

    for line in lines {
        count += countTap(line: line)
    }

    return count
}

func countTap(line: Int) -> Int {
    var line = line
    var count = 0

    if line >= 4 {
        count += line / 4
        line %= 4
    }

    if line == 3 {
        return count + 2
    }

    return count + line
}

test()

func test() {
    var res = 0

    res = countTap(line: 8)
    print(res == 2 ? "Done" : "Error: \(res)")


    res = countTap(line: 0)
    print(res == 0 ? "Done" : "Error: \(res)")

    res = countTap(line: 9)
    print(res == 3 ? "Done" : "Error: \(res)")

    res = countTap(line: 89)
    print(res == 23 ? "Done" : "Error: \(res)")

    res = countTap(line: 21)
    print(res == 6 ? "Done" : "Error: \(res)")

    res = countTap(line: 23)
    print(res == 7 ? "Done" : "Error: \(res)")

    res = countTap(line: 24)
    print(res == 6 ? "Done" : "Error: \(res)")


    res = fileFormat(lines: [1,4,12,9,0])
    print(res == 8 ? "Done" : "Error: \(res)")

    res = fileFormat(lines: [0,0,0,0,0])
    print(res == 0 ? "Done" : "Error: \(res)")
}
