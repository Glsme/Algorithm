let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let u = input[0], v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}
var visited = [Bool](repeating: false, count: n + 1)

func bfs(node: Int) {
    var queue = [node]
    var index = 0
    visited[node] = true
    
    while queue.count > index {
        let node = queue[index]
        
        for nextNode in graph[node] {
            if !visited[nextNode] {
                visited[nextNode] = true
                queue.append(nextNode)
            }
        }
        
        index += 1
    }
}

var answer = 0

for i in 1...n {
    if !visited[i] {
        answer += 1
        bfs(node: i)
    }
}

print(answer)