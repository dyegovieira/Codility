// https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/

import Foundation

//public func solution(_ A : inout [Int]) -> Int {
//    var numbers: [Int] = A
//
//    while numbers.count > 1 {
//        for (indexI, itemI) in numbers.enumerated() {
//            var canContinue = false
//
//            for (indexJ, itemJ) in numbers.enumerated() {
//                if itemI == itemJ && indexI != indexJ {
//                    numbers.remove(at: indexJ)
//                    canContinue = true
//                    break
//                }
//            }
//
//            if canContinue == true {
//                numbers.remove(at: indexI)
//                break
//            }
//        }
//    }
//
//    return numbers[0]
//}

// 100%
public func solution(_ A : inout [Int]) -> Int {
    var result: Int = 0
    
    for a in A {
        result ^= a
    }
    
    return result
}

var array = [1,1,2,3,5,5,2,3,1,5,7,7,6,5,1]
print(solution(&array)) // 6
