//
//  Attraction.swift
//  GuideBook
//
//  Created by Sunil Sharma on 01/10/23.
//

import Foundation
struct Attraction: Identifiable{
    
    var id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    
    var latLong: String
}
