//
//  main.swift
//  SBClosures
//
//  Created by Nicholas Nelson on 2/8/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

// provide a function and pass it in as an argument to sort
func backwards(s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversed = names.sort(backwards)
print(names)
print(reversed)

// put the closure expression in the call to sort
reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})

