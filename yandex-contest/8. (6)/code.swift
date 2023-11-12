import Foundation

func tri(n: Int) -> [Int] {
    var res = [Int]()
    
    var a = 0
    while triPow(a: a) < n {
        a += 1
    }
    a -= 1
    var curVal = triPow(a: a)
    
    res.append(a)
    
    while curVal != n && a > 0 {
        a -= 1
        while curVal + triPow(a: a) > n {
            a -= 1
        }
        res.append(a)
        curVal += triPow(a: a)
    }
    
    if curVal == n {
        return res
    }

    return []
}

func triPow(a: Int) -> Int {
    return Int(pow(3.0, Double(a)))
}

func start(n: Int) {
    let tri: [Int] = tri(n: n)

    if tri != [] {
        print("YES")
        print(tri.count)
        var res = ""
        for n in tri {
            res += n.description + " "
        }
        print(res)
    } else {
        print("NO")
    }
}

func test() {
    print(tri(n: 10) == [2, 0])
    print(tri(n: 18) == [])
    
    start(n: 10)
    print("\n")
    start(n: 18)
    print("\n")
    start(n: 30)
    print("\n")
    start(n: 8)
}

test()

let n = Int(readLine()!)!

start(n: n)
