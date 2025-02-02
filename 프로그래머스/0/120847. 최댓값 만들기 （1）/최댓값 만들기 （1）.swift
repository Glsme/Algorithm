import Foundation

func solution(_ numbers:[Int]) -> Int {
    var array = numbers.sorted(by: >)
    return array[0] * array[1]
}