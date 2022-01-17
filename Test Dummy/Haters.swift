//
//  Haters.swift
//  Test Dummy
//
//  Created by Alex Paul on 1/12/22.
//

import Foundation

struct Hater{
    var hating = false
    
    
    mutating func hadABadDay(){
        hating = true
    }
    
    mutating func hadAGoodDay(){
        hating = false
    }
   
}
