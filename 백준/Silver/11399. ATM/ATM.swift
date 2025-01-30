import Foundation

let n = Int(readLine()!)!
let times = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
var time = 0

for index in 0...(times.count - 1) {
    time += (index + 1) * times[index]
}

print(time)