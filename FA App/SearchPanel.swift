//
//  SearchPanel.swift
//  FA App
//
//  Created by Евгений on 7/25/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct SearchPanel: View {
    @State var show = false
    @State var txt = ""
    var body: some View {
        VStack (spacing:0){
            HStack {
                Text("Search").fontWeight(.bold).font(.title).foregroundColor(.white)
                Spacer(minLength: 0)
                HStack {
                    if self.show{
                        Image(systemName:"magnifyingglass")
                        TextField("Search by", text: self.$txt)
                        Button(action: {
                            self.show.toggle()
                        }) {
                            Image(systemName: "xmark").foregroundColor(.black)
                        }
                    }
                    else {
                        Button(action:{
                            self.show.toggle()
                        }) {
                            Image(systemName: "magnifyingglass").foregroundColor(.black).padding(20)
                        }
                        
                    }
                }.background(Color.white)
                .cornerRadius(20)
                
            }
            .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
            .padding(.horizontal)
            .padding(.bottom, 10)
            .background(Color.red)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct SearchPanel_Previews: PreviewProvider {
    static var previews: some View {
        SearchPanel()
    }
}
