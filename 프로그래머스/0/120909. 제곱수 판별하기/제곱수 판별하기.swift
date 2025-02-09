import Foundation

func solution(_ n:Int) -> Int {
    var number = Int(sqrt(Double(n)))
    return Int(number * number) == n ? 1 : 2
}