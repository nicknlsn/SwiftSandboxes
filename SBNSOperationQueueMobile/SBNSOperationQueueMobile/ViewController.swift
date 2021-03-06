//
//  ViewController.swift
//  SBNSOperationQueueMobile
//
//  Created by Nicholas Nelson on 2/4/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import UIKit
import Foundation

let queue = NSOperationQueue()

class BackgroudOperations: NSOperation {
    override func main() {
        print("hello from background")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        print("background operations initiated")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func demoStuff() -> () {
        let getInBackground = BackgroudOperations()
        queue.addOperation(getInBackground)
        getInBackground.completionBlock = {
            print("hello 3")
        }
    }
}

