import Foundation

var result = Array(repeating: Array(repeating: -1, count: 31), count: 31)

func combinate(_ n: Int, _ m: Int) -> Int {
    if n == 1 {
        result[n][m] = m
    }
    
    if n == m {
        result[n][m] = 1
    }
    
    if result[n][m] < 0 {
        result[n][m] = combinate(n, m - 1) + combinate(n - 1, m - 1)
    }
    
    return result[n][m]
}

let count = Int(readLine()!)!

for _ in 1...count {
    let array = readLine()!.split(separator: " ").map { Int($0)! }
    print(combinate(array[0], array[1]))
}