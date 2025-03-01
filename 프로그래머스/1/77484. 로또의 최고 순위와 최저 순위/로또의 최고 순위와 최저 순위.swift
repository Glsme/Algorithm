import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var count = 0
    var zeroCount = lottos.filter{ $0 == 0}.count
    
    for num in lottos.filter { $0 != 0 } {
        if win_nums.contains(num) {
            count += 1
        }
    }
    
    var best = count + zeroCount
    var worst = count
    
    return [price(best), price(worst)]
}

func price(_ num: Int) -> Int {
    switch num {
        case 6: return 1
        case 5: return 2
        case 4: return 3
        case 3: return 4
        case 2: return 5
        default: return 6
    }
}