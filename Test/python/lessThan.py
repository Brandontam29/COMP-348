def lessThan(n, list):
    newList = sorted(list)
    # print(newList.index(n))
    return newList

# Test cases
sampleList = [1, 2, 3, 4, 5, 6, 7]

print(lessThan(4, sampleList))  # [4, 5, 6, 7]
print(lessThan(7, sampleList))  # [7]
