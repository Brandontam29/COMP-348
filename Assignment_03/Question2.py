# --------------------------------------------------------------
# Assignment 3
# Question 2
# Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
# --------------------------------------------------------------

def fibonacciGenerator(n):
    fibonacciList = []
    n1, n2 = 0, 1
    count = 0

    while count < n:
        fibonacciList.append(n1)
        nth = n1 + n2
        # update values
        n1 = n2
        n2 = nth
        count += 1

    return fibonacciList


def lucasGenerator(n):
    lucasList = []
    fibonacciList = fibonacciGenerator(n+1)
    count = 0

    while count < n:
        if count == 0:
            lucasList.append(2)
        else:
            lucasList.append(fibonacciList[count - 1] + fibonacciList[count+1])
        count += 1

    return lucasList


# Test cases
print(lucasGenerator(0))  # []
print(lucasGenerator(8))  # [2, 1, 3, 4, 7, 11, 18, 29]
