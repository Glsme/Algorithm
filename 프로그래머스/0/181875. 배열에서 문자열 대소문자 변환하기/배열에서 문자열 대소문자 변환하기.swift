import Foundation

func solution(_ strArr:[String]) -> [String] {
    var strArr = strArr
    
    for i in 0..<strArr.count {
        let string: String
        
        if i % 2 == 0 {
            string = strArr[i].lowercased()
        } else {
            string = strArr[i].uppercased()
        }
        
        strArr[i] = string
    }
    
    return strArr
}