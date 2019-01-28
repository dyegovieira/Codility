// https://app.codility.com/programmers/lessons/4-counting_elements/max_counters/

import Foundation

//// 66% https://app.codility.com/demo/results/trainingBQ7UD9-GEA/
//public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
//    var counters = [Int](repeating: 0, count: N)
//    var currentMaxCounter = 0
//
//    for a in A {
//        let k = a - 1
//
//        if a >= N + 1 {
//            for i in 0..<counters.count {
//                counters[i] = currentMaxCounter
//            }
//        } else {
//            counters[k] += 1
//
//            if counters[k] > currentMaxCounter {
//                currentMaxCounter = counters[k]
//            }
//        }
//    }
//
//    return counters
//}

//// 88% https://app.codility.com/demo/results/trainingZA98DS-F8V/
//public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
//    var counters = [Int](repeating: 0, count: N)
//    var currentMaxCounter = 0
//
//    for a in A {
//        let k = a - 1
//
//        if a >= N + 1 {
//            counters = [Int](repeating: currentMaxCounter, count: N)
//        } else {
//            counters[k] += 1
//
//            if counters[k] > currentMaxCounter {
//                currentMaxCounter = counters[k]
//            }
//        }
//    }
//
//    return counters
//}

// 100% https://app.codility.com/demo/results/training8T89KY-RK9/
public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var counters = [Int](repeating: 0, count: N)
    var currentMaxCounter = 0

    for a in A {
        let k = a - 1

        if a >= N + 1 {
            if currentMaxCounter != 0 {
                counters = [Int](repeating: currentMaxCounter, count: N)
                currentMaxCounter = 0
            }
        } else {
            counters[k] += 1

            if counters[k] > currentMaxCounter {
                currentMaxCounter = counters[k]
            }
        }
    }

    return counters
}


var numbersB: [Int] = [2, 1, 1, 2, 1]
solution(1, &numbersB) // [3]

var numbersA: [Int] = [3, 4, 4, 6, 1, 4, 4]
solution(5, &numbersA) //[3, 2, 2, 4, 2]
