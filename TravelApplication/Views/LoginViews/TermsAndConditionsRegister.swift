//
//  TermsAndConditionsRegister.swift
//  TravelApplication
//
//  Created by Mohammad Barek on 10/8/20.
//

import SwiftUI

struct TermsAndConditionsRegister: View {
    
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
                .bold()
                .padding()
                .lineLimit(nil)
            Spacer()
        }.navigationBarTitle("Terms And Conditions")
        .navigationBarHidden(false)
        .navigationBarItems(trailing:
                                Button(action: {
                                    viewRouter.MainFlow = "RegisterScreen"
                                }) {
                                    Image(systemName: "checkmark")
                                        .imageScale(.large)
                                        .padding()
                                        .padding(.leading)
                                })
        
    }
}

struct TermsAndConditionsRegister_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditionsRegister()
    }
}
