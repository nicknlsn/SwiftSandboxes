//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class SomeType {
    var attribute = "some text"
    
    func behavior(aString: String) -> Void {}
}

extension Double {
    var km: Double { return self * 1_000.0 }
    var m:  Double { return self           }
    var cm: Double { return self / 100.0   }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")

let aMarathon = 42.km + 195.m
print("A marathod is \(aMarathon) meters long")

/*******************************************************************/
struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}

let defaultRext = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))

/*******************************************************************/
extension Int {
    // a method
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
    
    // a mutating instance method
    mutating func square() {
        self = self * self
    }
    
    // subscripts
    subscript(var digitIndex: Int) -> Int {
        var decimalBase = 1
        while digitIndex > 0 {
            decimalBase *= 10
            --digitIndex
        }
        return (self / decimalBase) % 10
    }
    
    // nested type
    enum Kind {
        case Negative, Zero, Positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
}

3.repetitions({
    print("Hello!")
})

// method
3.repetitions {
    print("Goodbye")
}

// mutating instance method
var someInt = 3
someInt.square()

// subscripts
746381295[0]
746381295[1]
746381295[2]
746381295[8]
746381295[9]

// nested type
func printIntegerKinds(numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .Negative:
            print("- ", terminator: "")
        case .Zero:
            print("0 ", terminator: "")
        case .Positive:
            print("+ ", terminator: "")
        }
    }
    print("")
}

printIntegerKinds([3, 19, -27, 0, -6, 0, 7])