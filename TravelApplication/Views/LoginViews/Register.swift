//
//  Register.swift
//  TravelApplication
//
//  Created by Mohammad Barek on 10/8/20.
//

import SwiftUI

struct Register: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @Environment(\.presentationMode) var presentationMode

    let customGrayColor = Color(Constants.Colors.customLightGrayColor)
    
    @State var firstName:String = ""
    @State var lastName:String = ""
    @State var email:String = ""
    @State var password:String = ""
    @State var confirmPassword:String = ""
    @State private var showPassword = false

    var body: some View {
        NavigationView {
            ScrollView {
            VStack {
                Text("Create Account").bold()
                     .font(.system(size: 30))
                  ZStack {
                    VStack(spacing:30) {
                            TextField("First Name",
                                      text: $firstName).padding()
                        .background(Capsule().fill(customGrayColor))
                        TextField("Last Name",
                                  text: $lastName).padding()
                    .background(Capsule().fill(customGrayColor))
                        TextField("Email",
                                  text: $email).padding()
                    .background(Capsule().fill(customGrayColor))
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.secondary)
                            if showPassword {
                                TextField("Choose your Password",
                                          text: $password)
                            } else {
                                SecureField("Choose your Password",
                                            text: $password)
                            }
                            Button(action: { self.showPassword.toggle()}) {
                                
                                Image(systemName: "eye")
                                    .foregroundColor(.secondary)
                            }
                        }.padding()
                        .background(Capsule().fill(customGrayColor))
                        
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.secondary)
                            if showPassword {
                                TextField("Confirm Password",
                                          text: $confirmPassword)
                            } else {
                                SecureField("Confirm Password",
                                            text: $confirmPassword)
                            }
                            Button(action: { self.showPassword.toggle()}) {
                                
                                Image(systemName: "eye")
                                    .foregroundColor(.secondary)
                            }
                        }.padding()
                        .background(Capsule().fill(customGrayColor))
                        
                        Button(action: {
                            viewRouter.MainFlow = "LoginScreen"
                            self.presentationMode.wrappedValue.dismiss()

                        }) {
                            Text("Create account").bold().frame(width: 300, height: 20)
                        }.padding()
                        .background(Color.blue)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .cornerRadius(10)
//                        .disabled(firstName.isEmpty || lastName.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty || password != confirmPassword)
                        Spacer()
                    }   .padding()
                }
            }.navigationBarTitle("")
            .navigationBarHidden(true)
         }
        }
     }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register().environmentObject(ViewRouter())
    }
}
