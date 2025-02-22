import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var answer = [Int]()
    
    for num in arr {
        let array = Array(repeating: num, count: num)
        answer.append(contentsOf: array)
    }
    
    return answer
}