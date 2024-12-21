# 알파벳 찾기
## 문제 설명
알파벳 소문자로만 이루어진 단어 S가 주어진다. 각각의 알파벳에 대해서, 단어에 포함되어 있는 경우에는 처음 등장하는 위치를, 포함되어 있지 않은 경우에는 -1을 출력하는 프로그램을 작성하시오.


## 문제 풀이

```python
word = input()
check = [-1] * 26

for i in range(len(word)):
    index = ord(word[i]) - ord('a')
    
    if check[index] == -1:
        check[index] = i
    
for i in range(26):
    print(check[i], end=" ")
```
