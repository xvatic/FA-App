//
//  NavigationBar.swift
//  FA App
//
//  Created by Евгений on 7/19/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct NavigationBar: View {
    
    @State var index = 0
    var body: some View {
        HStack {
            Button (action: {
                self.index = 0
            }) {
                VStack{
                    if self.index != 0 {
                        Image(systemName: "house")
                            .foregroundColor(Color.black)
                    } else {
                        Image(systemName: "house")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Home").foregroundColor(Color.gray)
                    }
                    
                }
                
            }
            Spacer(minLength: 15)
            Button (action: {
                self.index = 1
            }) {
                VStack{
                    if self.index != 1 {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.black)
                    } else {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Search").foregroundColor(Color.gray)
                    }
                    
                }
            }
            Spacer(minLength: 15)
            Button (action: {
                self.index = 2
            }) {
                VStack{
                    if self.index != 2 {
                        Image(systemName: "plus")
                            .foregroundColor(Color.black)
                    } else {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Add").foregroundColor(Color.gray)
                    }
                    
                }
            }
            Spacer(minLength: 15)
            Button (action: {
                self.index = 3
            }) {
                VStack{
                if self.index != 3 {
                    Image(systemName: "heart")
                        .foregroundColor(Color.black)
                } else {
                    Image(systemName: "heart")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(y: -20)
                        .padding(.bottom, -20)
                    
                    Text("Liked").foregroundColor(Color.gray)
                }
            }
            }
            Spacer(minLength: 15)
            Button (action: {
                self.index = 4
            }) {
                VStack{
                if self.index != 4 {
                    Image(systemName: "person")
                        .foregroundColor(Color.black)
                } else {
                    Image(systemName: "person")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(y: -20)
                        .padding(.bottom, -20)
                    
                    Text("Profile").foregroundColor(Color.gray)
                }
            }
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
