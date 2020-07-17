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
        
        VStack {
            
            AsyncImage(
                url: URL(string: url)!,
                placeholder: Text("Loading ...")
            )
                .cornerRadius(10)
                .frame(width:300, height: 170)
                .aspectRatio(contentMode: .fit)

            VStack {
                Text(recipe.name)
                    .foregroundColor(Color.red)
                    .font(.headline)
                Text(recipe.description)
                .font(.subheadline)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height:40)
                HStack (alignment: .lastTextBaseline){
                    Image("like2")
                    .resizable()
                        .frame(width: 20, height: 20)
                    Text("\(recipe.likes)")
                }
            }
        }
    }
}

struct RecipeItem_Previews: PreviewProvider {
    static var previews: some View {
        RecipeItem(recipe: recipeData[0], url: recipeData[0].imageName)
    }
}
