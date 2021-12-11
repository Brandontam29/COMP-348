#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# --------------------------------------------------------------
# Assignment 3
# Question 5, 6 and 7
# Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
# --------------------------------------------------------------


import math


##################
##  Question 5  ##
##################
def xstr(s):
    try: 
        return round(s, 5) 
    except: 
        return "undefined"

class Shape:
    count = 0
    def __init__(self):
        Shape.count += 1
        self.id = Shape.count 
    def perimeter(self):
        return None
    def area(self):
        return None
    def __str__(self):
        return "%s: %s, perimeter: %s, area: %s" % (self.id, self.__class__.__name__, xstr(self.perimeter()), xstr(self.area()))
        

class Circle:
    def __init__(self,radius : float):
        Shape.__init__(self)
        self.radius=float(radius)
    def perimeter(self):
        return 2 * math.pi * self.radius
    def area(self):
        return math.pi * self.radius**2
    def __str__(self):
        return Shape.__str__( self )


class Ellipse:
    def __init__(self, a : float, b : float):
        if (float(min(a, b)) < 0):
            print("Error: Invalid Ellispe")
            Shape.__init__(self)
            return None
        else: 
            Shape.__init__(self)
            self.semiMajor = float(max(a, b))
            self.semiMinor = float(min(a, b))
    def perimeter(self):
        pass
    def area(self):
        try: 
            return math.pi * self.semiMajor * self.semiMinor
        except: 
            pass
    def eccentricity(self):
        try:
            return (self.semiMajor**2 - self.semiMinor**2)**(1/2)
        except: 
            return None
    def __str__(self):
        try: 
            return  "%s \n   linear eccentricity: %.5f" % (Shape.__str__( self ), self.eccentricity())
        except: 
            return "%s"% (Shape.__str__( self ))
    
class Rhombus:
    def __init__(self,p : float, q : float):
        Shape.__init__(self)
        self.p = float(p)
        self.q = float(q)
    def perimeter(self):
        return 2 * (self.p**2 + self.q**2)**(1/2)
    def area(self):
        return self.p * self.q / 2
    def inradius(self):
        try:
            return self.p * self.q / (2 * (self.p**2 + self.q**2)**(1/2))
        except: 
            return None
    def __str__(self):
        return  "%s \n   in-radius: %.5f" % (Shape.__str__( self ), self.inradius())
    
    
##################
##  Question 6  ##
##################
print("\n\nQuestion 6:\n")
           

fo = open("shape_input.txt", "r")
lines = fo.readlines()
for line in lines: 
    name = line.split(' ')
    if name[0] == 'shape':
        print(Shape())
    elif name[0] == 'circle':
        print(Circle(name[1]))
    elif name[0] == 'ellipse':
        print(Ellipse(name[1], name[2]))
    elif name[0] == 'rhombus':
        print(Rhombus(name[1], name[2]))
    else: 
        print("Shape Unknown")

fo.close()


##################
##  Question 7  ##
##################
print("\n\nQuestion 7:")
        
stats={}
stats['Shape'] = 0

fo = open("shape_input.txt", "r")
lines = fo.readlines()
for line in lines: 
    name = line.split(' ')
    if name[0] == 'shape':
        stats['Shape'] += 1
    elif name[0] == 'circle':
        stats['Shape'] += 1
        if 'Circle' not in stats.keys():
            stats['Circle'] = 1
        else:
            stats['Circle'] += 1
    elif name[0] == 'ellipse':
        stats['Shape'] += 1
        if 'Ellipse' not in stats.keys():
            stats['Ellipse'] = 1
        else:
            stats['Ellipse'] += 1
    elif name[0] == 'rhombus':
        stats['Shape'] += 1
        if 'Rhombus' not in stats.keys():
            stats['Rhombus'] = 1
        else:
            stats['Rhombus'] += 1
    else: 
        print("Shape Unknown")

fo.close()

print("\nStatistics:")
for key in sorted(stats):
    print("   %s(s): %s" % (key, stats[key]))





































