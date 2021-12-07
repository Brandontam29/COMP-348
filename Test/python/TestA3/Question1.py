def lessThan(n, list):
    newList = list.copy()
    i = 0
    while i < len(list) - 1:
        if list[i] < n:
            newList.remove(list[i])
        i += 1
    return newList

# Test cases
sampleList = [1, 2, 3, 4, 5, 6, 7]

print(lessThan(4, sampleList))  # [4, 5, 6, 7]
print(lessThan(7, sampleList))  # [7]
