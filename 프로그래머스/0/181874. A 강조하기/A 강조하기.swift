import Foundation

func solution(_ myString:String) -> String {
    return myString.map { $0 == "a" || $0 == "A" ? "A" : $0.lowercased() }.joined()
}