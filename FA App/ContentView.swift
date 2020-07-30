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
    
    @State var index = 0
    @State var show = false
    @State var txt = ""
    @State var phrase: Array<Any> = []
    
    var body: some View {
        
        VStack {
            ZStack {
                if self.index == 0{
                    NavigationView{
                        List (categories.keys.sorted(), id: \String.self) {key in
                            RecipeRow(prescriptiontype: "\(key)".uppercased(), recipes: self.categories[key]!)
                                .padding(.top)
                                .padding(.bottom)
                            
                        }
                    .navigationBarTitle(Text("TOP RATED"))
                    }
                    
                }
                else if self.index == 1{
                    VStack(spacing:0){
                        SearchPanel(show: self.$show, txt: self.$txt)
                        if self.txt != "" {
                           
                            
                            NavigationView{
                                RecipeColumn(prescriptiontype: "Results", recipes: dummyData)
                                .navigationBarTitle(Text("RESULT:"))
                            }
                        }
                        
                    }
                    
                    
                }
                else if self.index == 2{
                    Color.yellow
                }
                else if self.index == 3{
                    Color.blue
                }
                else{
                    Color.orange
                }
                
                
            }
            Spacer()
            NavigationBar(index: self.$index)
        }
        
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(url: recipeData[0].imageName)
    }
}
