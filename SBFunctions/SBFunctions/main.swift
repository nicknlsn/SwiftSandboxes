//
//  main.swift
//  SBFunctions
//
//  Created by Nicholas Nelson on 2/5/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//
//  https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158

import Foundation

print("SBFunctions")

// functions
func aFunction(aParameter: String) -> String {
    return "this function returns this text: " + aParameter
}

print(aFunction("some text!"))

// 