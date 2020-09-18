//
//  ProfileView.swift
//  FA App
//
//  Created by Евгений on 9/18/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack{
                VStack {
                    Image("logo")
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:150, height: 150)
                        .clipShape(Circle())
                        .clipped()
                        .padding(.top, 44)
                    Text("Username").font(.system(size:20)).bold().foregroundColor(.white)
                        .padding(.top, 12)
                    Text("").font(.system(size:15)).foregroundColor(.white)
                        .padding(.top, 4)
                }
                Spacer()
            }
            Spacer()
        }.background(Color.red.opacity(0.7))
            .edgesIgnoringSafeArea(.all)
        
        
        
    }
}


