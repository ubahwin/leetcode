func read() -> [String] {
    let n = Int(readLine()!)!

    var arr = [String]()

    for _ in 0..<n {
        arr.append(readLine()!)
    }

    return arr
}

typealias Pattern = [Character: Int]

extension String {
    func isAnagram(for pattern: Pattern) -> Bool {
        var pattern = pattern

        for char in self {
            if pattern[char] == nil { return false }

            pattern[char]! -= 1

            if pattern[char]! == 0 {
                pattern[char] = nil
            }
        }

        if !pattern.isEmpty {
            return false
        }
        return true
    }
}

let arr = read()
let tinkoff: Pattern = [
    "T": 1,
    "I": 1,
    "N": 1,
    "K": 1,
    "O": 1,
    "F": 2
]

for string in arr {
    if string.isAnagram(for: tinkoff) {
        print("Yes")
    } else {
        print("No")
    }
}

func test() {
    print("TINKOFF".isAnagram(for: tinkoff) == true)
    print("TINKOF".isAnagram(for: tinkoff) == true)
    print("TIKOFF".isAnagram(for: tinkoff) == true)
    print("ITNKOFF".isAnagram(for: tinkoff) == true)
}
