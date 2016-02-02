//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times 3 is: \(threeTimesTable[6])")
