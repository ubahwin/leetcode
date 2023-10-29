func girki(n1: Int, n2: Int) -> (Int, Int)? {
    if n1 % 2 == 1 {
        return nil
    }

    if n2 % 2 == 1 && n1 == 0 {
        return nil
    }

    var heap: (Int, Int)?

    if n2 % 2 == 1 {
        heap = ((n1 - 2) / 2, n2 / 2 + 1)
    } else {
        heap = (n1 / 2, n2 / 2)
    }

    return heap
}

print(girki(n1: 2, n2: 1)! == (0, 1))
print(girki(n1: 1, n2: 2) == nil)

print(girki(n1: 10, n2: 4)! == (5, 2))
print(girki(n1: 2, n2: 7)! == (0, 4) || girki(n1: 2, n2: 7)! == (2, 3))
print(girki(n1: 0, n2: 0)! == (0, 0))
print(girki(n1: 8, n2: 0)! == (4, 0))
