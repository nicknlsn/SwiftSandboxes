//
//  Data.swift
//  SBProperties
//
//  Created by Nicholas Nelson on 1/23/16.
//  Copyright © 2016 Nicholas Nelson. All rights reserved.
//

import Foundation

class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a non-trivial amount of time to initialize.
    */
    var fileName = "fileName.txt"
    // the DataImporter class would provide data importing functionality here
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    // the DataManager class would provide data management functionality here
}