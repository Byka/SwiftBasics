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
