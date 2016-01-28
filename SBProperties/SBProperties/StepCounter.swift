//
//  StepCounter.swift
//  SBProperties
//
//  Created by Nicholas Nelson on 1/26/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//
//  property observers: willSet and didSet

import Foundation

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}