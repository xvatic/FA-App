//
//  RegistrationForm.swift
//  FA App
//
//  Created by Евгений on 9/2/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI

struct RegistrationForm: View {
    
    @State var email = ""
    @State var password = ""
    @State var username = ""
    @State var registered = true
    @State var rem = false
    var body: some View {
       
        ZStack{
            Color.black.opacity(0.03).edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    if self.registered{
                        Text("Log In").font(.title)
                    } else {
                         Text("Register now").font(.title)
                    }
                }.padding(.top)
                    .padding()
                VStack(alignment: .leading){
                    Text("Username")
                        .font(.title)
                        .fontWeight(.bold)
                    VStack{
                        TextField("", text: self.$username)
                        Rectangle()
                            .fill(self.username == "" ? Color.black.opacity(0.08): Color("Color1"))
                            .frame(height:3)
                    }
                    if !self.registered {
                        
                        Text("Email")
                            .font(.title)
                            .fontWeight(.bold)
                        VStack{
                            TextField("", text: self.$email)
                            Rectangle()
                                .fill(self.email == "" ? Color.black.opacity(0.08): Color("Color1"))
                                .frame(height:3)
                        }
                    }
                    Text("Password")
                        .font(.title)
                        .fontWeight(.bold)
                    VStack{
                        SecureField("", text: self.$password)
                        Rectangle()
                            .fill(self.password == "" ? Color.black.opacity(0.08): Color("Color1"))
                            .frame(height:3)
                    }
                    HStack{
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Text("Forget Password?")
                        }
                        
                    }.padding(.top)
                    HStack{
                        Spacer()
                        
                        Button(action: {
                            self.registered = false
                            
                        }) {
                            Text("Haven't registered yet?")
                        }
                        
                    }.padding(.top)
                    
                    
                    
                }
                .foregroundColor(Color.red.opacity(0.7))
                .padding()
                .padding(.horizontal)
                .background(Color.white)
                .overlay(Rectangle().stroke(Color.black.opacity(0.03), lineWidth: 2).shadow(radius: 4))
                Spacer()
                
                HStack{
                    Button(action: {
                        self.rem.toggle()
                        
                    }) {
                        HStack(spacing:10) {
                            ZStack{
                                Circle()
                                    .stroke(LinearGradient(gradient: .init(colors: [Color.green, Color.blue]), startPoint: .top, endPoint: .bottom), lineWidth:2)
                                    .frame(width:20, height: 20)
                                if self.rem {
                                    Circle()
                                        .fill(Color.blue)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            
                        }
                        Text("Remember me")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black.opacity(0.7))
                        
                    }
                }
            }
        }
    }
}

struct RegistrationForm_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationForm()
    }
}
