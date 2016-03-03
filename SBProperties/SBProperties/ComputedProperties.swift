//
//  ComputedProperties.swift
//  SBProperties
//
//  Created by Nicholas Nelson on 2/16/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

struct Travel {
    // number of miles
    var distance: Double
    
    // number of hours
    var tripTime: Double
    
    // average rate of speed for whole trip
    var rate: Double {
        get {
            return distance / tripTime
        }
    }
}