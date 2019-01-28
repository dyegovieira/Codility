// https://app.codility.com/programmers/lessons/5-prefix_sums/genomic_range_query/

import Foundation


// 62% https://app.codility.com/demo/results/trainingHGH34P-4Q8/
public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    func valueFor(_ letter: String) -> Int {
        switch letter {
        case "A": return 1
        case "C": return 2
        case "G": return 3
        case "T": return 4
        default: return 0
        }
    }
    let splitedSValues: [Int] = S.map({return valueFor(String($0))})
    var answersQueries: [Int] = []

    for i in 0..<P.count {
        let posP = P[i]
        let posQ = Q[i]

        answersQueries.append(splitedSValues[posP...posQ].min()!)
    }

    return answersQueries
}

var s2 = "AC"
var p2 = [0, 0, 1]
var q2 = [0, 1, 1]
solution(&s2, &p2, &q2) // [1, 1, 2]

var s1 = "CAGCCTA"
var p1 = [2, 5, 0]
var q1 = [4, 5, 6]
solution(&s1, &p1, &q1) // [2, 4, 1]
