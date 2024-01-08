let number1 = 15
let number2 = 7

// Arithmetic Operations
let sum = number1 + number2
let difference = number1 - number2
let product = number1 * number2
let quotient = number1 / number2
let remainder = number1 % number2

print("Arithmetic Operations:")
print("Sum: \(sum)")
print("Difference: \(difference)")
print("Product: \(product)")
print("Quotient: \(quotient)")
print("Remainder: \(remainder)")

// Relational Operations
let isEqual = number1 == number2
let isNotEqual = number1 != number2
let isGreaterThan = number1 > number2
let isLessThan = number1 < number2
let isGreaterThanOrEqual = number1 >= number2
let isLessThanOrEqual = number1 <= number2

print("\nRelational Operations:")
print("Is equal: \(isEqual)")
print("Is not equal: \(isNotEqual)")
print("Is greater than: \(isGreaterThan)")
print("Is less than: \(isLessThan)")
print("Is greater than or equal: \(isGreaterThanOrEqual)")
print("Is less than or equal: \(isLessThanOrEqual)")

// Logical Operations
let bothAreEven = (number1 % 2 == 0) && (number2 % 2 == 0)
let eitherIsOdd = (number1 % 2 != 0) || (number2 % 2 != 0)

print("\nLogical Operations:")
print("Both are even: \(bothAreEven)")
print("Either is odd: \(eitherIsOdd)")

let x = 10
let y = 5
let z = 2

// Precedence examples:
let result1 = x + y * z     // Multiplication first: 10 + (5 * 2) = 20
let result2 = -x + y        // Negation first: -10 + 5 = -5
let result3 = x % y + z     // Modulo first: 10 % 5 + 2 = 3
let result4 = x + y > z     // Addition first, then comparison: (10 + 5) > 2 = true
let result5 = x == y && y != z  // Equality first, then inequality: (10 == 5) && (5 != 2) = false

// Associativity examples:
let result6 = x - y - z     // Left-associative: ((x - y) - z) = 3
let result7 = x ^ y ^ z     // Right-associative: x ^ (y ^ z) = 1

print("Result 1: \(result1)")
print("Result 2: \(result2)")
print("Result 3: \(result3)")
print("Result 4: \(result4)")
print("Result 5: \(result5)")
print("Result 6: \(result6)")
print("Result 7: \(result7)")
