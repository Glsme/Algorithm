import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let N = line[0]
let K = line[1]

var circle = Array(1...N)
var result = [Int]()
var index = 0

while !circle.isEmpty {
    index = (index + K - 1) % circle.count
    result.append(circle.remove(at: index))
}

let output = "<" + result.map { String($0) }.joined(separator: ", ") + ">"
print(output)