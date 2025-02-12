import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let i = Int("\(a)\(b)")!
    let j = Int("\(b)\(a)")!
    return i > j ? i : j
}