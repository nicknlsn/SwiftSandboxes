//
//  main.swift
//  SBNSOperationQueue
//
//  Created by Nicholas Nelson on 2/4/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

let queue = NSOperationQueue()

class BackgroudSillyness: NSOperation {
    override func main() {
        print("hello from background")
    }
}

func run() -> () {
    let backgroundOperation = BackgroudSillyness()
    queue.addOperation(backgroundOperation)
    //backgroundOperation.threadPriority = 0
    backgroundOperation.completionBlock = {
        print("hello")
    }
}

run()
print("done")