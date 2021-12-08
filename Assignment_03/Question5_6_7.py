# --------------------------------------------------------------
# Assignment 3
# Question 5, 6, and 7
# Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
# --------------------------------------------------------------
import math

# Question 7
shapeDict = {
    "Circle": 0,
    "Ellipse": 0,
    "Rhombus": 0,
    "Shape": 0,
}

# QUESTION 5


class Shape:
    perimeter = "undefined"
    area = "undefined"

    def __init__(self):
        self.updateDictionary()
        self.id = self.getId()
        self.perimeter = "undefined"
        self.area = "undefined"

    # Question 7
    def updateDictionary(self):
        if type(self).__name__ != "Shape":
            shapeDict.update({"Shape": shapeDict["Shape"] + 1})

        shapeDict.update(
            {type(self).__name__: shapeDict[type(self).__name__] + 1})

    def getId(self):
        return shapeDict["Shape"]

    def print(self):
        try:
            print("Name:", type(self).__name__)
            print("Id:", self.id)
            print("Perimeter:", self.perimeter)
            print("Area:", self.area, "\n")
        except:
            print("nono")

    def perimeter():
        return NotImplemented

    def area():
        return NotImplemented


class Circle(Shape):

    def __init__(self, r):
        self.updateDictionary()
        self.id = self.getId()
        self.radius = r
        self.perimeter = math.pi * r * 2
        self.area = math.pi * r**2

    def perimeter(self):
        return self.perimeter

    def area(self):
        return self.area


class Ellipse(Shape):
    count = 0

    def __init__(self, a, b):
        self.updateDictionary()
        self.id = self.getId()
        self.semiMajor = a
        self.semiMinor = b

        self.area = math.pi * a * b
        self.perimeter = "undefined"

    def print(self):
        eccentricity = self.eccentricity()
        print("Name:", type(self).__name__)
        print("Id:", self.id)
        print("Perimeter:", self.perimeter)
        print("Area:", self.area)
        print("Eccentricity:", eccentricity, "\n")

    def area(self):
        return self.area

    def eccentricity(self):
        try:
            self.eccentricity = math.sqrt(
                self.semiMajor**2 - self.semiMinor**2)
        except:
            print("Error: Invalid:", type(self).__name__)
            self.eccentricity = "undefined"
        return self.eccentricity


class Rhombus(Shape):
    count = 0

    def __init__(self, p, q):
        self.updateDictionary()
        self.id = self.getId()
        self.d1 = p
        self.d2 = q

        self.side = math.sqrt(p**2 + q**2) / 2
        self.perimeter = self.side * 4
        self.area = p * q * 0.5

    def print(self):
        inradius = self.inradius()
        print("Name:", type(self).__name__)
        print("Id:", self.id)
        print("Perimeter:", self.perimeter)
        print("Area:", self.area)
        print("Inradius:", inradius, "\n")

    def perimeter(self):
        return self.perimeter

    def area(self):
        return self.area

    def inradius(self):
        try:
            self.inradius = self.d1 * self.d2 / self.perimeter()
        except:
            print("Error: Invalid:", type(self).__name__)
            self.inradius = "undefined"

        return self.inradius

# Function to find the index of spaces


def find_nth(haystack, needle, n):
    start = haystack.find(needle)
    while start >= 0 and n > 1:
        start = haystack.find(needle, start+len(needle))
        n -= 1
    return start


# QUESTION 6
shapeArr = []

text = open('Assignment_03/shapes.txt', 'r')
shapes = text.readlines()
# Find the information about each shape
for shape in shapes:
    if shape.find('\n') == -1:
        if shape.find(' ') == -1:
            stop1 = len(shape)
        else:
            stop1 = shape.find(' ')
            if find_nth(shape, ' ', 2) == -1:
                stop2 = len(shape)
            else:
                stop2 = find_nth(shape, ' ', 2)
                stop3 = len(shape)
    else:
        if shape.find(' ') == -1:
            stop1 = shape.find('\n')
        else:
            stop1 = shape.find(' ')
            if find_nth(shape, ' ', 2) == -1:
                stop2 = shape.find('\n')
            else:
                stop2 = find_nth(shape, ' ', 2)
                stop3 = shape.find('\n')

    shapeName = shape[0:stop1]
    # Initialize and store shape
    if shapeName == "shape":
        newShape = Shape()

    elif shapeName == "circle":
        data1 = int(shape[stop1:stop2])
        newShape = Circle(data1)

    elif shapeName == "ellipse":
        data1 = int(shape[stop1:stop2])
        data2 = int(shape[stop2:stop3])
        newShape = Ellipse(data1, data2)

    elif shapeName == "rhombus":
        data1 = int(shape[stop1:stop2])
        data2 = int(shape[stop2:stop3])
        newShape = Rhombus(data1, data2)

    shapeArr.append(newShape)

# Display shape datas
for shape in shapeArr:
    shape.print()

# Question 7: Print Dict
print("statistics:")
for key, value in shapeDict.items():
    plurial = "(s)"
    if key == "Rhombus":
        plurial = "(es)"

    if key == "Shape":
        print("\t--")
    print("\t", key + plurial + ":", value)
