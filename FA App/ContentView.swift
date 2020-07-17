//
//  ContentView.swift
//  FA App
//
//  Created by Евгений on 7/12/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
   let url = URL(string: "https://image.tmdb.org/t/p/original/pThyQovXQrw2m0s9x82twj48Jq4.jpg")!
    
    var body: some View {
        VStack {
            Text("Food App")
                .font(.title)
                .lineLimit(nil)
            
            Text("Designed by D.I.C.K Team")
                .font(.subheadline)
            
            AsyncImage(
                    url: url,
                    placeholder: Text("Loading ...")
                ).aspectRatio(contentMode: .fit)
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
