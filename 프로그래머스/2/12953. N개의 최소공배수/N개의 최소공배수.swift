import Foundation 

func solution(_ arr:[Int]) -> Int {
    var answer: Int = 1
    var count = 1
    
    while true {
        var isSucceed = true
        
        for num in arr {
            if count % num != 0 {
                isSucceed = false
                break
            }
        }
        
        if isSucceed {
            answer = count
            break
        } else {
            count += 1
        }
    } 

    return answer
}