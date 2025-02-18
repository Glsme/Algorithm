import Foundation

var charge = 1000 - Int(readLine()!)!
var answer = 0
var coins = [500, 100, 50, 10, 5, 1]

for coin in coins {
    if charge / coin > 0 {
        answer += charge / coin
        charge %= coin
    }
}

print(answer)