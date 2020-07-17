//
//  RecipeItem.swift
//  FA App
//
//  Created by Евгений on 7/16/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI
import Combine
import Foundation


struct RecipeItem: View {
    var recipe:Recipe
    let url:String
    var body: some View {
        
        AsyncImage(
            url: URL(string: url)!,
            placeholder: Text("Loading ...")
        ).aspectRatio(contentMode: .fit)
    }
}

struct RecipeItem_Previews: PreviewProvider {
    static var previews: some View {
        RecipeItem(recipe: recipeData[0], url: recipeData[0].imageName)
    }
}
