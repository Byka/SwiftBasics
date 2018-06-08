//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var multipleLineStrings = """
sdfsdf
asdfasdfasdf
asdfasdfasdf
asdfasdfasdf
"""

print(multipleLineStrings)


// stringA can be modified
var stringA = "Hello, Swift 4!"
stringA += "--Readers--"
print( stringA )


//Union code
var unicodeString = "Dog???"

print("UTF-8 Codes: ")
for code in unicodeString.utf8 {
    print("\(code) ")
}

let char1: Character = "w"


for ch in "Hello" {
    print(ch)
}


//Array
var array = ["one", "two", "three", "four", "five", "six", "one", "two", "three", "four", "five", "six"]

//Filtering duplicates
var myArray: Set = Set(array)

print(myArray)
array = ["one", "two", "three", "four", "five", "six"]
array.remove(at: 2)


//Check wether a value contain or not
print(array.contains("three"))

//To eleminate a particular value from an array
array = array.filter{$0 != "three"}
array = array.filter{$0 != "three"}

array = array.filter{$0 != "four"}

print(array)



//Type Safety
var varA = 42
//varA = "This is hello"
print(varA)




let evens: Set = [101,12,1,16,18]
print(evens)

for items in evens {
    print(items)
}

for items in evens.sorted() {
    print(evens)
    print(items)

}

//Swift - Optionals
//var perhapsInt: Int? = 0
//
//let sum = perhapsInt * 5
//
//print(sum)


var perhapsStr: String?

var myString :String? = nil


if myString != nil {
    print(myString)
}else{
    print("My string contains nil value")
}

//Forced Unwrapping
var myString2:String?

myString2 = "Hello, Swift 4"

    print( "Before unwrapping \(myString2)")

//Now let's apply unwrapping to get the correct value of the variable −
if myString2 != nil {
    print( myString2! )
} else {
    print("myString has nil value")
}


//Automatic Unwrapping
var myString3:String!

myString3 = "Hello, Swift 4!"

if myString3 != nil {
    print(myString3)
} else {
    print("myString has nil value")
}


//Optional Binding


var myString4:String?
myString4 = "Hello, Swift 4!"

print(myString4)

if let yourString = myString4 {
    print("Your string has - \(yourString)")
} else {
    print("Your string does not have a value")
}


//Tuples
//Swift 4 also introduces Tuples type, which are used to group multiple values in a single compound Value.

var error502 = (501, "Not implemented", 502, "Server is not ready", 101.23)
print(error502.4)

print(error502.3)

var error501 = (errorCode: 501, description: "Not Implemented", errorCode: 502.33)
print(error501.errorCode)   // prints 501.
print(error501.1)


var error205 = ()

print(error205)



//Constants Declaration
let constA = 42
print(constA)


//Functions
// A function is a set of statements organized together to perform a specific task
func display(no1: Int) -> Int {
    let a = no1 * no1
    return a
}

print(display(no1: 100))
print(display(no1: 200))


//Function External Parameter Names
func pow(firstArg a: Int, secondArg b: Int) -> Int {
    var res = a
    for _ in 1..<b {
        res = res * a
    }
    print(res)
    return res
}

pow(firstArg:5, secondArg:3)



func vari<N>(members: N...){
    for i in members {
        print(i)
    }
}

vari(members: 4,3,5)
vari(members: 4.5, 3.1, 5.6)
vari(members: "Swift 4", "Enumerations", "Closures")




//In/Out Parameters

func temp(a1: inout Int, b1: inout Int) {
//    let t = a1
//    a1 = b1
//    b1 = t
    
    // 2 10
    a1 = a1 + b1 // 2 + 10 = 12
    
    b1 = a1 - b1 // 12 - 10 = 2
    
    a1 = a1 - b1 // 12 - 2 = 10
    
    print(a1, b1)
    
}

var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)")


//----------------------
/*
func sum(a: Int, b: Int) -> Int {
    return a + b
}
var addition: (Int, Int) -> Int = sum

print("Result: \(addition(40, 89))")


func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(addition(a, b))")
}
another(sum(a: 10, b: 20), 10, 20)
*/


//Closure
let closure: (Int, Int) -> Int = { (number1, number2) in
    return number1 + number2
}
var result = closure(8,2) // the result is 10





let inferredReturnTypeClosure = {(number:Int) in return number*number }

var aaaa = inferredReturnTypeClosure(10)




// a closure that take one Int and return an Int
var double: (Int) -> (Int) = { x in
    return 2 * x
}

double(2) // 4



let sum = {
    (no1: Int, no2: Int) -> Int in
    return no1 + no2
}

let digits = sum(10, 20)
print(digits)


//Enumeration
enum Month: Int {
    case January = 1, February, March, April, May, June, July, August,
    September, October, November, December
}

let yearMonth = Month.May.rawValue
print("Value of the Month is: \(yearMonth).")



//Structers

struct studentMarks {
    var mark1 = 100
    var mark2 = 200
    var mark3 = 300
}

let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")



struct markStruct2 {
    var mark1: Int
    var mark2: Int
    var mark3: Int
    
    init(mark1: Int, mark2: Int, mark3: Int) {
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

var marks2 = markStruct2(mark1: 98, mark2: 96, mark3:100)
print(marks2.mark1)
print(marks2.mark2)
print(marks2.mark3)



//Classes


class SampleClass: Equatable {
    let myProperty: String
    init(s: String) {
        myProperty = s
    }
}

func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
    return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

spClass1 === spClass2 // false
print("\(spClass1)")

spClass1 !== spClass2 // true
print("\(spClass2)")



//Lazy property

class sample {
    lazy var no = number()    // `var` declaration is required.
}

class number {
    var name = "Swift 4"
}

var firstsample = sample()
print(firstsample.no.name)

//Overriding
class Circle {
    var radious = 12.5
    var area: String {
        return "of rectangle for \(radious)"
    }
}

class rectangle: Circle {
    var print = 7
    override var area: String {
        return super.area + "is now overrodden"
    }
    
}

let rect = rectangle()
rect.radious = 25
rect.print = 1205
print("Radius \(rect.area)")






class StudDetails {
    var stname: String!
    var mark: Int!
    
    init(stname: String, mark: Int) {
        self.stname = stname
        self.mark = mark
    }
    deinit {
        print("Deinitialized \(self.stname)")
        print("Deinitialized \(self.mark)")
    }
}

let stname = "Swift 4"
let mark = 98

print(stname)
print(mark)



//Generics
func exchange<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}

var numb1 = 100
var numb2 = 200

print("Before Swapping Int values are: \(numb1) and \(numb2)")
exchange(a: &numb1, b: &numb2)
print("After Swapping Int values are: \(numb1) and \(numb2)")


var str1 = "Generics"
var str2 = "Functions"

print("Before Swapping String values are: \(str1) and \(str2)")
exchange(a: &str1, b: &str2)
print("After Swapping String values are: \(str1) and \(str2)")





//-------------------------------
struct Dog {
    var name: String
    var breed: String
    var age: Int
    var beenFed: Bool
    
    init(name: String, breed: String, age: Int) {
        self.name = name
        self.breed = breed
        self.age = age
        self.beenFed = false
    }
}

func feedDog( dog: inout Dog) {
    dog.beenFed = true
}




var milo = Dog(name: "Milo", breed: "Chihuahua", age: 3)
feedDog(dog: &milo) // Using the & passes a struct as a reference
print(milo.beenFed) // prints out true
