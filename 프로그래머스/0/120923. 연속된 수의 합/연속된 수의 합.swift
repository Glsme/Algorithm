import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var array = Array(repeating: 0, count: num)
    let averageNum = total / num
    array[0] = averageNum - num
    
    for i in 0..<array.count - 1 {
        array[i + 1] = array[i] + 1
    }
    
    while true {
        let sum = array.reduce(0, +)
        
        if total == sum {
            break
        } else if total > sum {
            for i in 0..<array.count {
                array[i] += 1
            }
        } else {
            for i in 0..<array.count {
                array[i] -= 1
            }
        }
    }
    
    return array
}