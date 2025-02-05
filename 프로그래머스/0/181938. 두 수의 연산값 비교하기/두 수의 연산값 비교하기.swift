import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let stringToInt = Int("\(a)\(b)")!
    let multiple = 2 * a * b
    
    return stringToInt > multiple ? stringToInt : multiple
}