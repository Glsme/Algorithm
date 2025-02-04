import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var answer = 0
    var count = n
    
    while a <= count {
        answer += (count / a) * b
        var extra = count % a
        count = ((count / a) * b) + extra
    }
    
    return answer
}