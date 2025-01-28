import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let n = line[0]
let m = line[1]
let a = readLine()!.split(separator: " ").map { Int($0)! }
let b = readLine()!.split(separator: " ").map { Int($0)! }

var aIndex = 0
var bIndex = 0
var answer: [Int] = []

while aIndex <= (a.count - 1) && bIndex <= (b.count - 1) {
    if a[aIndex] > b[bIndex] {
        answer.append(b[bIndex])
        bIndex += 1
    } else if a[aIndex] < b[bIndex] {
        answer.append(a[aIndex])
        aIndex += 1
    } else {
        answer.append(a[aIndex])
        answer.append(b[bIndex])
        aIndex += 1
        bIndex += 1
    }
}

if aIndex <= a.count - 1 {
    answer.append(contentsOf: a[aIndex...])
} else if bIndex <= b.count - 1 {
    answer.append(contentsOf: b[bIndex...])
}

print(answer.map { String($0) }.joined(separator: " "))
