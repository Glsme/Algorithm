import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let n = line[0], m = line[1]
var graph: [[Int]] = Array(repeating: [], count: n + 1)
var counts = Array(repeating: 0, count: n + 1)

for _ in 1...m {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    graph[line[0]].append(line[1])
    graph[line[1]].append(line[0])
}

func bfs(_ node: Int) -> Int {
    var visited = Array(repeating: false, count: n + 1)
    var queue = [(node, 0)]
    var index = 0
    var result = 0
    visited[node] = true
    
    while queue.count > index {
        let current = queue[index]
        let node = current.0
        let depth = current.1
        result += depth
        
        for nextNode in graph[node] {
            if !visited[nextNode] {
                visited[nextNode] = true
                queue.append((nextNode, depth + 1))
            }
        }
        
        index += 1
    }
    
    return result
}

var sum = Int.max
var result = -1

for i in 1...n {
    let total = bfs(i)
    if sum > total {
        result = i
        sum = total
    }
}

print(result)

