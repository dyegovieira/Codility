// https://app.codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/

import Foundation

//// 38%
//public func solution(_ A : inout [Int]) -> Int {
//    var minimalDifference = 2000
//    let N = A.count
//
//    for P in 1...max(1, min(4, N - 1)) {
//        var firstPart = 0
//        var secondPart = 0
//
//        for i in 0...(P - 1) {
//            firstPart += A[i]
//        }
//
//        for i in P...(N - 1) {
//            secondPart += A[i]
//        }
//
//        let dif = abs(firstPart - secondPart)
//        minimalDifference = dif < minimalDifference ? dif : minimalDifference
//    }
//
//    return minimalDifference
//}

// 100%
public func solution(_ A : inout [Int]) -> Int {
    let P = 1
    var splitIndex = P
    var firstPartSum = A[splitIndex - 1]
    var secondPartSum = Array(A[splitIndex..<A.count]).reduce(0, +)
    var minimalDifference =  abs(firstPartSum - secondPartSum)
    
    if minimalDifference == 0 {
        return minimalDifference
    }
    
    splitIndex += 1
    
    while splitIndex < A.count {
        firstPartSum += A[splitIndex - 1]
        secondPartSum -= A[splitIndex - 1]
        
        let dif = abs(firstPartSum - secondPartSum)
    
        if dif == 0 {
            return dif
        }
        
        if dif < minimalDifference {
            minimalDifference = dif
        }
        
        splitIndex += 1
    }
    
    return minimalDifference
}

var numbersA: [Int] = [3, 1, 2, 4, 3]
solution(&numbersA) // 1

var numbersB: [Int] = [-1000, 1000]
solution(&numbersB) // 2000
