import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.map { 
        if $0 >= 50, $0 % 2 == 0 {
            return Int($0 / 2)
        } else if $0 < 50, $0 % 2 == 1 {
            return $0 * 2
        } else {
            return $0
        }
    }
}