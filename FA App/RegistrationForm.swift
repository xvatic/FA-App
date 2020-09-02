//
//  RegistrationForm.swift
//  FA App
//
//  Created by Евгений on 9/2/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct RegistrationForm: View {
    var body: some View {
        ZStack{
            Color.black.opacity(0.03).edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image("logo")
                }
                VStack(alignment: .leading){
                    Text("Log In")
                        .font(.title)
                        .fontWeight(.bold)
                    
                }
                .foregroundColor(Color.red.opacity(0.7))
                .padding()
                .background(Color.white)
                .overlay(Rectangle().stroke(Color.black.opacity(0.03), lineWidth: 2).shadow(radius: 4))
                Spacer()
            }
        }
    }
}

struct RegistrationForm_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationForm()
    }
}
