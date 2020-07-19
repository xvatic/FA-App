//
//  NavigationBar.swift
//  FA App
//
//  Created by Евгений on 7/19/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Button (action: {}) {
                Image(systemName: "house").foregroundColor(.black)
            }
            Spacer(minLength: 15)
            Button (action: {}) {
                Image(systemName: "magnifyingglass").foregroundColor(.black)
            }
            Spacer(minLength: 15)
            Button (action: {}) {
                Image(systemName: "plus").foregroundColor(.black)
            }
            Spacer(minLength: 15)
            Button (action: {}) {
                Image(systemName: "heart").foregroundColor(.black)
            }
            Spacer(minLength: 15)
            Button (action: {}) {
                Image(systemName: "person").foregroundColor(.black)
            }
        }
        .padding(.vertical)
        .padding(.horizontal, 25)
        .background(Color.white)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
