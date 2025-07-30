import Foundation

let count = Int(readLine()!)!

for _ in 1...count {
    let array = Array(readLine()!)
    var score = 0
    var index = 1
    
    for char in array {
        if char == "O" {
            score += index
            index += 1
        } else {
            index = 1
        }
    }
    
    print(score)
}