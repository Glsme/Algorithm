import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var answer: [Int] = []
    
    strlist.forEach {
        answer.append($0.count)
    }
    
    return answer
}