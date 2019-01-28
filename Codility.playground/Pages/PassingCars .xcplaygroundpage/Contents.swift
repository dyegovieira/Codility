// https://app.codility.com/programmers/lessons/5-prefix_sums/passing_cars/

import Foundation

// 100% https://app.codility.com/demo/results/trainingMCVCVB-33K/
public func solution(_ A : inout [Int]) -> Int {
    var pairs = 0
    var eastIndexes: [Int] = []
    
    for i in 0..<A.count {
        if A[i] == 0 {
            eastIndexes.append(i)
        } else {
            pairs += eastIndexes.count
        }
        
        if pairs > 1000000000 {
            return -1
        }
    }
    
    return pairs
}


var numbersC: [Int] = [1, 0]
solution(&numbersC) //0

var numbersB: [Int] = [1]
solution(&numbersB) //0

var numbersA: [Int] = [0, 1, 0, 1, 1]
solution(&numbersA) //5
