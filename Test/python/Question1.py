def lessThan(n, list):
    newList = sorted(list)
    i = newList.index(n)
    newList = newList[i:]
    return newList


# Test cases
sampleList = [1, 2, 3, 4, 5, 6, 7]

print(lessThan(4, sampleList))  # [4, 5, 6, 7]
print(lessThan(7, sampleList))  # [7]

sampleList2 = [1, 3, 5, 7, 9, 11]

print(lessThan(4, sampleList2))  # [4, 5, 6, 7]
print(lessThan(7, sampleList2))  # [7]
