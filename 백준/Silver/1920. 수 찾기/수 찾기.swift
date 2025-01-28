import Foundation

let n = Int(readLine()!)!
let nArray = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let m = Int(readLine()!)!
let mArray = readLine()!.split(separator: " ").map { Int($0)! }

for num in mArray {
    var start = 0
    var end = nArray.count - 1
    var isExist = false
    
    while start <= end {
        let middle = (start + end) / 2
        
        if nArray[middle] == num {
            isExist = true
            break
        } else if nArray[middle] > num {
            end = middle - 1
        } else {
            start = middle + 1
        }
    }
    
    print(isExist ? "1" : "0")
}
