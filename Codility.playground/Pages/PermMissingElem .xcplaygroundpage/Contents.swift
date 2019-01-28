// https://app.codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/

import Foundation

// 100%
public func solution(_ A : inout [Int]) -> Int {
    let sum = A.reduce(0, +)
    let n = A.count + 1
    let pa = ((n + 1) * n) / 2
    return pa - sum
}

var numbers: [Int] = [2, 3, 1, 5]
solution(&numbers) // 4
