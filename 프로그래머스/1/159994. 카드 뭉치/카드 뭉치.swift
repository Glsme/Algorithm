import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
    
    for word in goal {
        if cards1.first == word {
            cards1.remove(at: cards1.firstIndex(of: word)!)
        } else if cards2.first == word {
            cards2.remove(at: cards2.firstIndex(of: word)!)
        } else {
            return "No"
        }
    }
    
    return "Yes"
}