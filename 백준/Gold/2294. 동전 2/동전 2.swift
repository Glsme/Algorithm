import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let n = line[0], k = line[1]
var dp = Array(repeating: 10001, count: 10001)
dp[0] = 0
var coins: [Int] = []

for i in 0..<n {
    let coin = Int(readLine()!)!
    coins.append(coin)
    
    for j in stride(from: coins[i], through: k, by: 1) {
        dp[j] = min(dp[j], dp[j - coins[i]] + 1)
    }
}

if dp[k] == 10001 {
    print(-1)
} else {
    print(dp[k])
}
