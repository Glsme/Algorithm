import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    func compare(_ num1: Int, _ num2: Int) -> Int {
        if num1 < num2 {
            return -1
        } else if num1 > num2 {
            return 1
        } else {
            return 0
        }
    }
    
    let result = compare(arr1.count, arr2.count)
    
    if result == 0 {
        return compare(arr1.reduce(0, +), arr2.reduce(0, +))
    } else {
        return result
    }
}