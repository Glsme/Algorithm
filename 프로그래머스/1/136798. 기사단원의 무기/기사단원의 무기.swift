import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var array = [Int]()
    
    for num in 1...number {
        var result = 0
        
        for i in 1...Int(sqrt(Double(num))) {
            if num % i == 0 {
                result += 1
            }
        }
        
        result *= 2
        
        if Int(sqrt(Double(num))) * Int(sqrt(Double(num))) == num {
            result -= 1
        }
        
        array.append(result > limit ? power : result)
    }
    
    return array.reduce(0, +)
}