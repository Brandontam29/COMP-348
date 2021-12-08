# --------------------------------------------------------------
# Assignment 3
# Question 4
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
        return self.multiset.count(item)

    def union(self, set1):
        allValues = sorted(list(set(self.multiset + set1)))
        s1 = self.multiset
        s2 = set1
        s3 = []
        for x in allValues:
            c1 = s1.count(x)
            c2 = s2.count(x)
            if c1 > c2:
                for _ in range(c1):
                    s3.append(x)
            if c2 > c1:
                for _ in range(c2):
                    s3.append(x)

        return s3

    def intersection(self, set1):
        allValues = sorted(list(set(self.multiset + set1)))
        s1 = self.multiset
        s2 = set1
        s3 = []
        for x in allValues:
            c1 = s1.count(x)
            c2 = s2.count(x)
            if c1 < c2:
                for _ in range(c1):
                    s3.append(x)
            if c2 < c1:
                for _ in range(c2):
                    s3.append(x)

        return s3

    def difference(self, set2):
        for x in set2:
            count = Multiset(set2).count(x)
            if count > 0:
                if self.multiset.count(x) > 0:
                    self.multiset.remove(x)


# Test cases
m1 = Multiset([1, 2, 2])
m2 = Multiset([1, 1, 2, 2, 2, 3])

# Addition
m1.add(6)
print(m1.multiset)  # [1, 2, 2, 6]

# Subtration
m1.remove(6)
print(m1.multiset)  # [1, 2, 2]

# Count
print(m1.count(2))  # 2

# Union
print(m1.union(m2.multiset))  # [1, 1, 2, 2, 2, 3]

# Intersection
print(m1.intersection(m2.multiset))  # [1, 2, 2]

# Difference update
m1.add(2)  # This tests for unsorted sets
m2.add(2)
m1.difference(m2.multiset)
print(m1.multiset)  # [2]
