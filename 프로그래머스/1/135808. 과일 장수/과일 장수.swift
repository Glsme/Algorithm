import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    guard score.count >= m else { return 0 }
    let score = score.sorted(by: >)
    var result = 0
    
    for i in 1..<score.count {
        if (i + 1) % m == 0 {
            result += m * score[i]
        }
    }
    
    return result
}