import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let n = line[0], m = line[1]
let parents = [0] + readLine()!.split(separator: " ").map { Int($0)! }
var goods = Array<Int>(repeating: 0, count: n + 1)
var totalGoods = Array<Int>(repeating: 0, count: n + 1)

for _ in 1...m {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    goods[line[0]] += line[1]
}

for index in 2...n {
    totalGoods[index] = totalGoods[parents[index]] + goods[index]
}

print(totalGoods[1...].map { String($0) }.joined(separator: " "))