import Foundation//importing Foundation library for using power function
//creating a class
class Person {
    var name: String
    var age: Int
    var address: String?  

    //initialization example
    init(name: String, age: Int, address: String?) {
        self.name = name
        self.age = age
        self.address = address
        print("Person initialized")
    }

    //deinitialization example
    deinit {
        print("Person deinitialized")
    }
    //creating a function
    func hello() {
        print("Hello, my name is \(name)!")
    }
}

//datatypes
let intval:Int=10
let floatval:Float=10.00
let doubleval:Double=3.14579
let boolval:Bool=true
let stringval:String="vedant"//initialing a string 

//operators
let sum=intval+10;
let difference=floatval-2.50
let product=intval*3
let division=doubleval/2.0
let remainder=intval%4
let isEqual = stringval == "Hello, Swift!"
let isNotEqual = intval != 50
let isGreaterThan = doubleval > 3.0


//range operators:closed range example
for val in 1...5
{
    print("closed range elements ",val)
}

//range operators:half open range example
for value in 1..<5
{
    print("half open range elements ",value)
}
//string comparison
let str1 = "vedant"
let str2 = "laheri"
let str3 = "vedant"

// compare str1 and str2
print(str1 == str2)

// compare str1 and str3
print(str1 == str3)

//appending a string
var fname = "vedant"
var lname = "laheri"
fname.append(lname)
print(fname)


// Counting length of string
var s = "Hello vedant! How are you?"
var len = s.count
print("Length of str is \(len)")

//character deinitialization
var charname="v"
print(charname)

//typecasting example
let castInteger = Int(doubleval)

//calling a function
let optionalAddress = Person(name: "vedant laheri", age: 22, address: nil)

print("Data types:", intval, doubleval, stringval, boolval)
print("Operations:", sum, difference, product, division, remainder, isEqual, isNotEqual, isGreaterThan)
print("Type casting:", castInteger)

let person = Person(name: "vedant", age: 22, address: "mahuva")
person.hello()

//example of optional
var myAge: Int? = nil
myAge = 25 

//example of optional chaining
class Animal {
    var pet: Dog?
}

class Dog {
    var name: String = "Tommy"
}

let myDog = Animal()  

let dogName = myDog.pet?.name  

//function to calculate area of triangle
func aot(base: Double, height: Double) -> Double {
  let area = 0.5 * base * height
  return area
}

let base = 10.0 
let height=2.050
let areaoftriangle = aot(base: base, height: height)
print("The area of the triangle is: \(areaoftriangle)")

//function to calculate area of equilateral triangle
func aoet(side: Double) -> Double 
{ //area of equilateral triangle =(√3/4)a2
    let halfside=side/2
    let height=halfside*sqrt2times
    let area=0.5*side*height
    return area
}

let sqrt2times=0.8660254037844386  //calculating √3/4
let side = 5.0 

let areaofequitriangle = aoet(side: side)
print("The area of the equilateral triangle is: \(areaofequitriangle)")

//function to calculate power of number
func powerofno(x:Double,y:Double)->Double
{
    let power=pow(x,y)
    return power
}
let x=2.00000
let y=2.00000
let powerofint=powerofno(x:x,y:y)
print("the power of x raise to y:\(powerofint)")

//function to calculate circumfernce and area of circle
func diacirle(radius:Double)->(circumfernceofcircle:Double,diameterofcircle:Double)
{
    let circumfernceofcircle=2*3.14*radius
    let diameterofcircle=2*radius
    return(circumfernceofcircle,diameterofcircle)
}
let radius=10.00000

let diameterandcircumfernce=diacirle(radius:radius)

print("the diameter and circumfernce of circle :\(diameterandcircumfernce)")

//function to Convert days into years, weeks, and months.
func calender(days:Int)->(weeks:Int,months:Int,years:Int)
{
    let weeks=days/7
    let months=days/30
    let years=days/365
    return(weeks,months,years)
}
let days=365

let monthandyear=(calender(days:days))
print("no of weeks months and years from given days are:\(monthandyear)")

//function to calculate total average and percentage
func marksheet(s1marks:Double,s2marks:Double,s3marks:Double,s4marks:Double,s5marks:Double)->(total:Double,avg:Double,per:Double)
{
    let total=(s1marks+s2marks+s3marks+s4marks+s5marks)
    let avg=total/5.00000
    let per=(total*100)/500
    return(total,avg,per)
}
let s1marks=50.90
let s2marks=78.70
let s3marks=85.50
let s4marks=80.90
let s5marks=95.89

let marks=(marksheet(s1marks:s1marks,s2marks:s2marks,s3marks:s3marks,s4marks:s4marks,s5marks:s5marks))
print("the total average and percentage  are:\(marks)")



