import Foundation

let count = Int(readLine()!)!
let line = readLine()!
var sum = 0

for char in line {
    sum += Int(String(char))!
}

print(sum)