//
//  main.swift
//  SBLoops
//
//  Created by Nicholas Nelson on 2/5/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

print("SBLoops")

// for loops
// for-in
for index in 1...3 {
    print("\(index) * 3 = \(index * 3)")
}

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
// this might be depracated in Swift 3.0 because the increment and decrament operators are being thrown out
for var index = 0; index < 3; ++index {
    print("index is \(index)")
}

// TODO: use a for loop to check a sudoku board to see if it is solved


// while loops
// snakes and ladders

// repeat while loops