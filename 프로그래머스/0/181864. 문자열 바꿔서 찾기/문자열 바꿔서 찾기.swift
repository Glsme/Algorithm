import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let string = myString.map { 
        return $0 == "A" ? "B" : "A"
    }.joined()
    
    return string.contains(pat) ? 1 : 0
}