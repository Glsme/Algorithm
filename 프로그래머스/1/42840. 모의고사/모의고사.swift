import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let n = [1, 2, 3, 4, 5]
    let m = [2, 1, 2, 3, 2, 4, 2, 5]
    let o = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var scores = [1: 0, 2: 0, 3: 0]
    
    for i in 0..<answers.count {
        if n[i % 5] == answers[i] {
            scores[1]! += 1
        } 
        
        if m[i % 8] == answers[i] {
            scores[2]! += 1
        } 
        
        if o[i % 10] == answers[i] {
            scores[3]! += 1
        }
    }
    
    let result = scores.sorted { $0.value > $1.value }.map { $0.key }
    
    if scores[result[0]]! > scores[result[1]]! {
        return [result[0]]
    } else if scores[result[1]]! > scores[result[2]]! {
        return [result[0], result[1]].sorted(by: <)
    } else {
        return result.sorted(by: <)
    }
}