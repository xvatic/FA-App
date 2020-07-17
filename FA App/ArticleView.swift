//
//  ArticleView.swift
//  FA App
//
//  Created by Евгений on 7/17/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct ArticleView: View {
    var recipe: Recipe
    let url:String
    
    var body: some View {
        List {
            ZStack (alignment:.bottom){
                AsyncImage(
                    url: URL(string: url)!,
                    placeholder: Text("Loading ...")
                )
                
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height:80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(recipe.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                        
                    }
                .listRowInsets(EdgeInsets())
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                    
                }
                
            }
            
            VStack(alignment: .leading) {
                Text(recipe.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                HStack {
                    Spacer()
                    RateButton()
                    Spacer()
                }
                .padding(.top, 50)
            }
        }
    }
}

struct RateButton : View {
    var body: some View {
        Button(action: {}) {
            Text("I Like It!")
        }
        .frame(width: 200, height: 50)
        .foregroundColor(.white)
        .font(.headline)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(recipe: recipeData[0],url: recipeData[0].imageName)
    }
}
