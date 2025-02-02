import Foundation

func solution(_ my_string:String) -> String {
    var string = my_string.replacingOccurrences(of: "a", with: "")
    string = string.replacingOccurrences(of: "e", with: "")
    string = string.replacingOccurrences(of: "i", with: "")
    string = string.replacingOccurrences(of: "o", with: "")
    string = string.replacingOccurrences(of: "u", with: "")
    
    return string
}