//
//  Login.swift
//  TravelApplication
//
//  Created by Mohammad Barek on 10/8/20.
//

import SwiftUI

struct Login: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showPassword = false
    @EnvironmentObject var viewRouter: ViewRouter

    let customGrayColor = Color(Constants.Colors.customLightGrayColor)
    
    let lightblueColor = Constants.Colors.customLightBlueColor
    
    var body: some View {
        NavigationView {
            ScrollView {
            VStack {
                Text("Login").bold()
                     .font(.system(size: 30))
                Spacer()
                ZStack {
                    VStack(spacing:30) {
                        HStack {
                            Image(systemName: "person")
                                .foregroundColor(.secondary)
                            TextField("Email",
                                      text: $email)
                            
                        }   .padding()
                        .background(Capsule().fill(customGrayColor))
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.secondary)
                            if showPassword {
                                TextField("Password",
                                          text: $password)
                            } else {
                                SecureField("Password",
                                            text: $password)
                            }
                            Button(action: { self.showPassword.toggle()}) {
                                
                                Image(systemName: "eye")
                                    .foregroundColor(.secondary)
                            }
                        }.padding()
                        .background(Capsule().fill(customGrayColor))
                        
                        Button(action: {
                            viewRouter.MainFlow = "MainFlow"
                        }) {
                            Text("Login").frame(width: 300, height: 20)
                        }.padding()
                        .background(Color.blue)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        NavigationLink(
                            destination: ForgotPassword(),
                            label: {
                                Text("Forgot Password") .bold()
                                    .frame(width: 320, height: 60)
                            })
                            .font(.system(size: 20))
                            .foregroundColor(Color.blue)
                        
                        HStack {
                            Text("Not member yet?").fontWeight(.medium)
                            NavigationLink(
                                destination: Register(),
                                label: {
                                    Text("Create an account") .bold()
                                })
                                .font(.system(size: 20))
                                .foregroundColor(Color.blue)
                            
                        }
                        Spacer()
                    }   .padding()
                    
                }
            }
        }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
