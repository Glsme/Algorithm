import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    var answer: [Int] = []
    
    for num in numlist where num % n == 0 {
        answer.append(num)
    }
    
    return answer
}