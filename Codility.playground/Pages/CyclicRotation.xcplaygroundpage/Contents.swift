// https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/

import Foundation

// 100%
public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    for _ in 0..<K {
        guard let last = A.last else {
            break
        }
        A.removeLast()
        A.insert(last, at: 0)
    }
    
    return A
}

var numbers: [Int] = [1, 2, 3, 4, 5]
solution(&numbers, 3) // [3, 4, 5, 1, 2]
