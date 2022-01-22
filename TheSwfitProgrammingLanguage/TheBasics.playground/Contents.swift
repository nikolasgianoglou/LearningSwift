import Cocoa

//Tuples
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
let (justTheStatusCode, _) = http404Error
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")

print("The status message is \(http200Status.description)")

//Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String? // surveyAnswer is automatically set to nil

//If Statements and Forced Unwrapping
if convertedNumber != nil {
    print("converted has an integer value of \(convertedNumber!)")
}

//Optional Binding
//You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable
//if let constantName = someOptional { statements }


if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
}else{
    print("The string \"\(possibleNumber)\" couldn't beconverted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {print("\(firstNumber) < \(secondNumber) < 100")}

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100{
            print("\(firstNumber) < \(secondNumber) < 100")}
    }
}
    

//Implicitly Unwrapped Optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point
            

let assumedString: String! = "An implicitly unwrapped optional string."
            
let implicitString: String = assumedString // no need for an exclamation point

if assumedString != nil {
    print(assumedString)
}

if let definiteString = assumedString{
    print(definiteString)
}
    
//Error Handling
func canThrowAnError() throws {   }

do{//creates a new containing scope, which allows errors to be propagated to one or more catch clauses
    try canThrowAnError()
}catch{ }

func makeASandwich() throws { }

//Assert
let age = -3
//assert(age >= 0, "A person's age can't be less than zero.")

//fatalError("Unimplemented")

//Basic Operators

let (x, y) = (1, 2)
//Comparing Tuples
(1, "zebra") < (2, "apple")

//Ternary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

//Nil Coalescing Operator
//The nil-coalescing operator is shorthand for the code: a != nil ? a! : b

let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName

//Range Operators
//Closed Range Operator
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//Half-Open Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
for i in 0..<names.count {
    print("Person \(i + 1) is called \(names[i])")
}
            
//One Sided Ranges
for name in names[2...] {
    print(name)
}
for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)

//Logical Operatos
//Logical NOT (!a)
//Logical AND (a && b)
//Logical OR (a || b)
var enteredDoorCode = true
var passedRetinaScan = false
var hasDoorKey = false
var knowsOverridePassword = true

if ((enteredDoorCode && passedRetinaScan) || (hasDoorKey || knowsOverridePassword )){}

