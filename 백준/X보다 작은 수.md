# 나머지 구하기
## 문제 설명
정수 N개로 이루어진 수열 A와 정수 X가 주어진다. 이때, A에서 X보다 작은 수를 모두 출력하는 프로그램을 작성하시오.


## 문제 풀이

```swift
import Foundation
 
let firstLine = readLine()!
let firstLineArray = firstLine.components(separatedBy: " ").map { Int(String($0))! }
let secondLine = readLine()!
let secondLineArray = secondLine.components(separatedBy: " ").map { Int(String($0))! }
    
print(secondLineArray.filter { $0 < firstLineArray[1] }.map { String($0) }.joined(separator: " "))
```
