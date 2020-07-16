//
//  RecipeItem.swift
//  FA App
//
//  Created by Евгений on 7/16/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct RecipeItem: View {
    var recipe:Recipe
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeItem_Previews: PreviewProvider {
    static var previews: some View {
        RecipeItem(recipe: recipeData[0])
    }
}
