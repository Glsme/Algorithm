import Foundation

let n = Int(readLine()!)!
let parents = readLine()!.split(separator: " ").map { Int($0)! }
let targetNode = Int(readLine()!)!
var root = 0
var blackNodes = Array<Int>(repeating: 0, count: n)
var redNodes = Array<Int>(repeating: 0, count: n)

for index in 0..<parents.count {
    guard parents[index] == -1 else { continue }
    root = index
    break
}

for index in 0..<parents.count {
    var node = index
    
    while true {
        if node == targetNode {
            blackNodes[index] = 1
        }
        
        if node == root {
            break
        }
        
        node = parents[node]
    }
}

for index in 0..<parents.count {
    guard blackNodes[index] != 1, index != root else { continue }
    redNodes[parents[index]] = 1
}

var count = 0

for index in 0..<parents.count {
    guard blackNodes[index] != 1, redNodes[index] != 1 else { continue }
    count += 1
}

print(count)