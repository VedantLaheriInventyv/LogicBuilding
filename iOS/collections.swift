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


//set collections in swift
//declaring and initialization a set 
var cars:Set<String>=["audi","bmw","tesla"]
print("cars set:\(cars)")
print("I have \(cars.count) cars in my garage.")
//printing and iterating through all elements of set
for car in cars {
    print("\(car)")
}
var mySet1: Set = [ 3, 6, 9, 12, 15, 18, 21, 24, 27, 30 ]
var mySet2: Set = [ 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 ]
//union of sets
var unionOfSets = mySet1.union(mySet2).sorted()
print("Union set: \(unionOfSets)")
//intersection of Sets
var intersectionfSets = mySet1.intersection(mySet2).sorted()
print("intersection set: \(intersectionfSets)")
//difference of sets
var differenceofsets=mySet1.subtracting(mySet2).sorted()
print("differnce set:\(differenceofsets)")
//symmetric difference of sets
var symmetricdifferencesets=mySet1.symmetricDifference(mySet2).sorted()
print("symmetric difference set:\(symmetricdifferencesets)")
//checking subset
var issubset=mySet2.isSubset(of: mySet1)
print(issubset)
//checking superset
var issuperset=mySet1.isSuperset(of: mySet2)
print(issuperset)
//checking disjoint
var isdisjoint=mySet1.isDisjoint(with: mySet2)
print(isdisjoint)
//removing specified element from set
mySet1.remove(3)
print(mySet1)
//removing first element of set
mySet1.removeFirst()
print(mySet1)
//removing all elements of set
mySet1.removeAll()
print(mySet1)
//checking if set contains an elemet or not
var contains=mySet1.contains(27)
print(contains)
//printing the count of total no of elements present inside the set
var count=mySet1.count
print(count)
//checking if set is empty or not
var isempty = mySet1.isEmpty
print(isempty)
//printing any random element of set
var random=mySet2.randomElement()!
print(random)


//Dictionary collections in Swift
//creating a Dictionary
var fruitsvegetable: [String: String] = ["fruit": "Apple", "vegetable": "Carrot"] 
print("\(fruitsvegetable)")
//creating an empty Dictionary
var myDictionary1:[String:String] = [:]
print(myDictionary1)
print("Original dictionary: ", fruitsvegetable)
//updating value of a key
fruitsvegetable["fruit"] = "mango"
print("Updated dictionary: ", fruitsvegetable)
//printing keys of Dictionary
var keys = Array(fruitsvegetable.keys)
print("Keys:", keys)
//printing values of Dictionary
var values = Array(fruitsvegetable.values)
print("values:", values)
//printing and iterating all key-value pairs of Dictionary
for (key, value) in fruitsvegetable
{
  print("\(key): \(value)") 
}
//function to convert Array to Dictionary 
var names=["virat","sachin"]
var centuries=[80,100]
var cricket = Dictionary(uniqueKeysWithValues: zip(
                     names,centuries))
print(cricket)
cricket.removeValue(forKey: "virat")
print(cricket)
//function to convert Dictionary to Array
var dictArray1 = Array(cricket.keys) 
var dictArray2 = Array(cricket.values) 
print(dictArray1) 
print(dictArray2) 
//function to print the count of keys
print("Total number of players are :\(cricket.count)")
//function to check if the dictionary is empty or not
print("is fruitsvegetable dictionary empty? \(fruitsvegetable.isEmpty)")
