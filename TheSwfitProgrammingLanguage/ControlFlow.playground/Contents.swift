import Cocoa
import Darwin

//For in loops
let names = ["Anna","Alex","Brian","Jack"]
for name in names{
    print("Hello, \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "car": 4]

for(animalName, legCount) in numberOfLegs{
    print("\(animalName)s have \(legCount) legs")
}

for index in 1...5{
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power{
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let minutes = 60
for tickMark in 0..<minutes{
    //do something
}

let minuteInterval = 5

for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    //0,5,10,15
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval){
    //3,6,9
}

var sum = 0
rowLoop: for row in 0..<8 {
columnLoop: for column in 0..<8 {
    if row == column {
        continue rowLoop
    }
    sum += row * column
}
}

//while loops
//while true{
//run forever
//}

var finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08


var square = 0
var diceRoll = 0
while square < finalSquare{
    diceRoll = Int.random(in: 1...6)
    
    square += diceRoll
    if square < board.count{
        square += board[square]
    }
}
print("Game over")

print(board)

//Repeat While
square = 0
repeat{
    square += board[square]
    diceRoll = Int.random(in: 1...6)
    square += diceRoll
}while square < finalSquare

//Conditional Statements
//If
var temperatureInFahrenheight = 30
if temperatureInFahrenheight <= 32{
    print("Its very cold. Consider use wearing a scarf")
}else if temperatureInFahrenheight <= 86{
    print("Its really worm")
}else{
    print("Its not that cold")
}

//Switch

let someCharacter: Character = "z"
switch someCharacter {
case "a", "A":
    print("The fisrt letter of the alphabet")
case "z":
    print(" The last letter of the alphabet")
default:
    print("some other character")
}

let approximateCount = 62
let countedThings = "moons orbitting Saturn"
let naturalCount: String
switch approximateCount{
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
default:
    naturalCount = "many"
}

//Tuples
let somePoint = (1,1)
switch somePoint{
case(0,0):
    print("\(somePoint) is at the origin")
case(_,0):
    print("\(somePoint) is on the x axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

//Value Bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

//Where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint{
case let (x,y) where x==y:
    print("\(x), \(y) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


//Compound Cases
let someCharacter2: Character = "e"
switch someCharacter2 {
case "a", "e", "i", "o", "u":
    print("\(someCharacter2) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter2) is a consonant")
default:
    print("\(someCharacter2) isn't a vowel or a consonant")
}

let stillAnotherPoint = (9,0)
switch stillAnotherPoint{
case(let distance,0), (0,let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("not on an axis")
}

//Control transfer Statements
//Continue
let puzzleInput = "great minds think alike"
var puzzleOutPut = ""
let charactersToRemove: [Character] = ["a","e", "i", "o","u", " "]

for character in puzzleInput{
    if charactersToRemove.contains(character){
        continue
    }
    puzzleOutPut.append(character)
}
print(puzzleOutPut)

//Break

let numberSymbol: Character = "三"
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "􏰀":
    possibleIntegerValue = 1
case "2", "٢", "二", "􏰀":
    possibleIntegerValue = 2
case "3", "٣", "三", "􏰀":
    possibleIntegerValue = 3
case "4", "٤", "四", "􏰀":
    possibleIntegerValue = 4
default:
    break
}

if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value couldn't be found for \(numberSymbol).")
}

//Fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}


//Labeled Statements
//structure:
//label name : while condition { statements
//}
finalSquare = 25
board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

square = 0
diceRoll = 0

gameLoop: while square != finalSquare{
    diceRoll = Int.random(in: 1...6)
    
        switch square + diceRoll{
        case finalSquare:
            break gameLoop
        case let newSquare where newSquare > finalSquare:
            continue gameLoop
        default:
            square += diceRoll
            square += board[square]
        }
}

//Early Exit
func greet(person: [String: String]){
    guard let name = person["name"] else{
        return
    }

print("Hello \(name)!")

guard var location = person["location"] else {
    print("I hope the weather is nice near you.")
    return
}
    location = ""
    print("I hope the weather is nice in \(location).")
}
greet(person: ["name": "John"])

greet(person: ["name": "Jane", "location": "Cupertino"])

if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
}else{
    // Fall back to earlier iOS and macOS APIs
}
