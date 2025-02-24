import Foundation

var line = readLine()!
let word = readLine()!
var count = 0

while true {
    if let range = line.range(of: word) {
        count += 1
        line.replaceSubrange(range, with: "0")
    } else {
        break
    }
}

print(count)