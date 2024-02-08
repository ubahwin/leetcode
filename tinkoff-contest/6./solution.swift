func read() -> (Int, Int, [Int]) {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    let n = input[0]
    let q = input[1]

    return (n, q, readLine()!.split(separator: " ").map { Int($0)! })
}

func add(_ arr: inout [Int], l: Int, r: Int, x: Int) {
    for i in l...r {
        arr[i] += x
    }
}

func search(_ arr: [Int], l: Int, r: Int, k: Int, b: Int) {
    var maximum = 0

    var mins = [Int]()

    for i in l - 1...r - 1 {
        mins.append(min(arr[i], k * i + b))
    }

    for min in mins {
        maximum = max(min, maximum)
    }

    print(maximum)
}

var (n, q, arr) = read()

for _ in 0..<q {
    let components = readLine()!.split(separator: " ")
    if components.count == 5 {
        search(
            arr,
            l: Int(components[1])!,
            r: Int(components[2])!,
            k: Int(components[3])!,
            b: Int(components[4])!
        )
    } else if components.count == 4 {
        add(
            &arr,
            l: Int(components[1])!,
            r: Int(components[2])!,
            x: Int(components[3])!
        )
    }
}
