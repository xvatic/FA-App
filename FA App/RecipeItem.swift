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
    let url = URL(string: "https://image.shutterstock.com/image-photo/beautiful-pink-flower-anemones-fresh-260nw-1028135845.jpg")!
    var body: some View {
        AsyncImage(
            url: url,
            placeholder: Text("Loading ...")
        ).aspectRatio(contentMode: .fit)
    }
}

struct RecipeItem_Previews: PreviewProvider {
    static var previews: some View {
        RecipeItem(recipe: recipeData[0])
    }
}
