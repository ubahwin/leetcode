let vasia = readLine()!.split(separator: " ").map({ Int($0)! })
let masha = readLine()!.split(separator: " ").map({ Int($0)! })

let P = vasia[0]
let V = vasia[1]
let Q = masha[0]
let M = masha[1]

let vasiaRange = P - V...P + V
let mashaRange = Q - M...Q + M

var sum = 0
for wood in vasiaRange {
    if mashaRange.contains(wood) {
        sum -= 1
    }
    sum += 1
}

for _ in mashaRange {
    sum += 1
}

print(sum)
