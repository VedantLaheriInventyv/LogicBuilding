#program to print sum of digits
number = int(input("Enter the Number: "))
sum = 0
for value in range(0, number + 1):
    sum = sum + value
print("sum of digits of an given number",sum)