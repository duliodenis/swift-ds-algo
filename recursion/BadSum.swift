import Foundation

// badSum causes a Stack Overflow without a base case
func badSum(_ n: Int) -> Int {
    return n + badSum(n - 1)
}

// goodSum is better - adds a base case - but only works for positive numbers
func goodSum(_ n: Int) -> Int {
    if n == 0 { return 0 }
    return n + goodSum(n - 1)
}

// greatSum takes case of both a base case and the direction of the recursion
func greatSum(_ n: Int) -> Int {
    guard n > 0 else { return 0 }
    return n + greatSum(n - 1)
}

func main() {
    // let result = badSum(3) stack overflow
    // let result = goodSum(-1) works for positive integers
    let result = greatSum(-6)
    print(result)
}

main()
