import Foundation

let countLine = readLine()!
let count = Int(countLine)!

for _ in 1...count {
    let oxLine = readLine()!
    let oxArray = Array(oxLine)
    
    var continueityCount = 0
    var score = 0
    for string in oxArray {
        if string == "O" {
            score += continueityCount + 1
            continueityCount += 1
        } else {
            continueityCount = 0
        }
    }
    print(score)
}
