import Foundation

let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
let (s1, a) = (inp[0], Int(inp[1])!)

var answer = ""

for _ in 1...a {
    answer += s1
}

print(answer)