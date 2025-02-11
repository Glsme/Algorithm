import Foundation

let count = Int(readLine()!)!
var dp = Array(repeating: 0, count: 101)

dp[1] = 1
dp[2] = 1
dp[3] = 1
dp[4] = 2
dp[5] = 2
dp[6] = 3
dp[7] = 4
dp[8] = 5
dp[9] = 7
dp[10] = 9

for index in 11...100 {
    dp[index] = dp[index - 1] + dp[index - 5]
}

for _ in 1...count {
    let index = Int(readLine()!)!
    print(dp[index])
}