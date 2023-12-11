#python program for factorial series  1! 3! 5! ...n=3
n = int(input("Enter n: "))
for i in range(1, n*2+1, 2):
    ans = 1
    for j in range(1, i+1):
        ans = ans*j
    print(ans, end=" ")
