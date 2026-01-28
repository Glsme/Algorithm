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

let line = readLine()!.split(separator: " ").map { Int($0)! }
let N = line[0]
let M = line[1]

var maze = [[Int]]()

for _ in 0..<N {
    let line = readLine()!.map { Int(String($0))! }
    maze.append(line)
}

var queue = Queue<(Int, Int)>()
queue.enqueue((0, 0))

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]


while !queue.isEmpty {
    let (x, y) = queue.dequeue()!
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx < 0 || ny < 0 || nx >= N || ny >= M {
            continue
        }
        
        if maze[nx][ny] == 0 {
            continue
        }
        
        if maze[nx][ny] == 1 {
            maze[nx][ny] = maze[x][y] + 1
            queue.enqueue((nx, ny))
        }
    }
}

print(maze[N-1][M-1])