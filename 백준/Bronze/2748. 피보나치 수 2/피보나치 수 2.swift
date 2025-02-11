import Foundation

let num = Int(readLine()!)!
var dp = Array(repeating: 0, count: 91)
dp[1] = 1

for index in 2...90 {
    dp[index] = dp[index - 2] + dp[index - 1]
}

print(dp[num])