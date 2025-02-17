import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var array = [Int]()
    
    for i in 0..<arr.count {
        if arr.count % 2 == 0 {
            if i % 2 == 0 {
                array.append(arr[i])
            } else {
                array.append(arr[i] + n)
            }
        } else {
            if i % 2 == 0 {
                array.append(arr[i] + n)
            } else {
                array.append(arr[i])
            }
        }
    }
    
    return array
}