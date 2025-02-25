import Foundation

func solution(_ babbling:[String]) -> Int {
    var babbling = babbling
    
    for i in 0..<babbling.count {
        babbling[i] = babbling[i].replacingOccurrences(of: "aya", with: "0")
        babbling[i] = babbling[i].replacingOccurrences(of: "ye", with: "1")
        babbling[i] = babbling[i].replacingOccurrences(of: "woo", with: "2")
        babbling[i] = babbling[i].replacingOccurrences(of: "ma", with: "3")
    }
    
    for i in 0..<babbling.count {
        guard !(babbling[i].contains("00") || babbling[i].contains("11") || babbling[i].contains("22") || babbling[i].contains("33")) 
        else { continue }
        
        babbling[i] = babbling[i].replacingOccurrences(of: "0", with: "")
        babbling[i] = babbling[i].replacingOccurrences(of: "1", with: "")
        babbling[i] = babbling[i].replacingOccurrences(of: "2", with: "")
        babbling[i] = babbling[i].replacingOccurrences(of: "3", with: "")
    }
    
    return babbling.filter { $0.isEmpty }.count
}