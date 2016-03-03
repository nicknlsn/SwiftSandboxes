//
//  main.swift
//  SBClosures
//
//  Created by Nicholas Nelson on 2/8/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

// closure declaration
var hello: () -> (String) = {
    return "Hello!"
}

print(hello())

var double: (Int) -> (Int) = { x in
    return 2 * x
}

print(double(2))

// a closure that takes two int parameters and returns their sum
var sum: (left: Int, right: Int) -> Int = {left, right in
    return left + right
}

print(sum(left: 4, right: 5))

// capture some values
var number = 0

let addOne = {
    number += 1 // number is captured here
}

let printNumber = {
    print(number)
}

addOne()
printNumber()
addOne()
addOne()
printNumber()

// values from this function are remembered by the closure it returns
func makeIterator(var start: Int, step: Int) -> () -> Int {
    return {
        let currentValue = start
        start += step
        return currentValue
    }
}

var iterator = makeIterator(1, step: 1)
print("first iterator")
print(iterator())
print(iterator())
print(iterator())
print(iterator())

var anotherIterator = makeIterator(0, step: 3)
print("second iterator")
print(anotherIterator())
print(anotherIterator())
print(anotherIterator())
print(anotherIterator())

// here is the dope function that uses a closure
func sumOfNumbers(from: Int, to: Int, functionCreatedInClosure: (Int) -> (Int)) -> Int {
    var sum = 0
    for i in from...to {
        sum += functionCreatedInClosure(i)
    }
    return sum
}

let sumOfFirstTenNumber = sumOfNumbers(1, to: 10) {
    $0
}
print("The sum of 1 through 10 is: \(sumOfFirstTenNumber)")

// oh my goodness, im finally starting to understand this...
let sumOfFirstTenSquares = sumOfNumbers(1, to: 10) {
    $0 * $0 // the parameters passed to the function that is the closure
}
print("The sum of the squares of 1 through 10 is: \(sumOfFirstTenSquares)")





















