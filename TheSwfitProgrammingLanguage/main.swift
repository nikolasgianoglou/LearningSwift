//
//  main.swift
//  TheSwfitProgrammingLanguage
//
//  Created by Nikolas Gianoglou Coelho on 18/12/21.
//

import Foundation

print("Hello, World!")

var optionalName:String? = "John Appleseed"
var greeting = "Hello!"

if let name = optionalName{
    greeting = "Hello \(name)"
}
print(greeting,terminator: " ")

let nickname :String? = nil
let fullName: String = "John Appleseed"

var nikolas: String = "oi"

var y:Int64 = 65

let paddedDouble = 00123.456
let oneMillion = 1_000_000
let pi = 3.14
let integerPi = Int(pi)

//Type Aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

