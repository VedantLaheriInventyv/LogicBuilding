#python program to print series of numbers eg if n=4 then 1 12 123 1234
def print_series(n):
    for i in range(1, n + 1):
        for j in range(1, i + 1):
            print(j, end="")
        if i != n:
            print(end=" ")
n = int(input("Enter the value of n: "))
print_series(n)

