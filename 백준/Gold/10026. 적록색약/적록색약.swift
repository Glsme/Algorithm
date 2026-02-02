import Foundation

struct Queue<T> {
    private var queue: [T?] = []
    
    private var head: Int = 0
    
    var count: Int {
        return queue.count - head
    }
    
    var isEmpty: Bool {
        return count == 0
    }
    
    mutating func enqueue(_ value: T) {
        queue.append(value)
    }
    
    mutating func dequeue() -> T? {
        guard head < queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        if head > 50 {
            queue.removeFirst(head)
            head = 0
        }
        
        return element
    }
}

let N = Int(readLine()!)!
var array = [[String]]()
let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

for _ in 0..<N {
    let line = readLine()!.map { String($0) }
    array.append(line)
}

var blindnessArray = Array(repeating: Array(repeating: "", count: N), count: N)

for i in 0..<N {
    for j in 0..<N {
        blindnessArray[i][j] = array[i][j] == "R" ? "G" : array[i][j]
    }
}

var result = 0
var blindResult = 0

var visited = Array(repeating: Array(repeating: false, count: N), count: N)

func bfs(_ x: Int, _ y: Int, _ array: [[String]]) {
    var queue = Queue<((Int, Int), String)>()
    queue.enqueue(((x, y), array[x][y]))
    
    while !queue.isEmpty {
        let pop = queue.dequeue()!
        
        for i in 0..<4 {
            let nx = pop.0.0 + dx[i]
            let ny = pop.0.1 + dy[i]
            
            if nx < 0 || nx >= N || ny < 0 || ny >= N || visited[nx][ny] {
                continue
            }
            
            if array[nx][ny] != pop.1 {
                continue
            }
            
            visited[nx][ny] = true
            queue.enqueue(((nx, ny), pop.1))
        }
    }
}

for i in 0..<N {
    for j in 0..<N {
        guard !visited[i][j] else { continue }
        bfs(i, j, array)
        result += 1
    }
}

visited = Array(repeating: Array(repeating: false, count: N), count: N)

for i in 0..<N {
    for j in 0..<N {
        guard !visited[i][j] else { continue }
        bfs(i, j, blindnessArray)
        blindResult += 1
    }
}

print("\(result) \(blindResult)")