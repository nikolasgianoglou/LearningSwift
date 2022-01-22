import Cocoa

//comparing structures and classes
struct someStructure{ }
class Someclass{ }
//Structures and classes in Swift have many things in common. Both can:
/*Define properties to store values
Define methods to provide functionality
Define subscripts to provide access to their values using subscript syntax
Define initializers to set up their initial state
Be extended to expand their functionality beyond a default implementation
Conform to protocols to provide standard functionality of a certain kind*/

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()
print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")

//Memberwise Initializers for Structure Types

let vga = Resolution(width: 640, height: 480)

//Structures and Enumerations Are Value Types
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
print("hd is still \(hd.width) pixels wide")

enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")


//Classes are reference types

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

//Identity operators
//Identical to (===)
//Not identical to (!==)

if tenEighty === alsoTenEighty {
print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
print(alsoTenEighty.frameRate)
print(tenEighty.frameRate)
