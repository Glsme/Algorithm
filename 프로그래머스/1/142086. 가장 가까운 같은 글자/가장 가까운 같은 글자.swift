import Foundation

func solution(_ s:String) -> [Int] {
    let array = s.map { String($0) }
    var answer: [Int] = [-1]
    
    for i in 1..<array.count {
        var isExist = -1
        
        for j in stride(from: i - 1, through: 0, by: -1) {
            if array[j] == array[i] {
                isExist = i - j
                break
            }
        }
        
        answer.append(isExist)
    }
    
    return answer
}