//
//  Shape.swift
//  SBProperties
//
//  Created by Nicholas Nelson on 1/23/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

class Shape {
    var name: String
    var color: String = ""
    var numberOfSides = 0
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}