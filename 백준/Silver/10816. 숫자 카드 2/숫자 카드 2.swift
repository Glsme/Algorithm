import Foundation

let n = Int(readLine()!)!
let cards = Dictionary(readLine()!.split(separator: " ").map { (Int($0)!, 1) }, uniquingKeysWith: +)
let m = Int(readLine()!)!
let targetCards = readLine()!.split(separator: " ").map { Int($0)! }

for num in targetCards {
    print(cards[num, default: 0], terminator: " ")
}