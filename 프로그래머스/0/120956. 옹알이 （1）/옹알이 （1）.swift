import Foundation

func solution(_ babbling:[String]) -> Int {
    var count = 0
    
    for word in babbling {
        var temp = word.replacingOccurrences(of: "aya", with: " ")
        temp = temp.replacingOccurrences(of: "ye", with: " ")
        temp = temp.replacingOccurrences(of: "woo", with: " ")
        temp = temp.replacingOccurrences(of: "ma", with: " ")
        temp = temp.replacingOccurrences(of: " ", with: "")
        
        if temp.isEmpty {
            count += 1
        }
    }
    
    return count
}