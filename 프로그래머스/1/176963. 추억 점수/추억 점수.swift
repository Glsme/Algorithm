import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dic: [String: Int] = [:]
    var answer = [Int]()
    
    for i in 0..<name.count {
        dic[name[i]] = yearning[i]
    }
    
    for array in photo {
        var result = 0
        
        array.forEach {
            if let score = dic[$0] {
                result += score
            }
        }
        
        answer.append(result)
    }
    
    return answer
}