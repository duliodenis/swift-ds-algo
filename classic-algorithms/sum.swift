// Sum the first n natural numbers

// naive approach with linear time complexity: O(n)
func sum(_ n: Int) -> Int {
    var sum = 0
    for i in 1 ... n {
        sum += i
    }
    return sum
}

// using the series formula we achieve constant time complexity: O(1)
func sumSeries(_ n: Int) -> Int {
    return (n * (n + 1)) / 2
}

func main() {
    print("The sum of the first one hundred natural numbers is \(sum(100))")
    print("The sum series of the first one hundred natural numbers is also \(sumSeries(100))")
}

main()
