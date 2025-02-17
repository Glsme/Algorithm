import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var answer = 1
    var dic = [String: Int]()
    
    for cloth in clothes {
        let category = cloth[1]
        var count = dic[category] ?? 0
        dic[category] = count + 1
    }
    
    dic.forEach { k, v in
        answer *= (v + 1)
    }
    
    answer -= 1
    
    return answer
}