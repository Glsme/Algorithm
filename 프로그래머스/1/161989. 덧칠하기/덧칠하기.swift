import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var walls = Array(repeating: true, count: n)
    var count = 0
    
    for i in section {
        walls[i - 1] = false
    }
    
    for i in 0..<walls.count where !walls[i] {
        count += 1
        
        for j in 0..<m {
            if i + j >= walls.count {
                break
            }
            
            walls[i + j] = true
        }
        
    }
    
    return count
}