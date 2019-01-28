// https://app.codility.com/programmers/lessons/1-iterations/binary_gap/

import Foundation

// 100%
public func solution(_ N : Int) -> Int {
    let binary: [String] = String(N, radix: 2).map({return String($0)})
    var maxSequence = 0
    var currentCount = 0
    
    for i in 0..<binary.count {
        if binary[i] == "0" {
            currentCount += 1
            
            if i <= binary.count - 2 {
                if binary[i + 1] == "1" {
                    if currentCount > maxSequence {
                        maxSequence = currentCount
                    }
                }
            }
        } else {
            currentCount = 0
        }
    }

    return maxSequence
}


solution(5) // 1
solution(1041) // 5
solution(32) // 0
