import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var answer: Int = 1
    var caseWidth: Int = (sizes[0].sorted())[0]
    var caseLength: Int = (sizes[0].sorted())[1]

    for width in 0...(sizes.count-1) {
        if caseWidth < (sizes[width].sorted())[0] {
            caseWidth = (sizes[width].sorted())[0]
        }
        if caseLength < (sizes[width].sorted())[1] {
            caseLength = (sizes[width].sorted())[1]
        }
    }
    answer = caseLength * caseWidth
    return answer
}