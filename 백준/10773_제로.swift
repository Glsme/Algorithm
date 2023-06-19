import Foundation

let count = Int(readLine()!)!
var array: Array<Int> = []

for _ in 0..<count {
    let num = Int(readLine()!)!
    
    if num == 0 {
        array.removeLast()
    } else {
        array.append(num)
    }
}

print(array.reduce(0, +))
