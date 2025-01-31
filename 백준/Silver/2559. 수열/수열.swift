import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let n = line[0], k = line[1]
var temps = [0] + readLine()!.split(separator: " ").map { Int($0)! }
var pSum: [Int] = []

for i in 1...n {
    temps[i] += temps[i - 1]
}

var answer = Int.min

for i in 0...n - k {
    answer = max(answer, temps[i + k] - temps[i])
}

print(answer)
