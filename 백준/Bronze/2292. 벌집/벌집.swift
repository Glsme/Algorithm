import Foundation

let N = Int(readLine()!)!
var count = 1
var start = 1

while start < N {
    start += (6 * count)
    count += 1
}

print(count)