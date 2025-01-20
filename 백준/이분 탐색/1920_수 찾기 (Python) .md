# 수 찾기
## 문제 설명
N개의 정수 A[1], A[2], …, A[N]이 주어져 있을 때, 이 안에 X라는 정수가 존재하는지 알아내는 프로그램을 작성하시오.


## 문제 풀이

```python
N = int(input())
nums = list(map(int, input().split()))
M = int(input())
compareNums = list(map(int, input().split()))

nums.sort()

for num in compareNums:
    left = 0
    right = N - 1
    isExist = False
    
    while left <= right:
        middle = (left + right) // 2
        
        if num == nums[middle]:
            print(1)
            isExist = True
            break
        elif num > nums[middle]:
            left = middle + 1
        else:
            right = middle - 1
            
    if not isExist:
        print(0)
```
