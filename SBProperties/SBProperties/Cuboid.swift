//
//  Cuboid.swift
//  SBProperties
//
//  Created by Nicholas Nelson on 1/26/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}