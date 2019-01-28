// https://app.codility.com/programmers/lessons/4-counting_elements/perm_check/

import Foundation


//// 75%
//public func solution(_ A : inout [Int]) -> Int {
//
//    return A.reduce(0, +) == pa(initial: 1, total: A.count) ? 1 : 0
//}
//
//func pa(initial: Int, total: Int) -> Int {
//    return ((initial + total) * total) / 2
//}


//// 100%
//public func solution(_ A : inout [Int]) -> Int {
//    let highestElement = max(A.max()!, A.count) + 1
//
//    if highestElement > A.count + 1 {
//        return 0
//    }
//
//    var elementsCheck = [Bool](repeating: false, count: highestElement)
//
//    for a in A {
//        if elementsCheck[a] {
//            return 0
//        }
//
//        if a > A.count {
//            return 0
//        }
//
//        elementsCheck[a] = true
//    }
//
//    for i in 1..<elementsCheck.count {
//        if elementsCheck[i] == false {
//            return 0
//        }
//    }
//
//    return 1
//}

// 100%
public func solution(_ A : inout [Int]) -> Int {
    let aSorted = A.sorted()
    
    for i in 0..<aSorted.count {
        if aSorted[i] != i + 1 { return 0 }
    }
    
    return 1
}


var numbers: [Int] = [4, 1, 2, 3] // 1
//var numbers: [Int] = [4, 1, 3, 3] // 0
//var numbers: [Int] = [0, 2, 2, 2] // 0
//var numbers: [Int] = [1000000000] // 0
//var numbers: [Int] = [0] // 0
solution(&numbers)
