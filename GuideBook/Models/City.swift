//
//  City.swift
//  GuideBook
//
//  Created by Sunil Sharma on 01/10/23.
//

import Foundation
struct City: Identifiable{
    
    var id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
    
}

