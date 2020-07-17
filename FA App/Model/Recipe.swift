//
//  Recipe.swift
//  FA App
//
//  Created by Евгений on 7/16/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct Recipe: Hashable, Codable, Identifiable {
    var id: Int
    var name:String
    var imageName:String
    var type:PrescriptionType
    var category:Category
    var description:String
    var likes: Int
    
    enum PrescriptionType:String, CaseIterable, Codable, Hashable {
        case basic = "basic"
        case stepbystep = "stepbystep"
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case food = "food"
        case drink = "drink"
        
    }
    
}
