// Arrays collection in swift
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)
var sixDoubles = threeDoubles + threeDoubles
print(sixDoubles)
var fruits:[String]=["mango","apple","banana"]
print("fruits list:\(fruits)")
//append function
fruits.append("grapes")
print("fruits list:\(fruits)")
fruits+=["litchi"]
print("updated fruits list 1:\(fruits)")
//function for inserting a value at specific index
fruits.insert("guvava",at:5)
print("updated fruits list 2:\(fruits)")
//function for removing a value from specific index
fruits.remove(at:5)
//function for removinf the last value from array
print("updated fruits list 3:\(fruits)")
fruits.removeLast()
print("updated fruits list 4:\(fruits)")
fruits.removeFirst()
print("updated fruits list 5:\(fruits)")
//for in loop for printing all items of an array
for items in fruits
{
    print(items)
}
//for loop with index and value
for (index,value) in fruits.enumerated()
{
    print("index:\(index),fruit name:\(value)")
}
print("total no of fruits:\(fruits.count)")