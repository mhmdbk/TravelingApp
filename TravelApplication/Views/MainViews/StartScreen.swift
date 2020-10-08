//
//  StartScreen.swift
//  TravelApplication
//
//  Created by Mohammad Barek on 10/8/20.
//

import SwiftUI

struct StartScreen: View {
    
    @EnvironmentObject var viewRouter: ViewRouter

     let lightblueColor = Constants.Colors.customLightBlueColor
    
    var body: some View {
        NavigationView {

        VStack(alignment: .center,spacing : 0){
             
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 150, height: 150)
            
            Text("BioPass")
                .fontWeight(.bold)
                .font(.system(size: 35))
            Spacer()
            Text("Log in or create an account using email")
                .fontWeight(.medium)
                .font(.system(size: 18))
                .lineLimit(2)
            
            Spacer()
            NavigationLink(
                destination: TermsAndConditionsLogin(),
                label: {
                    Text("Login") .bold()
                        .frame(width: 320, height: 60)
                }).background(Color(lightblueColor))
                .font(.system(size: 20))
                .foregroundColor(.white)
                .cornerRadius(20)
            Spacer()
            
            NavigationLink(
                destination: TermsAndConditionsRegister(),
                label: {
                    Text("Create Account") .bold()
                        .frame(width: 320, height: 60)
                })
                .font(.system(size: 20))
                .foregroundColor(Color(lightblueColor))
             Spacer()
            
        }.navigationBarTitle("")
        }
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
