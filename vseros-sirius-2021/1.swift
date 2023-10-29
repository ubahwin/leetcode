func relax(n: Int, d: Int) -> Int {
    var start = 1

    if d > 1 {
        start = 9 - d
    }

    return (n - start) / 7
}

// Tests
print(relax(n: 14, d: 1) == 2)
print(relax(n: 17, d: 3) == 1)
print(relax(n: 20, d: 1) == 2)
print(relax(n: 20, d: 4) == 2)
