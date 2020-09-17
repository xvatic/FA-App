//
//  RegisterModel.swift
//  FA App
//
//  Created by Евгений on 9/13/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation

struct RegisterModel:Encodable{
    let UserName:String
    let PasswordHash: String
    let Email: String
}
