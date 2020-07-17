//
//  ContentView.swift
//  FA App
//
//  Created by Евгений on 7/12/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    let url:String
    var categories:[String:[Recipe]] {
        .init(
            grouping: recipeData,
            by: {$0.category.rawValue}
        )
    }
    
    
    var body: some View {
        NavigationView{
            List (categories.keys.sorted(), id: \String.self) {key in
                RecipeRow(prescriptiontype: "\(key)".uppercased(), recipes: self.categories[key]!)
                    .padding(.top)
                    .padding(.bottom)
                
            }
        .navigationBarTitle(Text("TOP RATED"))
        }
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(url: recipeData[0].imageName)
    }
}
