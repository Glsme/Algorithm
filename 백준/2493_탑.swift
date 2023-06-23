let count = Int(readLine()!)!
let towers = readLine()!.split(separator: " ").map { Int(String($0))! }

var stack: [Int] = []
var answer = Array(repeating: 0, count: count)

for num in stride(from: count - 1, to: -1, by: -1) {
    while !stack.isEmpty, towers[num] > towers[stack.last!] {
        let index = stack.removeLast()
        answer[index] = num + 1
    }
    
    stack.append(num)
}

print(answer.map { String($0) }.joined(separator: " "))
