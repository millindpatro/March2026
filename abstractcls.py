# Problem: Abstract Class - Shape
# Objective
# Create an abstract class Shape and implement different shapes using abstraction.

# Requirements
# Abstract Class: Shape
# Define an abstract method:
# area()
# Child Classes
# 1. Circle
# Formula:
# area = π * r²
# 2. Rectangle
# Formula:
# area = length * breadth
# What You Should Do
# Use ABC (Abstract Base Class)
# Use @abstractmethod decorator
# Implement area() method in child classes
# Create objects and print the area


from abc import ABC, abstractmethod
class Shape():
    def __init__(self):
        pass
        
    @abstractmethod
    def area(self):
        pass

class Circle(Shape):

    def __init__(self,radius):
        super().__init__()
        self.radius=radius
    def area(self,radius):
        print(3.14*radius*radius)
    
class Rectangle(Shape):

    def __init__(self,l,b):
        super().__init__()
        self.l=l
        self.b=b

    def area(self,l,b):
        print(l*b)
