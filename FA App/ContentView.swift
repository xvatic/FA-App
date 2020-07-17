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
    
    var body: some View {
        VStack {
            Text("Food App")
                .font(.title)
                .lineLimit(nil)
            
            Text("Designed by D.I.C.K Team")
                .font(.subheadline)
            
            AsyncImage(
                    url: URL(string: url)!,
                    placeholder: Text("Loading ...")
                ).aspectRatio(contentMode: .fit)
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(url: recipeData[0].imageName)
    }
}
