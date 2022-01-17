//
//  News.swift
//  Test Dummy
//
//  Created by Alex Paul on 1/16/22.
//

import Foundation

struct News: Codable{
    let status: String
    let article : [Articles]
    var fields : Articles
}

struct Articles:Codable{
    let author: String
    let title : String
    let description: String
}
