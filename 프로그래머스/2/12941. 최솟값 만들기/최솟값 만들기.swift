import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    var a = A.sorted(by: >)
    var b = B.sorted(by: <)
    
    for index in 0..<a.count {
        ans += a[index] * b[index]
    }

    return ans
}