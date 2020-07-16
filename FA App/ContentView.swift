//
//  ContentView.swift
//  FA App
//
//  Created by Евгений on 7/12/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Food App")
                .font(.title)
                .lineLimit(nil)
            
            Text("Designed by D.I.C.K Team")
                .font(.subheadline)
            Image("logo")
                .padding(.all, -40.0)
            .clipShape(Circle())
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
