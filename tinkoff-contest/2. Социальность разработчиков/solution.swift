func read() -> [Socium] {
    let n = Int(readLine()!)!

    var arr = [Socium]()

    for _ in 0..<n {
        let _ = readLine()

        arr.append(readLine()!
            .split(separator: " ")
            .map { Int($0)! }
        )
    }

    return arr
}

typealias Socium = [Int]

extension Socium {
    var isGraph: Bool {
        let arr = self.sorted(by: >)

        var count = arr.first!

        for i in 1..<arr.count {
            if arr[i] == 1 {
                count -= 1

                if count < 0 { return false }
            } else {
                count += i - 1
            }
        }

        if count >= 0 {
            return true
        }

        return false
    }
}

//test()

let arr = read()

for a in arr {
    if a.isGraph {
        print("Yes")
    } else {
        print("No")
    }
}

func test() {
    print([1000000000].isGraph == true)
    print([1, 1].isGraph == true)
    print([1, 1, 1].isGraph == false)
    print([1, 1, 2, 2].isGraph == true)

    print([3,3,3,2,1,1,1].isGraph == true)
    print([3,3,3,2,1,1,1,1,1,1,1,1].isGraph == false)
    print([5,4,3,2,1].isGraph == true)
}
