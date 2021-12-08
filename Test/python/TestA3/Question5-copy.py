# --------------------------------------------------------------
# Assignment 3
# Question 5
# Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
# --------------------------------------------------------------
import math


class Shape:
    count = 0

    perimeter = "undefined"
    area = "undefined"

    def __init__(self):
        Shape.count += 1
        self.id = Shape.count
        self.perimeter = "undefined"
        self.area = "undefined"

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
        Shape.count += 1
        self.id = Shape.count
        self.radius = r

        self.perimeter = math.pi * r * 2
        self.area = math.pi * r**2

    def perimeter(self):
        return self.perimeter

    def area(self):
        return self.area


class Ellipse(Shape):
    def __init__(self, a, b):
        Shape.count += 1
        self.id = Shape.count
        self.semiMajor = a
        self.semiMinor = b

        self.area = math.pi * a * b
        self.perimeter = "undefined"
        try:
            self.eccentricity = math.sqrt(a**2 - b**2)
        except:
            print("nono")

    def print(self):
        try:
            print("Name:", type(self).__name__)
            print("Id:", self.id)
            print("Perimeter:", self.perimeter)
            print("Area:", self.area)
            print("Eccentricity:", self.eccentricity, "\n")
        except:
            print("Error: Invalid:", type(self).__name__)

    def area(self):
        return self.area

    def eccentricity(self):
        return self.eccentricity


class Rhombus(Shape):
    def __init__(self, p, q):
        Shape.count += 1
        self.id = Shape.count
        self.d1 = p
        self.d2 = q

        self.side = math.sqrt(p**2 + q**2) / 2
        self.perimeter = self.side * 4
        self.area = p * q * 0.5
        self.inradius = p * q / self.perimeter

    def print(self):
        try:
            print("Name:", type(self).__name__)
            print("Id:", self.id)
            print("Perimeter:", self.perimeter)
            print("Area:", self.area)
            print("Inradius:", self.inradius, "\n")
        except:
            print("nono")

    def perimeter(self):
        return self.perimeter

    def area(self):
        return self.area

    def inradius(self):
        return self.inradius


def find_nth(haystack, needle, n):
    start = haystack.find(needle)
    while start >= 0 and n > 1:
        start = haystack.find(needle, start+len(needle))
        n -= 1
    return start


# Main
shapeArr = []
stop1 = None
stop2 = None
stop3 = None
data1 = None
data2 = None
newShape = None

text = open('Assignment_03/shapes.txt', 'r')
shapes = text.readlines()
print(shapes)
for shape in shapes:
    if shape.find('\n') == -1:
        if shape.find(' ') == -1:
            newShape = Shape()
        else:
            stop1 = shape.find(' ')
            if find_nth(shape, ' ', 2) == -1:
                stop2 = len(shape)
            else:
                stop2 = find_nth(shape, ' ', 2)
                stop3 = len(shape)
    else:
        if shape.find(' ') == -1:
            newShape = Shape()
        else:
            stop1 = shape.find(' ')
            if find_nth(shape, ' ', 2) == -1:
                stop2 = shape.find('\n')
            else:
                stop2 = find_nth(shape, ' ', 2)
                stop3 = shape.find('\n')

    shapeName = shape[0:stop1]
    print(shape[0:stop1])
    print(shape[stop1:stop2])
    print(shape[stop2:stop3])

    # # Initialize and store shape
    # if shapeName == "shape":
    #     newShape = Shape()
    #     shapeArr.append(newShape)

    # elif shapeName == "circle":
    #     newShape = Circle(data1)
    #     shapeArr.append(newShape)

    # elif shapeName == "ellipse":
    #     newShape = Ellipse(data1, data2)
    #     shapeArr.append(newShape)

    # elif shapeName == "rhombus":
    #     newShape = Rhombus(data1, data2)
    #     shapeArr.append(newShape)


# Display shape datas
# for x in shapeArr:
#     x.print()


# Test cases
# s1 = Shape()

# c1 = Circle(2)
# c2 = Circle(3)

# e1 = Ellipse(2, 1)
# e2 = Ellipse(3, 2)

# r1 = Rhombus(1, 2)
# r2 = Rhombus(2, 3)

# print(Shape.count)
# s1.print()
# c2.print()
# e2.print()
# r1.print()

# print(e1.eccentricity)
# print(r1.inradius)
