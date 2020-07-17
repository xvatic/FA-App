//
//  RecipeRow.swift
//  FA App
//
//  Created by Евгений on 7/17/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct RecipeRow: View {
    var prescriptiontype:String
    var recipes:[Recipe]
    var body: some View {
        VStack {
            Text(self.prescriptiontype)
                .font(.title)
            ScrollView (.horizontal, showsIndicators: false){
                HStack(alignment: .top) {
                    ForEach(self.recipes, id: \.name) { recipe in
                        RecipeItem(
                            recipe: recipe,
                            url: recipe.imageName)
                        .frame(width:300)
                        .padding(.trailing, 30)
                        
                    }
                }
                
            }
        }
    }
}

struct RecipeRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRow(prescriptiontype: "TOP-RATED-BASIC", recipes: recipeData)
    }
}
