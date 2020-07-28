//
//  NavigationBar.swift
//  FA App
//
//  Created by Евгений on 7/19/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct NavigationBar: View {
    
    @Binding var index : Int
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
                            .resizable()
                            .frame(width:25,height: 23)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Home").foregroundColor(Color.gray)
                            .padding(.bottom, 5)
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
                            .resizable()
                            .frame(width:25,height: 23)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Search").foregroundColor(Color.gray)
                            .padding(.bottom, 5)
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
                            .resizable()
                            .frame(width:25,height: 23)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Add").foregroundColor(Color.gray)
                            .padding(.bottom, 5)
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
                        .resizable()
                        .frame(width:25,height: 23)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(y: -20)
                        .padding(.bottom, -20)
                    
                    Text("Liked")
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 5)
                    
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
                        .foregroundColor(Color.black.opacity(0.2))
                } else {
                    Image(systemName: "person")
                    .resizable()
                        .frame(width:25,height: 23)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(y: -20)
                        .padding(.bottom, -20)
                    
                    Text("Profile").foregroundColor(Color.gray)
                        .padding(.bottom, 5)
                    }
            }
                }
        }
        .padding(.vertical, -5)
        .padding(.horizontal, 25)
        
        .animation(.spring())
    }
}


