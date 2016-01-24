//
//  ViewController.swift
//  SBProperties
//
//  Created by Nicholas Nelson on 1/23/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//
//  Demonstrate properties

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // do stuff with custom data types that have properties
        
        // set a propterty with the object initializer
        let shape = Shape(name: "circle")
        print(shape.simpleDescription())
        
        let namedShape = NamedShape(name: "square", numberOfSides: 4)
        print(namedShape.simpleDescription())
        
        // set stored and computed properties and then change them
        var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0)) // declare and initialize
        let initialSquareCenter = square.center // calls the getter of center
        print("initial square center: ", terminator:""); print(initialSquareCenter)
        square.center = Point(x: 15.0, y: 15.0) // calls the setter of center
        print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
        
        var rectangle = Rect() // declare then initialize later
        rectangle.origin = Point(x: 0.0, y: 0.0)
        rectangle.size = Size(width: 10, height: 5)
        // you can get individual properties of a computed property
        print("rectangle center: (\(rectangle.center.x), \(rectangle.center.y))")
        
        // cannot change variable properties of constant instance of structure (value type)
        let unchangableSquare = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
        //unchangableSquare.center = Point(x: 15.0, y: 15.0) // will not compile
        print("unchangableSquare: (\(unchangableSquare.origin.x), \(unchangableSquare.origin.y))")
        
        // can change variable properties of constant instance of class (reference type)
        let someNamedShape = NamedShape(name: "Circle", numberOfSides: 1)
        someNamedShape.name = "Square"
        someNamedShape.numberOfSides = 4
        
        // lazy stored properties
        // a 'lazy' property's value is not calculated until it is used the first time
        // good for complex initializations so data is initialized only if it is needed when it is needed
        // good for when the property's value is dependent on other factors whose values are not known until 
        // after an instances initialization is complete
        let manager = DataManager()
        manager.data.append("some data")
        manager.data.append("more data")
        // the DataImporter instance for hte importer property has not been created yet
        print(manager.importer.fileName)
        // the DataImporter instance for hte importer property has now been created
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

