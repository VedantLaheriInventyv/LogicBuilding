#python program to find max from given length of values
def find_max(*numbers):
    if len(numbers) == 2:
        x, y = numbers
        return max(x, y)
    elif len(numbers) == 3:
        x, y, z = numbers
        return max(x, y, z)
    elif len(numbers) == 4:
        x, y, z, w = numbers
        return max(x, y, z, w)
    else:
        return "Invalid number of arguments"

result1 = find_max(1, 5)
print("Max from (1, 5):", result1)

result2 = find_max(2, 7, 4)
print("Max from (2, 7, 4):", result2)

result3 = find_max(3, 8, 2, 6)
print("Max from (3, 8, 2, 6):", result3)
