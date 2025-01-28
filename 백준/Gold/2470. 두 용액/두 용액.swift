import Foundation

let n = Int(readLine()!)!
let liquids = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var start = 0
var end = liquids.count - 1
var result: (Int, Int) = (0, 0)
var sum = Int.max

while start < end {
    let mixing = liquids[start] + liquids[end]
    
    if abs(mixing) <= sum {
        sum = abs(mixing)
        result.0 = start
        result.1 = end
    }
    
    if mixing < 0 {
        start += 1
    } else {
        end -= 1
    }
}

print("\(liquids[result.0]) \(liquids[result.1])")
