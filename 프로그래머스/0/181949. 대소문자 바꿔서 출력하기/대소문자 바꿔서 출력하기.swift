import Foundation

let s1 = readLine()!

var answer = ""

s1.forEach {
    if String($0) == String($0.uppercased()) {
        answer += String($0).lowercased()
    } else {
        answer += String($0).uppercased()
    }
}

print(answer)