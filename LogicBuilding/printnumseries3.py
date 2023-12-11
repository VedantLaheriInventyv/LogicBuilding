#a python program for Pattern: 1 -2 3 -4 5 -6 ....n=10
n = int(input("Enter n: "))
j = 1
for i in range(1, n+1):
    if i % 2 == 0:
        j = i * -1
    else:
        j = i * 1
    print(j, end=" ")

