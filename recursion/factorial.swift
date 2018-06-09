// this function uses recursion to calculate the factorial
func factorial(_ n: UInt) -> UInt {
    return n < 2 ? 1 : n * factorial(n-1)
}

func main() {
    print("factorial(2) = \(factorial(2))")
    print("factorial(5) = \(factorial(5))")
}

main()
