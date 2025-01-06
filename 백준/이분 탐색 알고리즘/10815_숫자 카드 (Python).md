# 숫자 카드
## 문제 설명
숫자 카드는 정수 하나가 적혀져 있는 카드이다. 상근이는 숫자 카드 N개를 가지고 있다. 정수 M개가 주어졌을 때, 이 수가 적혀있는 숫자 카드를 상근이가 가지고 있는지 아닌지를 구하는 프로그램을 작성하시오.


## 문제 풀이

```python
N = int(input())
cards = list(map(int, input().split()))
M = int(input())
compareCards = list(map(int, input().split()))

cards.sort()

for card in compareCards:
    left = 0
    right = N-1
    exist = False
    while left <= right:
        middle = (left + right) // 2
        
        if cards[middle] > card:
            right = middle - 1
        elif cards[middle] < card:
            left = middle + 1
        else:
            exist = True
            break
    print(1 if exist else 0, end=' ')
```
