import Foundation

let count = Int(readLine()!)!

for _ in 1...count {
    let line = readLine()!.split(separator: " ")
    let num = Int(line[0])!
    let string = line[1]
    var answer = ""
    
    for char in string {
        for _ in 1...num {
            answer += "\(char)"
        }
    }
    
    print(answer)
}