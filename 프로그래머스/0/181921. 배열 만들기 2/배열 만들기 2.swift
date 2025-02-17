import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var answer = [Int]()
    
    for i in l...r {
        var string = String(i).replacingOccurrences(of: "5", with: "")
        string = string.replacingOccurrences(of: "0", with: "")
        
        if string.isEmpty {
            answer.append(i)
        }
    }
    
    return answer.isEmpty ? [-1] : answer
}