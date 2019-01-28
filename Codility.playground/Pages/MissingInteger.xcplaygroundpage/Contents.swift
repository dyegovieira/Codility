// https://app.codility.com/programmers/lessons/4-counting_elements/missing_integer/

import Foundation

//// 22% https://app.codility.com/demo/results/demoFC3E6S-N9E/
//public func solution(_ A : inout [Int]) -> Int {
//    let sortedA = A.sorted()
//    var smallestInteger = 0
//
//    for i in 0..<sortedA.count {
//        if i == sortedA.count - 1 {
//            break
//        }
//
//        let dif = sortedA[i + 1] - sortedA[i]
//
//        if dif > 1 {
//            smallestInteger = sortedA[i] + 1
//
//            if smallestInteger <= 0 {
//                return 1
//            }
//
//            break
//        }
//    }
//
//    if smallestInteger == 0 {
//        return sortedA.max()! + 1
//    }
//
//    return smallestInteger
//}

// 100%
public func solution(_ A : inout [Int]) -> Int {
    var smallestInteger = 1
    let sortedA = A.sorted()
    
    for a in sortedA {
        if a == smallestInteger {
            smallestInteger += 1
        }
    }
    
    return smallestInteger
}

var numbers =  [1, 3, 6, 4, 1, 2] // 5
//var numbers: [Int] =  [1, 2, 3] // 4
//var numbers: [Int] =  [-1, -3] // 1
//var numbers: [Int] = [2]
solution(&numbers)
