import Foundation

struct Heap {
    private var elements: [Int] = []
    private let comparer: (Int, Int) -> Bool
    
    init(comparer: @escaping (Int, Int) -> Bool) {
        self.comparer = comparer
    }
    
    mutating func insert(element: Int) {
        if elements.isEmpty {
            elements.append(element)
            elements.append(element)
            return
        }
        
        elements.append(element)
        swimUp(index: elements.count - 1)
    }
    
    mutating private func swimUp(index: Int) {
        var index = index
        
        while index > 1 && comparer(elements[index], elements[index / 2]) {
            elements.swapAt(index, index / 2)
            index /= 2
        }
    }
    
    mutating func pop() -> Int? {
        guard elements.count >= 2 else { return nil }
        elements.swapAt(1, elements.count - 1)
        let deletedElement = elements.removeLast()
        diveDown(index: 1)
        return deletedElement
    }
    
    mutating private func diveDown(index: Int) {
        var swapIndex = index
        var isSwap = false
        let leftIndex = index * 2
        let rightIndex = index * 2 + 1
        
        if leftIndex < elements.endIndex, comparer(elements[leftIndex], elements[swapIndex]) {
            swapIndex = leftIndex
            isSwap = true
        }
        
        if rightIndex < elements.endIndex, comparer(elements[rightIndex], elements[swapIndex]) {
            swapIndex = rightIndex
            isSwap = true
        }
        
        if isSwap {
            elements.swapAt(swapIndex, index)
            diveDown(index: swapIndex)
        }
    }
}

let count = Int(readLine()!)!
var heap = Heap(comparer: <)

for _ in 1...count {
    let num = Int(readLine()!)!
    
    if num == 0 {
        print(heap.pop() ?? 0)
    } else {
        heap.insert(element: num)
    }
}