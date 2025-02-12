import Foundation

func solution(_ hp:Int) -> Int {
    var answer = 0
    var hp = hp
    var ants = [5, 3, 1]
    
    for ant in ants {
        answer += hp / ant
        hp %= ant
        
        if hp == 0 {
            break
        }
    }
    
    return answer
}