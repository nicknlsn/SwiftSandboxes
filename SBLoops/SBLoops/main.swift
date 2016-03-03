//
//  main.swift
//  SBLoops
//
//  Created by Nicholas Nelson on 2/5/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

print("SBLoops")

//===----------------------------------------------------------------------===//
//                                   loops                                    //
//===----------------------------------------------------------------------===//

// for loops
// for-in
for index in -1...3 {
    print("\(index) * 3 = \(index * 3)")
}
// can't do a negative number at the end of a range
//let endRange = -3
//for index in 1...endRange {
//    print("\(index) * 3 = \(index * 3)")
//}

// you may not need each value from a sequence, but simply count
let base = 3
let power = 10
var answer = 1
for _ in 1...power { // this will simply execute the block power minus 1 times (starting with zero)
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

// use for-in to iterate over array contents
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

// use for-in with dictionaries, may have different order each time
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// for
for var index = 0; index < 3; ++index {
    print("index is \(index)")
}

// TODO: use a for loop to check a sudoku board to see if it is solved


// while loops
var number = 0
while number < 5 {
    print(++number)
}

// repeat while loops
var input: String
repeat {
    // get user input
    // and do stuff
    input = "q"
    print(input)
} while input !=  "q"

//===----------------------------------------------------------------------===//
//                              conditional statements                        //
//===----------------------------------------------------------------------===//

/********** if statements **************/

let bigNumber = 1000000000
if bigNumber > 1000000 {
    print("1000000000 is indeed a big number")
}

let aFalseConstant = false
if aFalseConstant {
    print("haha this won't ever print")
} else {
    print("this always prints")
}

if bigNumber < 100 {
    print("wont print")
} else if bigNumber > 1000000 {
    print("will this print?")
} // the last else if optional

// can only use a boolean condition
//if "hello world" {
//    print("what will happen here?")
//}

/*********************** switch statements ************************/

// determine if a number is a perfect square
func isPerfectSquare(number: Int) -> Bool {
    let squareRoot = sqrt(Double(number))
    if Int(squareRoot) * Int(squareRoot) == number {
        return true
    } else {
        return false
    }
}

// find if a number is prime
func isPrime(number: Int) -> Bool {
    if number <= 1 {
        return false
    } else if number <= 3 {
        return true
    } else if number % 2 == 0 || number % 3 == 0 {
        return false
    } else {
        var i = 2
        while i * i <= number {
            if number % i == 0 {
                return false
            }
            i = i + 1
        }
        return true
    }
}

// this fucntion takes a number and returns even/odd, prime/not prime, and if the number is square
func numberAttributes(number: Int) -> (Bool, Bool, Bool) {
    return (Bool(number % 2 == 0), isPrime(number), isPerfectSquare(number))
}

// test numbers and use a switch statement
for number in 1...100 { // use the numbers between 1 and 100
    let attributes = numberAttributes(number)
    print("\(number) - ", terminator:"")
    switch attributes {
    case (false, false, false):
        print("the number is not even, prime, or square")
    case (true, _, false):
        print("the number is even, but not square")
    case (true, _, true):
        print("the number is even and a pefect square")
    case (_, true, _):
        print("the number is prime")
    case (false, false, true):
        print("the number is odd, and a perfect square")
    default:
        print("none")
    }
}

// more switchy stuff
for number in 1...100 {
    print("\(number) - ", terminator:"")
    switch number {
    case 1..<10:
        print("the number is less than 10")
    case 10..<50:
        print("the number is greater than 10 but less than 50")
    case 51...100:
        print("the number is greater than 50")
    default:
        print("default clause")
    }
}

// lets try some value binding
func useSwitch(theCoolestTuple: (String, String, (Int, Int), (Int, Int))) {
    switch theCoolestTuple {
    case ("first of all, this is a string", let anotherCoolString, let aPoint, let anotherPoint):
        print(anotherCoolString)
        print(aPoint)
        print(anotherPoint)
    case let (aDescription, aString, firstPoint, secondPoint):
        print(aDescription)
        print(aString)
        print(firstPoint)
        print(secondPoint)
    }
}

let aCoolTupleExist = ("first of all, this is a string", "second, these are some coordinate points:", (0,2), (5,4))
let anotherCoolTupleExist = ("these points draw a long line", " blah blah blah ", (2,2), (102, 102))
useSwitch(aCoolTupleExist)
useSwitch(anotherCoolTupleExist)

// even more switch stuff, using the where word
func testRing(ringTuple: (String, String, Bool)) {
    switch ringTuple {
    case let (description, powerLevel, isOneRing) where isOneRing == true:
        print("This ring, " + description + ", and " + powerLevel + ", is the one ring")
    case let (description, powerLevel, _):
        print("This ring, " + description + ", and " + powerLevel + ", is not the one ring")
    }
}

let aSilverRing = ("silver", "moderate power", false)
let aDiamondRing = ("white gold with diamonds", "great power", false)
let theOneRing = ("gold", "all powerful", true)
testRing(aSilverRing)
testRing(aDiamondRing)
testRing(theOneRing)

// guards
func demoGuards() {
    var aDictionary = ["key1": "associated with key one", "key2": "associated with key two"]
    
    guard let firstKey = aDictionary["key1"] else {
        print("there is no key1!")
        return
    }
    print(firstKey)
    
    guard let thirdKey = aDictionary["key3"] else { // there is no key3 so it will return
        print("there is no key3!")
        return
    }
    print(thirdKey) // this wont run
}

demoGuards()



















