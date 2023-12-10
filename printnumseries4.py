#python program for input : 1! -3! 5! -7!  ....n=4  and output  1 -6 120 -5040
n = int(input("Enter n: "))
x = 1
for i in range(1, n*2+1, 2):
    ans = 1
    for j in range(1, i+1):
        ans *= j
    if x % 2 == 0:
        ans =ans*-1
    else:
        ans = ans*1
    x += 1
    print(ans, end=" ")

     