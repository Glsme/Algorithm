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
let K = line[2]
let X = line[3]

var array: [[Int]] = Array(repeating: [], count: N + 1)

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    array[line[0]].append(line[1])
}

var distance = Array(repeating: -1, count: N + 1)
var queue = Queue<Int>()
var visited = Array(repeating: false, count: N + 1)

queue.enqueue(X)
distance[X] = 0

while !queue.isEmpty {
    let pop = queue.dequeue()!
    
    if visited[pop] {
        continue
    }
    
    visited[pop] = true
    
    for element in array[pop] where !visited[element] && distance[element] == -1 {
        queue.enqueue(element)
        distance[element] = distance[pop] + 1
    }
}

var result = [String]()

for index in 0..<distance.count where distance[index] == K {
    result.append(String(index))
}

if result.isEmpty {
    print(-1)
} else {
    print(result.joined(separator: "\n"))
}