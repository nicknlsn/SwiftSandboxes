//
//  ViewController.swift
//  SBTuples
//
//  Created by Nicholas Nelson on 1/22/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /***************************************************
        *                    HAPPY PATH                    *
        ***************************************************/
        
        // a tuple is a compound value which can be used to do cool
        // things like return multiple values from a function.
        // for example:
        let http404Error = (404, "Not Found")
        print("print http404Error: ", terminator:""); print(http404Error)
        
        // tuples can have any permutation of types
        let aPerson = (25, 73, "Nick")
        print("print aPerson: ", terminator:""); print(aPerson)
        
        // decompose a tuple into separate constants or variables
        let (statusCode, statusMessage) = http404Error
        let (age, height, name) = aPerson
        print("print separated tuple values: "); print(statusCode); print(statusMessage)
        print(age); print(height); print(name)
        
        // you can also get just some parts by using an underscore
        let (_, justTheHeight, _) = aPerson
        print("print justTheHeight: ", terminator:""); print(justTheHeight)
        
        // or by using index numbers
        print("print the name: ", terminator:""); print(aPerson.2)
        
        // you can give names to the values in a tuple and use them to access the values
        let http200Status = (statusCode: 200, description: "OK")
        print("print http200Status.description: ", terminator:""); print(http200Status.description)
        
        // tuples are great to use as return types for functions to return multiple values
        let urlResponse1 = getResponse("https://www.byui.edu/prebuilt/stylenew/css/global.min.css")
        print("print urlResponse1: ", terminator:""); print(urlResponse1)
        let urlResponse2 = getResponse("https://www.byui.edu/bogus/path/to/webpage.html")
        print("print urlResponse2: ", terminator:""); print(urlResponse2)
        
        // can also do a tuple of tuples, good for storing data like points on a grid
        let aTupleOfTuples = ((1, 2), (3, 4))
        print("print aTupleofTuples", terminator:""); print(aTupleOfTuples)
        // can access by index but not in a loop
        print(aTupleOfTuples.0.0, terminator:""); print(aTupleOfTuples.0.1, terminator:"")
        print(aTupleOfTuples.1.0, terminator:""); print(aTupleOfTuples.1.1)
//        for i in 0...1 {
//            for j in 0...1 {
//                print(aTupleOfTuples.i.j)
//            }
//        }

        
        /*************************************************
        *                    SAD PATH                    *
        *************************************************/
        
        // try to name some values of a tuple but not all
        let aTuple = (aString: "aString", 40, anotherInt: 50)
        print("print aTuple: ", terminator:""); print(aTuple)
        print("aTuple.aString", terminator:""); print(aTuple.aString)
        // can always access by index but only by name if one is given
        
        // no way to know how many items are in a tuple because a tuple is like a unique object with no methods
//        print(aTuple.size)
//         loop through a tuple?
//        for item in aTuple {
//            print(item)
//        }
//        // for these applications a different data type would be better
        
        // can access by index but not in a loop
//        print(aTupleOfTuples.0.0, terminator:""); print(aTupleOfTuples.0.1, terminator:"")
//        print(aTupleOfTuples.1.0, terminator:""); print(aTupleOfTuples.1.1)
//        for i in 0...1 {
//            for j in 0...1 {
//                print(aTupleOfTuples.i.j)
//            }
//        }

    }
    
    // a simple method to make a GET request to a url and return the status code and the status message
    func getResponse(url: String) -> (statusCode: Int, statusMessage: String) {
        let request = NSURLRequest(URL: NSURL(string: url)!)
        var response: NSURLResponse?
        var statusCode = 0
        var responseTuple = (0, "request not fired")
        
        do {
            // xcode says this method is deprecated but i don't know how else to do this, will leave it like this for now
            try NSURLConnection.sendSynchronousRequest(request, returningResponse: &response) as NSData?
            let httpResponse = response as? NSHTTPURLResponse
            statusCode = (httpResponse?.statusCode)!
        } catch {
            print("error making request")
        }
        
        if statusCode == 200 {
            responseTuple = (statusCode, "OK")
        } else if statusCode == 404 {
            responseTuple =  (statusCode, "NOT FOUND")
        }
        
        // returning two values
        return responseTuple
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

