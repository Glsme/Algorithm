import Foundation

struct Queue {
    private var queue: [Int?] = []
    private var head = 0
    
    var count: Int {
        return queue.count - head
    }
    
    var isEmpty: Bool {
        return queue.count - head == 0
    }
    
    mutating func enqueue(_ element: Int) {
        queue.append(element)
    }
    
    mutating func dequeue() -> Int? {
        guard head < queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        return element
    }
}

let n = Int(readLine()!)!
var queue = Queue()

for num in 0..<n {
    queue.enqueue(num + 1)
}

var answer: [Int] = []

while queue.count > 1 {
    answer.append(queue.dequeue()!)
    queue.enqueue(queue.dequeue()!)
}

answer.append(queue.dequeue()!)

print(answer.map { String($0) }.joined(separator: " "))