//
//  Time.swift
//  SBCalendar
//
//  Created by Nicholas Nelson on 2/18/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation
/**
Time - this class contains methods for the creation, manipulation,
 input, and output of time objects. It stores time in the military format, 
 but if the ampm flag is true then output will be in the ampm format.
*/
class Time {
    var second:Int
    var minute:Int
    var hour:Int
    var ampm:Bool
    
    init() {
        second = 0
        minute = 0
        hour = 0
        ampm = false
    }
    
    init(theSecond:Int, theMinute:Int, theHour:Int, isAmPm:Bool) {
        second = theSecond
        minute = theMinute
        hour = theHour
        ampm = isAmPm
    }
    
    /**
     This function converts the time format to AM/PM or Military, 
     depending on what format the calling object is in.
     
    - Returns:
    Time: a new time object in the oposite format as the caller, the caller is left unmodified
    */
    func convert() -> Time {
        return Time(theSecond: self.second, theMinute: self.minute, theHour: self.hour, isAmPm: self.ampm ? false : true)
    }
}