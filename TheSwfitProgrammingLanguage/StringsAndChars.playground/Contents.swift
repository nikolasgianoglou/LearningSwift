import Cocoa
import Foundation


//Multiline String Literals
let quotation = """
 The White Rabbit put on his spectacles. "Where shall I
    begin,
 please your Majesty?" he asked.

 "Begin at the beginning," the King said gravely, "and go on
 till you come to the end; then stop."
 7
"""

print("\0")
//Extended String Delimiters
print(#"Line 1 \nLine 2"#)
print(#"Line 1\#nLine 2"#)

//Initializing an Empty String
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty{
    print("Nothing inside this string")
    
}
//String Mutability
var variableString = "Horse"
variableString += " and carriage"

for character in "Dog!" {
    print(character)
}
let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)
print(catString)
//var welcome = "Hello"
welcome.append(exclamationMark)

//String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)

print(#"Write an interpolated string in Swift using \(multiplier)."#)
print(#"6 times 7 is \#(6 * 7)."#)

//Counting Strings
var word = "cafe"
print("the number of characters in \(word) is \(word.count)")

//Acessing and Modifying a String
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
print(greeting[greeting.index(before: greeting.endIndex)])
print(greeting[greeting.index(after: greeting.startIndex)])
let index = greeting.index(greeting.startIndex, offsetBy:7)

//for index in greeting.indices {
//    print("\(greeting[index])", terminator: "")
//}

//Inserting and Removing
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)

welcome.insert(contentsOf: " there", at:welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)

print(welcome)

//Substrings
let str = "Hello, world!"
let stridx = str.firstIndex(of: ",") ?? str.endIndex
let beginning = greeting[..<stridx]

let newString = String(beginning)

//Comparing Strings
let test = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."

if test == sameQuotation {
    print("These two strings are considered equal")
}

let dogString = "Dog!!"
