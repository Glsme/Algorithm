func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    return (0..<n).map { String(arr1[$0] | arr2[$0] | 2<<(n-1), radix: 2).map { $0 == "1" ? "#" : " " }[1...n].joined() }
}