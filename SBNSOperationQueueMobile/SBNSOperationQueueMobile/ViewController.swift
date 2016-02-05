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

class BackgroudSillyness: NSOperation {
    override func main() {
        print("one")
        // do get request here?
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let backgroundOperation = BackgroudSillyness()
//        queue.addOperation(backgroundOperation)
//        //backgroundOperation.threadPriority = 0
//        backgroundOperation.completionBlock = {print("two")}
//        
//        print("three")
        
//        demoStuff()
        
        let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
        dispatch_async(dispatch_get_global_queue(priority, 0), {
            print("two")
            // put background thread here?
            var number = 0
            while number < 1000000000 {
                number++
            }
            dispatch_async(dispatch_get_main_queue(), {
                print("three")
            })
        })
        print("four")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func demoStuff() -> () {
        let getInBackground = BackgroudSillyness()
        queue.addOperation(getInBackground)
        getInBackground.completionBlock = {
            // do get request here...
        }
    }
}

