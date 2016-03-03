//
//  ViewController.swift
//  SBVarLet
//
//  Created by Nicholas Nelson on 1/19/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var varOutlet: UILabel!
    @IBOutlet weak var letOutlet: UILabel!
    @IBOutlet weak var textViewOutlet: UITextView!
    
    // a variable and a named value
    var variable = "Can change"
    let letable = "Cannot change"
    var output = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        varOutlet.text = variable
        letOutlet.text = letable
        
        demoMethod()
        demoOptionals()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeVar(sender: AnyObject) {
        //variable = "has been changed"
        variable = variable == "Can change" ? "Has changed" : "Can change"
        varOutlet.text = variable
    }

    @IBAction func changeLet(sender: AnyObject) {
        //letable = "compile error"
    }
    
    // demo some more variables and constants stuff
    func demoMethod() {
        // if you declare a var and never modify it xcode will throw a warning
        // and suggest you change it to let. a let wont throw this warning because it cannot be changed
        var unmodifiedVariable = "some string"
        let unmodifiedLetable = "some text"
        
        output = unmodifiedVariable
        output += "\n" + unmodifiedLetable
        
        // if you declare a var or let and never use it xcode will throw a warning
        // and suggest you replace it with '_ = "some string"
        var unusedVariable = "some string"
        let unusedLetable = "some text"
        
        // swift can infer type when a variable or constant is initialized on the same line as it's
        // declaration, but if you declare and initialize later you will need type annotation:
        var anInt:Int
        let aDouble:Double
        let welcomeMessage:String
        // then initialize later
        anInt = 4
        aDouble = 5.0
        welcomeMessage = "Hello"
        output += "\n" + String(anInt) + "\n" + String(aDouble) + "\n" + welcomeMessage
        
        // you can use unicode characters to name your varaibles and constants 
        let π = 3.14159
        let 你好 = "你好世界"
        let 🐶🐮 = "🐶🐮 dogcow"
        output += "\n" + String(π) + "\n" + 你好 + "\n" + 🐶🐮
        
        textViewOutlet.text = output
    }
    
    func demoOptionals() {
        // optionals
        var anInt = Int?() // optional int
        print(anInt)
//        print(anInt!) // this will throw EXC_BAD_INSTRUCTION during runtime
        
        let maybeANumber = "123"
        let convertedMaybeANumber = Int(maybeANumber)
        print("convereted number: \(convertedMaybeANumber!)")
        let probablyNotANumber = "Hello, world!"
        let notConverted = Int(probablyNotANumber)
        print("probably not converted: \(notConverted)") // prints nil, or if i try to unwrap it is a fatal error
        
        for _ in 1...10 {
            let randomNumber = arc4random_uniform(10)
            print(randomNumber)
            if randomNumber % 2 == 0 {
                anInt = Int(randomNumber)
                print(anInt!) // this can be unwrapped because it will have a number in it
            }
        }
    }
    
}
