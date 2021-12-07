# --------------------------------------------------------------
# Assignment 3
# Question 3
# Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
# --------------------------------------------------------------

def listGenerator(*args):
    newList = []
    for x in args:
        newList.append(x)
    return newList


# Test cases
print(listGenerator())  # []
print(listGenerator("aa", "bb", 33, "dd", 55))  # ['aa', 'bb', 33, 'dd', 55]
