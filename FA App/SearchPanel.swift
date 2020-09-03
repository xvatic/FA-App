//
//  SearchPanel.swift
//  FA App
//
//  Created by Евгений on 7/25/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct SearchPanel: View {
    @Binding var show:Bool
    @Binding var txt:String
    var body: some View {
        VStack (spacing:0){
            HStack {
                if !self.show{
                    Text("Search").fontWeight(.bold).font(.title).foregroundColor(.white)
                }
                
                Spacer(minLength: 0)
                HStack {
                    if self.show{
                        Image(systemName:"magnifyingglass")
                        TextField("Search by", text: self.$txt, onEditingChanged: { (changed) in
                            
                            
                        })
                        Button(action: {
                            withAnimation{
                                self.show.toggle()
                            }
                            
                        }) {
                            Image(systemName: "xmark").foregroundColor(.black)
                        }
                        if self.txt != "" {
                            RecipeColumn(prescriptiontype: "result", recipes: uploadComment(phrase: self.txt))
                        }
                        
                    }
                    else {
                        Button(action:{
                            withAnimation{
                                self.show.toggle()
                            }
                        }) {
                            Image(systemName: "magnifyingglass").foregroundColor(.black).padding(20)
                        }
                        
                    }
                }.padding(self.show ? 10: 0)
                .background(Color.white)
                .cornerRadius(20)
            
            }
            .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
            .padding(.horizontal)
            .padding(.bottom, 10)
            .background(Color.red)
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.top)
        
    }
}

