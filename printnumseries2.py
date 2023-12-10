#python program to print series of numbers eg if n=4 then 1 121 12321 1234321...n
def print_series(n):
    for i in range(1, n + 1):
        for j in range(1, i + 1):
            print(j, end="")
        for k in range(i - 1, 0, -1):
            print(k, end="")
        if i != n:
            print(end=" ")
n = int(input("Enter the value of n: "))
print_series(n)
