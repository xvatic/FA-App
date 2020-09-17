//
//  DataDecoder.swift
//  FA App
//
//  Created by Евгений on 7/16/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation
import CryptoKit

let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)[0]+"/data.json"
let recipeData:[Recipe] = load(path)
let dummyData:[Recipe] = load("recipes.json")


func load<T:Decodable>(_ filename:String, as type:T.Type = T.self)->T {
    let data:Data
    
    do {
        data = try Data(contentsOf: urlToData)
    } catch {
        fatalError("Could not load \(filename) in main bundle.\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")
    }
}

extension Digest {
    var bytes: [UInt8] { Array(makeIterator()) }
    var data: Data { Data(bytes) }

    var hexStr: String {
        bytes.map { String(format: "%02X", $0) }.joined()
    }
}

func toHash(input: String)->String {
    guard let data = input.data(using: .utf8) else { return("err")}
    let digest = SHA256.hash(data: data)
   
    return(digest.hexStr) // B94D27B9934D3E08A52E52D7DA7DABFAC484EFE37A5380EE9088F7ACE2EFCDE9
}
