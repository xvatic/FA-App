//
//  RegistrationForm.swift
//  FA App
//
//  Created by Евгений on 9/2/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import SwiftUI
import CryptoKit

struct RegistrationForm: View {
    
    @State var email = ""
    @State var password = ""
    @State var username = ""
    @State var registered = true
    @State var rem = false
    @State var showAlert = false
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
                    .padding(.bottom)
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
                            self.registered.toggle()
                            
                        }) {
                            if self.registered {
                                Text("Haven't registered yet?")
                            }
                            else {
                                Text("Already have an account?")
                            }
                        }
                        
                    }.padding(.top)
                    
                    
                    
                }
                .foregroundColor(Color.red.opacity(0.7))
                .padding()
                .padding(.horizontal)
                .background(Color.white)
                .overlay(Rectangle().stroke(Color.black.opacity(0.03), lineWidth: 2).shadow(radius: 4))
                
                
                HStack{
                    Button(action: {
                        self.rem.toggle()
                        
                    }) {
                        HStack(spacing:10) {
                            ZStack{
                                Circle()
                                    .stroke(Color.red, lineWidth:2)
                                    .frame(width:20, height: 20)
                                if self.rem {
                                    Circle()
                                        .fill(Color.red)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            
                        }
                        Text("Remember me")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black.opacity(0.7))
                        
                    }
                    Spacer()
                    Button(action: {
                        if self.registered{
                            APIManager.shareInstance.callingRegisterAPI(register: RegisterModel(UserName: self.username, PasswordHash: toHash(input: self.password), Email: self.email)) {
                                (result) in
                                switch result {
                                case .success(let json):
                                    print(json as AnyObject)
                                    self.showAlert.toggle()
                    
                                case .failure(let err):
                                    print(err.localizedDescription)
                                    self.showAlert.toggle()
                                }
                            }
                            
                        } else
                        {
                        
                            
                        }
                        
                    }) {
                        if self.registered{
                            Text("Sign In")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .padding(.horizontal, 35)
                            .background(Color.red)
                            .cornerRadius(5)
                        } else
                        {
                            Text("Register")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .padding(.horizontal, 35)
                                .background(Color.red)
                                .cornerRadius(5)
                            
                        }
                        
                    }
                    
                    
                }.padding()
                    
                Spacer()
            }
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("Success"))
        }
    }
}

struct RegistrationForm_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationForm()
    }
}
