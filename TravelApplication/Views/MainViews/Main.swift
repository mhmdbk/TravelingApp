//
//  Main.swift
//  TravelApplication
//
//  Created by Mohammad Barek on 10/8/20.
//

import SwiftUI

struct Main: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @State var buttonText:String = "Start"
    
    
    
    var body: some View {
        VStack(alignment:.leading,spacing:10){
            HStack(spacing:20) {
                if viewRouter.showFirstCheckmarkMainVC {
                    Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width:50,height: 50)
                            .foregroundColor(.green)
                }
                else {
                Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width:50,height: 50)
                        .foregroundColor(.green)
                    .hidden()
                }
                Image(systemName: "lock")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height:100)
                Text("Scan ePassport") .font(.system(size: 22))
                    .padding(.top)
                    .foregroundColor(Color.black)
            }
            
            HStack(spacing:20) {
                if viewRouter.showSecondCheckmarkMainVC  {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width:50,height: 50)
                        .foregroundColor(.green)
                }
                else {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width:50,height: 50)
                        .foregroundColor(.green).hidden()
                }
                Image(systemName: "lock")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height:100)
                Text("Verify Face") .font(.system(size: 22))
                    .padding(.top)
                    .foregroundColor(Color.black)
            }.padding(.top,40)
            
            HStack(spacing:20) {
                if viewRouter.showThirdCheckmarkMainVC {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width:50,height: 50)
                        .foregroundColor(.green)
                }
                else {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width:50,height: 50)
                        .foregroundColor(.green).hidden()
                }
                Image(systemName: "lock")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height:100)
                Text("Subscribe to service") .font(.system(size: 22))
                    .padding(.top)
                    .foregroundColor(Color.black)
            }.padding(.top,40)
            
            
            HStack(spacing:20) {
                if viewRouter.showFourthCheckmarkMainVC {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width:50,height: 50)
                        .foregroundColor(.green)
                }
                else {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width:50,height: 50)
                        .foregroundColor(.green).hidden()
                }
                Image(systemName: "lock")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height:100)
                Text("Schedule a travel") .font(.system(size: 22))
                    .padding(.top)
                    .foregroundColor(Color.black)
            }.padding(.top,40)
            Spacer()
            
            
            Button(action: {
                viewRouter.MainFlow = "MainFlowSetup"
                if !viewRouter.showFirstCheckmarkMainVC {
                viewRouter.currentPage = "MyScanWrapper"
                    viewRouter.buttonTextMainVC = "Next"
                }
                else if !viewRouter.showSecondCheckmarkMainVC {
                    viewRouter.currentPage = "verifyFace"
                    viewRouter.buttonTextMainVC = "Next"

                }
                else if !viewRouter.showThirdCheckmarkMainVC {
                    viewRouter.currentPage = "SubscribeToService"
                    viewRouter.buttonTextMainVC = "Next"

                }
                
                else if !viewRouter.showFourthCheckmarkMainVC {
                    viewRouter.currentPage = "ScheduleTravel"
                    viewRouter.buttonTextMainVC = "Next"
                }
            }) {
                Text(viewRouter.buttonTextMainVC).bold().frame(width: 200, height: 20)
            }.padding()
            .background(Color.green)
            .font(.system(size: 20))
            .foregroundColor(.black)
            .cornerRadius(10)
            .frame(maxWidth:.infinity)
            Spacer()
            
        }.padding()
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main().environmentObject(ViewRouter())
    }
}
