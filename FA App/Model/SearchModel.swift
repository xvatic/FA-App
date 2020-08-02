//
//  SearchModel.swift
//  FA App
//
//  Created by Евгений on 7/30/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation

struct SearchModel: Hashable, Codable {
    let Filters: Array<Words>
    struct Words:Hashable,Codable {
        let Words:Array<String>
    }
}

    

