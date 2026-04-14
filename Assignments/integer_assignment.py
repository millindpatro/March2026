# INTEGER DATATYPE ASSIGNMENT
# ===========================

# SOLVED EXAMPLE
# --------------
# Question: Calculate the sum of first 5 even numbers
print("SOLVED EXAMPLE:")
print("Calculate the sum of first 5 even numbers")
first_5_even = [2, 4, 6, 8, 10]
sum_even = sum(first_5_even)
print(f"First 5 even numbers: {first_5_even}")
print(f"Sum: {sum_even}")
print("-" * 50)

# ASSIGNMENT QUESTIONS
# ===================

# Question 1: Calculate the product of first 10 natural numbers
print("Question 1: Calculate the product of first 10 natural numbers")
natural_numbers=[1,2,3,4,5,6,7,8,9,10]
total=1
for i in range(0,len(natural_numbers)):
  total*=natural_numbers[i]
print("Product: ",total)
print("-" * 50)

# Question 2: Find the remainder when 156 is divided by 7
print("\nQuestion 2: Find the remainder when 156 is divided by 7")
print(156%7)
print("-" * 50)

# Question 3: Calculate the square of 25
print("\nQuestion 3: Calculate the square of 25")
print(25**0.5)
print("-" * 50)

# Question 4: Find the cube root of 125
print("\nQuestion 4: Find the cube root of 125")
print((125**0.5)**0.5)
print("-" * 50)

# Question 5: Calculate the sum of digits in number 12345
print("\nQuestion 5: Calculate the sum of digits in number 12345")
number=12345
total=0
for i in range(5):
  total+=number%10
  number/=10
print(total)
print("-" * 50))

# Question 6: Check if 97 is a prime number
print("\nQuestion 6: Check if 97 is a prime number")
counter=0
for i in range(1,98):
  if(97%i==0):
    counter+=1
if(counter==2):
  print("97 is Prime")
else:
  print("97 is not prime")
print("-" * 50)
  
# Question 7: Find the factorial of 8
print("\nQuestion 7: Find the factorial of 8")
factorial=1
for i in range(8,0,-1):
  factorial*=i
print(factorial)
print("-" * 50)

# Question 8: Calculate the average of numbers: 15, 23, 31, 42, 56
print("\nQuestion 8: Calculate the average of numbers: 15, 23, 31, 42, 56")
numbers=[15,23,31,42,56]
total=sum(numbers)
print(total/len(numbers))
print("-" * 50)

# Question 9: Find the greatest common divisor (GCD) of 48 and 36
print("\nQuestion 9: Find the greatest common divisor (GCD) of 48 and 36")
a,b=48,36
while b != 0:
    a, b = b, a % b

print(a)
print("-" * 50)

# Question 10: Calculate the sum of first 20 odd numbers
print("\nQuestion 10: Calculate the sum of first 20 odd numbers")
i=1
counter=0
total=0
while(counter!=20):
  total+=i
  i+=2
  counter+=1
print(total)
print("-" * 50)
