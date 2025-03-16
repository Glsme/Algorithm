import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    var answer = [String]()
    
    for index in 0..<todo_list.count {
        if !finished[index] {
            answer.append(todo_list[index])
        }
    }
    
    return answer
}