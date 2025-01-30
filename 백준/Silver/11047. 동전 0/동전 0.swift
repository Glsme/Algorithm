import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let n = line[0]
var k = line[1]
var coins: [Int] = []
var count = 0

for _ in 1...n {
    let coin = Int(readLine()!)!
    coins.append(coin)
}

coins.reverse()

for coin in coins {
    guard k != 0 else { break }
    
    if k >= coin {
        let temp = k / coin
        k -= temp * coin
        count += temp
    }
}

print(count)
