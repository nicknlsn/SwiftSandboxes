//
//  Struct.swift
//  SBProperties
//
//  Created by Nicholas Nelson on 1/23/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//
//  demonstrate properties using structs

/*********************************************************
* Properties
*
* Properties associate values with a particular class, 
* structure, or enumeration. You can have stored 
* properties to store any kind of data, and computed
* properties to calculate a property. Computed properties 
* are provided by classes, structures, and enumerations. 
* Stored properties are provided only by classes and 
* structures.
*********************************************************/

import Foundation

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    // origin and size are stored properties
    var origin = Point()
    var size = Size()
    
    // center is a computed property
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
        /*
        can also use shorthand setter declaration, uses newValue by default
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        */
    }
    
    // readOnlyCenter is get-only, it cannot be set. using simplified declaration for get-only value
    var readOnlyCenter: Point {
        let centerX = origin.x + (size.width / 2)
        let centerY = origin.y + (size.height / 2)
        return Point(x: centerX, y: centerY)
    }
}