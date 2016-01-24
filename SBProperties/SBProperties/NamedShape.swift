//
//  NamedShape.swift
//  SBProperties
//
//  Created by Nicholas Nelson on 1/23/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

class NamedShape {
    var numberOfSides = 0
    var name: String
    
    init(name: String, numberOfSides: Int) {
        self.name = name
        self.numberOfSides = numberOfSides
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}