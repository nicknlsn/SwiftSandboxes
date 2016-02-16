//
//  AppDelegate.swift
//  SBNSOperationQueueApp
//
//  Created by Nicholas Nelson on 2/9/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Cocoa
import Foundation

class BackgroudOperations: NSOperation {
    override func main() {
        // do something here
        print("hello from background")
    }
}

let queue = NSOperationQueue()

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let backgroundOperation1 = BackgroudOperations()
        queue.addOperation(backgroundOperation1)
        backgroundOperation1.queuePriority = .Normal
        backgroundOperation1.completionBlock = {
            // do something here
            var number = 0
            while number < 1000000000 {
                number += 1
            }
            print("hello 1")
        }
        
        let backgroundOperation2 = BackgroudOperations()
        queue.addOperation(backgroundOperation2)
        backgroundOperation2.queuePriority = .High
        backgroundOperation2.completionBlock = {
            // download and process something
            print("hello 2")
        }
        
        demoStuff()
        
        print("all background operations initiated")
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func demoStuff() -> () {
        // happy path, add completion block before adding operation to queue
        let getInBackground = BackgroudOperations()
        getInBackground.completionBlock = {
            print("hello 3")
        }
        queue.addOperation(getInBackground)
        
        // sad path, add completion block after adding operation to queue
        let getInBackground2 = BackgroudOperations()
        queue.addOperation(getInBackground2)
        var number = 0
        while number < 1000000000 {
            number += 1
        }
        getInBackground2.completionBlock = {
            print("hello 4")
        }
    }
    
}

