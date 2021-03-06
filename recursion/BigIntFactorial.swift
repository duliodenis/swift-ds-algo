// a factorial for big integers

typealias BigInt = _BigInt<UInt>

func factorial(_ n: BigInt) -> BigInt {
    return n < 2 ? 1 : n * factorial(n-1)
}

func main() {
    print("factorial(2) = \(factorial(2))")
    print("factorial(5) = \(factorial(5))")
}

main()
