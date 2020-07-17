//
//  DataDecoder.swift
//  FA App
//
//  Created by Евгений on 7/16/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation

let recipeData:[Recipe] = load("recipes.json")

func load<T:Decodable>(_ filename:String, as type:T.Type = T.self)->T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{
            fatalError("Could not find \(filename) in main bundle.")
            
    }
    do {
        data = try Data(contentsOf: file)
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
