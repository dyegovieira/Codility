// https://app.codility.com/programmers/lessons/4-counting_elements/frog_river_one/

import Foundation

//// 18% https://app.codility.com/demo/results/trainingVC9MW2-X4H/
//public func solution(_ X : Int, _ A : inout [Int]) -> Int {
//    var second = -1
//
//    for (index, element) in A.enumerated() {
//        if element == X {
//            second = index
//            break
//        }
//    }
//
//    return second
//}

//// 54% https://app.codility.com/demo/results/training22948Y-8SW/
//public func solution(_ X : Int, _ A : inout [Int]) -> Int {
//    var second = -1
//    var coveredLeaves: [Bool] = [Bool](repeating: false, count: X)
//
//    for (index, a) in A.enumerated() {
//        if a <= X {
//            coveredLeaves[a - 1] = true
//        }
//
//        if coveredLeaves.allSatisfy({$0 == true}) {
//            second = index
//            break
//        }
//        print("\(index) - \(a)")
//    }
//
//    return second
//}

// 100% https://app.codility.com/demo/results/training97G2S9-AN9/
public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var second = -1
    var coveredLeaves: [Bool] = [Bool](repeating: false, count: X)
    var stepsCount = X
    
    for (index, a) in A.enumerated() {
        if a <= X && coveredLeaves[a - 1] == false {
            coveredLeaves[a - 1] = true
            stepsCount -= 1
        }
        
        if stepsCount == 0 {
            second = index
            break
        }
    }
    
    return second
}


var numbersC = [1, 3, 1, 3, 2, 1, 3]
solution(3, &numbersC) // 4

var numbersB = [2, 2, 2, 2, 2]
solution(2, &numbersB) // -1

var numbersA = [1, 3, 1, 4, 2, 3, 5, 4]
solution(5, &numbersA) // 6

