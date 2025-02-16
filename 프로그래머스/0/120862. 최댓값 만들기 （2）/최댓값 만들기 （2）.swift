import Foundation

func solution(_ numbers:[Int]) -> Int {
    var answer = Int.min
    
    for i in 0..<numbers.count {
        for j in i..<numbers.count {
            guard i != j else { continue }
            if answer < numbers[i] * numbers[j] {
                answer = numbers[i] * numbers[j]
            }
        }
    }
    
    return answer
}