import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let trees = readLine()!.split(separator: " ").map { Int($0)! }
let m = line[1]

func cutTrees(_ trees: [Int], cuttingHeight: Int) -> Int {
    return trees.map { max($0 - cuttingHeight, 0) }.reduce(0, +)
}

func binarySearch() -> Int {
    var start = 0
    var end = trees.max()!
    
    while start <= end {
        let middle = (start + end) / 2
        
        if cutTrees(trees, cuttingHeight: middle) == m {
            return middle
        } else if cutTrees(trees, cuttingHeight: middle) > m {
            start = middle + 1
        } else {
            end = middle - 1
        }
    }
    
    return end
}

print(binarySearch())