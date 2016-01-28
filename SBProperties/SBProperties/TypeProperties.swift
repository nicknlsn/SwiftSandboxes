//
//  TypeProperties.swift
//  SBProperties
//
//  Created by Nicholas Nelson on 1/26/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//
//  type properties
// 
//  demo how type properties work

import Foundation

class TypeProperties {
    static var stringTypeProperty = "some text"
    static var computedIntTypeProperty: Int {
        return 4
    }
    
    class var overrideableComputedTypeProperty: Int {
        return 27
    }
}