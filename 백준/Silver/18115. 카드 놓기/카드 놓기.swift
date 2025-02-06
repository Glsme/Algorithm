import Foundation

struct Deque {
    var enqueue: [Int]
    var dequeue: [Int] = []
    
    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }
    
    init(_ queue: [Int]) {
        enqueue = queue
    }
    
    mutating func pushFirst(_ element: Int) {
        dequeue.append(element)
    }
    
    mutating func pushLast(_ element: Int) {
        enqueue.append(element)
    }
    
    mutating func popFirst() -> Int? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        
        return dequeue.popLast()
    }
    
    mutating func popLast() -> Int? {
        var returnValue: Int?
        
        if enqueue.isEmpty {
            dequeue.reverse()
            returnValue = dequeue.popLast()
            dequeue.reverse()
        } else {
            returnValue = enqueue.popLast()
        }
        
        return returnValue
    }
}

let n = Int(readLine()!)!
let commands = readLine()!.split(separator: " ").reversed().map { Int($0)! }
var deque = Deque([])

for num in 1...n {
    switch commands[num - 1] {
    case 1:
        deque.pushFirst(num)
    case 2:
        let topCard = deque.popFirst()!
        deque.pushFirst(num)
        deque.pushFirst(topCard)
    case 3:
        deque.pushLast(num)
    default:
        break
    }
}

var answer: [Int] = []

while !deque.isEmpty {
    answer.append(deque.popFirst()!)
}

print(answer.map { String($0) }.joined(separator: " "))