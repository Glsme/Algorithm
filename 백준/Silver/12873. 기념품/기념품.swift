import Foundation

func lastPersonStanding(_ n: Int) -> Int {
    var people = Array(1...n)
    var index = 0
    
    for k in 1..<n {
        let step = (k * k * k - 1) % people.count  // (k^3 - 1) % 현재 사람 수
        index = (index + step) % people.count
        people.remove(at: index)
    }
    
    return people[0]  // 마지막 남은 사람 반환
}

// 입력 받기
if let input = readLine(), let n = Int(input) {
    print(lastPersonStanding(n))
}