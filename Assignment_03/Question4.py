# --------------------------------------------------------------
# Assignment 3
# Question 3
# Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
# --------------------------------------------------------------

class Multiset:
    multiset = []

    def __init__(self, multiset):
        self.multiset = multiset

    def add(self, item):
        self.multiset.append(item)

    def remove(self, item):
        self.multiset.remove(item)

    def count(self, item):
        count = 0
        for x in self.multiset:
            if(x == item):
                count += 1
        return count

    def union(self, set1):
        newSet = sorted(list(set(self.multiset)) + list(set(set1)))
        return newSet

    def intersection(self, set1):
        newSet = list(set(self.multiset) & set(set1))
        return newSet

    def difference(self, set2):
        for x in set2:
            count = Multiset(set2).count(x)
            if count > 0:
                for _ in range(count):
                    if self.multiset.count(x) > 0:
                        self.multiset.remove(x)
                        break
                    else:
                        break


# Test cases
m1 = Multiset([1, 2, 2])
m2 = Multiset([1, 1, 2, 3])

# Addition
m1.add(6)
print(m1.multiset)  # [1, 2, 2, 6]

# Subtration
m1.remove(6)
print(m1.multiset)  # [1, 2, 2]

# Count
print(m1.count(2))  # 2

# Union
print(m1.union(m2.multiset))  # [1, 1, 2, 2, 3, 4]

# Intersection
print(m1.intersection(m2.multiset))  # [1, 2]

# Difference update
m1.add(2)  # This checks for unsorted sets
m2.add(2)
m1.difference(m2.multiset)
print(m1.multiset)  # [2]
