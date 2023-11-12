// Цветы чето там
let input = readLine()!.split(separator: " ").map { Int($0)! }
let k = input[0]
let t = input[1]
var array = Array(repeating: 0, count: t)

for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    let start = input[0] - 1
    let end = input[1] - 1
    let per = input[2]

    let edge = end + per > t ? t : end + per
    for i in end..<edge {
        array[i] = 1
    }
    print(array)
}

if array.contains(0) {
    print("NO")
} else {
    print("YES")
}
