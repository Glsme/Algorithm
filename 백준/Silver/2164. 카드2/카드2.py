from collections import deque

num = int(input())
d = deque(list(range(1, num + 1)))

while len(d) != 1:
    d.popleft()
    d.append(d.popleft())

print(d[0])