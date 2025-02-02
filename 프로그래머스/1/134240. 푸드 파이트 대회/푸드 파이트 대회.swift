import Foundation

func solution(_ food:[Int]) -> String {
    var foods = food.map { Int($0 / 2) }
    var answer = ""
    
    for index in 1..<foods.count where foods[index] > 0 {
        for _ in 1...foods[index] {
            answer += "\(index)"
        }
    }
    
    return answer + "0" + answer.reversed()
}