// this code illustrates constant time
import Foundation
import QuartzCore

class BenchTimer {
    static func measureBlock(closure:() -> Void) -> CFTimeInterval {
        let runCount = 10
        var executionTimes = Array<Double>(repeating: 0.0, count: runCount)
        for i in 0..<runCount {
            let startTime = CACurrentMediaTime()
            closure()
            let endTime = CACurrentMediaTime()

            executionTimes[i] = endTime - startTime
        }
        return (executionTimes.reduce(0, +)) / Double(runCount)
    }
}

func startsWithZero(array: [Int]) -> Bool {
    guard array.count != 0 else { return false }

    return array.first == 0 ? true : false
}

func main() {
    let smallArray = [1,0,0]
    var execTime = BenchTimer.measureBlock {
        _ = startsWithZero(array: smallArray)
    }
    print("Average execution time for smallArray is \(execTime)")

    let largeArray = Array<Int>(repeating: 0, count: 10000000)
    execTime = BenchTimer.measureBlock {
        _ = startsWithZero(array: largeArray)
    }
    print("Average execution time for largeArray is \(execTime)")
}

main()