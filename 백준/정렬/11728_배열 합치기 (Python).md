# 배열 합치기
## 문제 설명
정렬되어있는 두 배열 A와 B가 주어진다. 두 배열을 합친 다음 정렬해서 출력하는 프로그램을 작성하시오.


## 문제 풀이

```python
N, M = map(int, input().split())
firstArray = list(map(int, input().split()))
secondArray = list(map(int, input().split()))
resultArray = []

pos1 = 0
pos2 = 0

while pos1 < N and pos2 < M:
    candidate1 = firstArray[pos1]
    candidate2 = secondArray[pos2]
    
    if candidate1 < candidate2:
        resultArray.append(candidate1)
        pos1 += 1
    else:
        resultArray.append(candidate2)
        pos2 += 1
        
if pos1 != N:
    resultArray.extend(firstArray[pos1:N])
if pos2 != M:
    resultArray.extend(secondArray[pos2:M])        

for i in range(N + M):
    print(resultArray[i], end=" ")
```
