import Cocoa

import Foundation
//Arrays
var numbers: Array<Int> = [1,2,3,4]
print(numbers)

var someInts: [Int] = []
someInts = []
someInts.append(3)

//Creating an Array with a Default Value
var threeDoubles = Array(repeating: 0.0, count: 3)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles

//Creating an Array with an Array Literal
var shoppingList: [String] = ["Eggs", "Milk"]
var shoppingList2: Array<String> = ["Eggs", "Milk"]
var shoppingList3 = ["Eggs", "Milk"]

//Accessing and Modifying an Array

print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty{
    print("The shopping List is empty")
}else{
    print("The shopping list isn't Empty")
}

shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"

shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at: 0)
firstItem = shoppingList[0]
let apples = shoppingList.removeLast()

//Iterating Over an Array
for item in shoppingList{
    print(item)
}

for(item,index) in shoppingList.enumerated(){
    print("item \(item + 1) : \(index)")
}

//Creating and Initializing an Empty Set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
letters.insert("a")
letters = []
var favoriteGenres: Set<String> = ["Rock", "Classical","Hip hop"] //var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]

//Accessing and Modifying a Set
print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty{
    print("As far as music goes, Im not from this galaxy")
}else{
    print("i have no particular music preferences")
}
favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock"){
    print("\(removedGenre)? Im over it")
}else{
    print("i never much cared for that")
}

if favoriteGenres.contains("Funk"){
    print("I get up on the good foot.")
}else{
    print("It's too funky in here")
}

//Iterating over a set
for genre in favoriteGenres{
    print("\(genre)")
}


for genre in favoriteGenres.sorted(){
    print("\(genre)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

//Use the “is equal” operator (==) to determine whether two sets contain all of the same values.
//Use the isSubset(of:) method to determine whether all of the values of a set are contained in the specified set.
//Use the isSuperset(of:) method to determine whether a set contains all of the values in a specified set.
//Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a set is a subset or superset, //but not equal to, a specified set.
//Use the isDisjoint(with:) method to determine whether two sets have no values in common.

//Dictionaries
//Dictionary Type Shorthand Syntax
//Creating an empty Dictionary
var namesOfIntegers: [Int: String] = [:]
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

//Creating a Dictionary with a Dictionary Literal
var airports:[String: String] = ["YYZ":"Toronto Pearson","DUB": "Dublin"]
//var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//Acessing and modifying a Dictionary
airports.count
airports.isEmpty
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("the old value for DUB was \(oldValue)")
}

if let airportName = airports["DUB"]{
    print("The name of the airport is \(airportName)")
}else{
    print("That airport isnt in the airports dictionary")
}

airports["APL"] = "Apple International"
airports["APL"] = nil
// APL has now been removed from the dictionary

if let removedValue = airports.removeValue(forKey: "DUB"){
    print("the removed airport's name is \(removedValue)")
}else{
    print("The airports dictionary doesn't contain a value for DUB.")
}

//Iterating over a Dictionary
for(airportCode, airportName) in airports{
    print("\(airportCode): \(airportName)")
    
}
for airportCode in airports.keys.sorted(){
    print("Airport code: \(airportCode)")
}
for airportName in airports.values {
    print("Airport name: \(airportName)")
}
let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)
