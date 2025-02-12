import Foundation

let count = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var dp = Array(repeating: 1, count: count)

for i in 0..<count {
    for j in 0..<i {
        if array[j] < array[i] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

print(dp.max()!)