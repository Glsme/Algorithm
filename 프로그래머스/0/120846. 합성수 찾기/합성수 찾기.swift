import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    
    for num in 1...n {
        var count = 0
        
        for i in 1...num {
            if num % i == 0 {
                count += 1
            }
        }
        
        if count > 2 {
            answer += 1
        }
    }
    
    return answer
}