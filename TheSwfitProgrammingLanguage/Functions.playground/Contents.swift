import Cocoa

//Defining and calling functions
func greet(person: String) -> String{
    let greeting = "Hello, " + person + "!"
    return greeting
}

//function parameters and return values
func sayHelloWorld() -> String {
    return "Hello World"
}

func greet(person: String, alreadyGreeted: Bool) -> String{
    if alreadyGreeted{
        return greet(person: person)
    }else {
        return greet(person: person)
    }
}

print(greet(person: "Tim", alreadyGreeted: true))

//Functions without return values
func greet(person: String) {
    print("Hello, \(person)!")
}
func printAndCount(string: String) -> Int{
    print(string)
    return string.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

printAndCount(string: "hello, world")
printWithoutCounting(string: "hello, world")

//Functions with multiple return values


func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty{ return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]){
    print("min is \(bounds.min) and max is \(bounds.max)")}

//Optional tuple return types

//Functions with an implicit return
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}

//Function Argument Labels and Parameter Names

func someFunction(firstParameterName: Int,secondParameterName: Int) {
    
}

someFunction(firstParameterName: 1, secondParameterName: 2)

func someFunction(argumentLabel parameterName: Int) {}

func greet(person: String, from hometown: String) -> String { //greet(person:)

return "Hello \(person)!  Glad you could visit from \(hometown)."
  
}

func someFunction(_ firstParameterName: Int,secondParameterName: Int) {}

//Omitting Argument labels
func someFunction(_ firstParameter: Int){
    
}

someFunction(3)
 
//Default parameter values
func someFunction(parameterWithoutDefault: Int,parameterWithDefault: Int = 12) {}
                  
//Variadic parameters
//You use a variadic parameter to specify that the parameter can be passed a varying number of //input values when the function is called

func arithmeticMean(_ numbers: Double...) -> Double{
    var total: Double = 0
    for number in numbers{
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)

//In out parameters
func swapTwoInts(_ a: inout Int, _ b: inout Int) { //swapTwoInts(_:_:)
    let temporaryA = a
    a=b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)

//Function types

func addTwoInts(_ a: Int, _ b: Int) -> Int {//type of the function (Int, Int) -> Int
    return a+b
}//addTwoInts(_:_:)

//Using function types
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")
let anotherMathFunction = addTwoInts

//Function types as parameter types
func printMathResult(_ mathFunction: (Int, Int)-> Int, _ a: Int, _ b: Int){
    print("Result: \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 3, 5)

//function types as return types
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
var moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
            
print("counting to zero")
while currentValue != 0{
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}

//Nested Functions

func chooseNestedStepFunction(backward: Bool) -> (Int) -> Int {
func stepForward(input: Int) -> Int { return input + 1
  }
func stepBackward(input: Int) -> Int { return input - 1
  }
return backward ? stepBackward : stepForward
}
currentValue = -4
moveNearerToZero = chooseNestedStepFunction(backward:currentValue > 0)
           
while currentValue != 0{
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}

//Closures

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

//closure expression syntax
//{ ( parameters ) -> return type in statements}

reversedNames = names.sorted(by: { (s1: String, s2: String)
    -> Bool in
    return s1 > s2
})

//Inferring type from the context
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 })

//Implicit Returns from Single-Expression Closures
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )

//Shorthand Argument Names
reversedNames = names.sorted(by: { $0 > $1 } )

//Operator methods
reversedNames = names.sorted(by: >)

//Trailing closure
func someFunctionThatTakesAClosure(closure: () -> Void){}
    

// Here's how you call this function without using a trailing closure:
            
someFunctionThatTakesAClosure(closure: {})

// Here's how you call this function with a trailing closure instead:
someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

reversedNames = names.sorted() { $0 > $1 }
reversedNames = names.sorted { $0 > $1 }


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

//func loadPicture(from server: Server, completion: (Picture)
    //             -> Void, onFailure: () -> Void) {
    //if let picture = download("photo.jpg", from: server) {
        //completion(picture)
    //}else{
    //    onFailure()
    //}



//loadPicture(from: someServer) { picture in
//    someView.currentPicture = picture
//} onFailure: {
 //   print("Couldn't download the next picture.")
//}

//Capturig values
func makeIncrementer(forIncrement amount: Int) -> () -> Int
{
    var runningTotal = 0
    func incrementer() -> Int{
        runningTotal += amount
        return runningTotal
    
    }
     return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
 
incrementByTen()
// returns a value of 10
incrementByTen()
// returns a value of 20

//closures are reference types
// functions and closures are reference types.

//Escaping closures

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler:
@escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
