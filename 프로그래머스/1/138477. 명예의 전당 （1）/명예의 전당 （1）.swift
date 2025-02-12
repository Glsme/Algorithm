import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var array = [Int]()
    var answer = [Int]()
    
    for i in 0..<score.count {
        if array.count < k {
            array.append(score[i])
        } else if array.last! < score[i] {
            array[k - 1] = score[i]
        }
        
        array.sort(by: >)
        answer.append(array.last!)
    }
    
    return answer
}