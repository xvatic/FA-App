//
//  RecipeColumn.swift
//  FA App
//
//  Created by Евгений on 7/28/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct RecipeColumn: View {
    var prescriptiontype:String
    var recipes:[Recipe]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing:15) {
                ForEach(self.recipes, id: \.name) { recipe in
                    
                    NavigationLink (destination: ArticleView(recipe: recipe, url: recipe.imageName)) {
                        
                        RecipeItem(
                            recipe: recipe,
                            url: recipe.imageName)
                        .frame(width:300)
                        .padding(.trailing, 30)
                        
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    
                }
            }
        }
    }
}

struct RecipeColumn_Previews: PreviewProvider {
    static var previews: some View {
        RecipeColumn(prescriptiontype: "Results", recipes: dummyData)
    }
}
