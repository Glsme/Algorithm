import Foundation

struct Queue<T> {
    private var queue: [T] = []
    private var index = 0
    
    var isEmpty: Bool {
        return queue.count - index <= 0
    }
    
    mutating func push(_ element: T) {
        queue.append(element)
    }
    
    @discardableResult
    mutating func pop() -> T? {
        guard !self.isEmpty else { return nil }
        let element = queue[index]
        index += 1
        
        return element
    }
}

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = line[0]
let k = line[1]
var queue = Queue<Int>()
var answer: [Int] = []

for num in 1...n {
    queue.push(num)
}

while !queue.isEmpty {
    for _ in 0..<k - 1 {
        queue.push(queue.pop()!)
    }
    
    answer.append(queue.pop()!)
}

print("<\(answer.map { String($0) }.joined(separator: ", "))>")