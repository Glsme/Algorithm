import Foundation

func solution(_ rsp:String) -> String {
    var answer = ""
    var array = Array(rsp)
    
    for i in array {
        switch i {
            case "2": answer += "0"
            case "0": answer += "5"
            case "5": answer += "2"
            default: break
        }
    }
    
    return answer
}