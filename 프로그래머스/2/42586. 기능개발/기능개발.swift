import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer = [Int]()
    var lastDay = 0
    
    for i in 0..<progresses.count {
        let days = Int(ceil(Double(100 - progresses[i]) / Double(speeds[i])))
        if days > lastDay {
            lastDay = days
            answer.append(1)
        } else {
            answer[answer.count - 1] += 1
        }
    }
    
    return answer
}