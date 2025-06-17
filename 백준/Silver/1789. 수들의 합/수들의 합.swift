import Foundation

let S = Int(readLine()!)!
var count = 1
var sum = 0

while (S > sum) {
    sum += count
    
    if sum <= S, S < (sum + count + 1) {
        break
    } else {
        count += 1
    }
}

print(count)