import Foundation

let n = Int(readLine()!)!
var scores: [Int] = []
var answer = 0

for _ in 1...n {
    let score = Int(readLine()!)!
    scores.append(score)
}

scores.reverse()

for index in 0...(scores.count - 2) {
    guard scores[index] <= scores[index + 1] else { continue }
    let decrease = scores[index] - scores[index + 1] - 1
    scores[index + 1] += decrease
    answer += abs(decrease)
}

print(answer)