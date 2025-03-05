import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var answer = 0
    
    for num in numbers {
        guard answer <= n else { break }
        answer += num
    }
    
    return answer
}