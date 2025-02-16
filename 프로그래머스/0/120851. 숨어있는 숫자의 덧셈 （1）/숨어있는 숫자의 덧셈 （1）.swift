import Foundation

func solution(_ my_string:String) -> Int {
    var answer = 0
    let array = Array(my_string)
    
    for num in array {
        guard let num = Int(String(num)) else { continue }
        answer += num
    }
    
    return answer
}