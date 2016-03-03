//
//  File.swift
//  SBTime
//
//  Created by Nicholas Nelson on 2/18/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

class Time {
    var second:Int
    var minute:Int
    var hour:Int
    
    init() {
        second = 0
        minute = 0
        hour = 0
    }
    
    init(theSecond:Int, theMinute:Int, theHour:Int) {
        second = theSecond
        minute = theMinute
        hour = theHour
    }
}

class Date: Time {
    var day = 0
    var month = 0
    var year = 0
}

let timeObject0 = Time()
let timeObject1 = Time(theSecond: 36, theMinute: 40, theHour: 12)

