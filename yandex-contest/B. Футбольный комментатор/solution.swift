extension Int {
    var abs: Int {
        if self > 0 {
            return self
        }
        return self * -1
    }
}

let first = readLine()!.split(separator: ":").map({ Int($0)! })
let second = readLine()!.split(separator: ":").map({ Int($0)! })
let firstInHome = Int(readLine()!)! == 1

print(goulForFirstTeam(
    firstRound: (first[0], first[1]),
    secondRound: (second[0], second[1]),
    firstInHome: firstInHome
))

func goulForFirstTeam(firstRound: (Int, Int), secondRound: (Int, Int), firstInHome: Bool) -> Int {
    let ourSum = firstRound.0 + secondRound.0
    let enSum = firstRound.1 + secondRound.1

    let diff = enSum - ourSum

    if diff < 0 {
        return 0
    }

    let secondRound = (secondRound.0 + diff, secondRound.1)

    if firstInHome {
        if firstRound.1 < secondRound.0 {
            return diff
        }
    } else {
        if firstRound.0 > secondRound.1 {
            return diff
        }
    }

    return diff + 1
}
