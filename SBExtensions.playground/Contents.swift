//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class SomeType {
    var attribute: String
    
    init() {
        attribute = "some text"
    }
    
    func behavior(aString: String) -> Void {}
}

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double  { return self           }
    var cm: Double { return self / 100.0   }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")