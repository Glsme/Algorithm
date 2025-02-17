import Foundation

func solution(_ num_str:String) -> Int {
    
    return Array(num_str).map { Int(String($0))! }.reduce(0, +)
}