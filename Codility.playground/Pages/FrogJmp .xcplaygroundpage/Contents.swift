// https://app.codility.com/programmers/lessons/3-time_complexity/frog_jmp/

import Foundation

//public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
//
//    var currentPos: Int = X
//    var jumpCount: Int = 0
//
//    while currentPos < Y {
//        currentPos += D
//        jumpCount += 1
//    }
//
//    return jumpCount
//}

// 100%
public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    if (Y - X) % D == 0 {
        return (Y - X) / D
    } else {
        return (Y - X + D) / D
    }
}


solution(10, 70, 19) // 4
