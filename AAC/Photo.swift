//
//  Photo.swift
//  helloTest
//
//  Created by Thinh P. Dang on 11/3/22.
//

import Foundation

struct Card: Identifiable{
    var id  = UUID()
    var name: String
}

var testData = [
    Card(name: "car"),
    Card(name: "meat"),
    Card(name: "apple"),
    Card(name: "beans")
    
]
