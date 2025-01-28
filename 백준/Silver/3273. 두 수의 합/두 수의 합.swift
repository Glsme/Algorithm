import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let x = Int(readLine()!)!

var start = 0
var end = n - 1
var answer = 0

while start < end {
    if nums[start] + nums[end] == x {
        answer += 1
        start += 1
    } else if nums[start] + nums[end] > x {
        end -= 1
    } else {
        start += 1
    }
}

print(answer)