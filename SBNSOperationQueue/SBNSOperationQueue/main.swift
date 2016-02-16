//
//  main.swift
//  SBNSOperationQueue
//
//  Created by Nicholas Nelson on 2/4/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

let queue = NSOperationQueue()
var number = 0

class BackgroudOperations: NSOperation {
    override func main() {
        // do something here
        print("hello from background")
    }
    
    // need to keep track of status... 
//    override var executing: Bool {
//        return self.executing
//    }
}

func run() -> () {
    let backgroundOperation1 = BackgroudOperations()
    queue.addOperation(backgroundOperation1)
    backgroundOperation1.queuePriority = .Normal
    backgroundOperation1.completionBlock = {
        // do something here
        print("hello 1")
    }
    
    let backgroundOperation2 = BackgroudOperations()
    queue.addOperation(backgroundOperation2)
    backgroundOperation2.queuePriority = .High
    backgroundOperation2.completionBlock = {
        // download and process something
        print("hello 2")
    }
    
    print("background operations initiated")
    
    while backgroundOperation1.executing {}
    while backgroundOperation2.executing {}
}

run()

