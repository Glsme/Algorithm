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
    