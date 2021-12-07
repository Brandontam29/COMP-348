# --------------------------------------------------------------
# Assignment 3
# Question 2
# Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
# --------------------------------------------------------------
print("hello world")

# Variables
x = 1
y = "john"
z = 2.0
print(x, y, z)

# Casting
a = str(x)
print(type(a))

# Types
print(type(x))
print(type(y))
print(type(z))

# List
# Collection which is ordered and changeable. Allows duplicate members.


# Tuples
# Collection which is ordered and unchangeable. Allows duplicate members.
tup1 = ("aa", "bb", "cc", "dd")
print(tup1)

# Sets
# Collection which is unordered, unchangeable*, and unindexed. No duplicate members.
# *Can add and remove
set1 = {"aa", "bb", "cc", "dd"}
set1.update(["bb", "ee", "ff"])
set1.remove("bb")
print(set1)

# Dictionary
# Collection which is ordered** and changeable. No duplicate members.