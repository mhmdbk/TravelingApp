//
//  ContentView.swift
//  TravelApplication
//
//  Created by Mohammad Barek on 10/8/20.
//

import SwiftUI

struct ContentView: View {
    @State var loginView = false
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        VStack { 
            
             if viewRouter.MainFlow == "StartScreen" {
                StartScreen()
            }
            else if viewRouter.MainFlow == "LoginScreen" {
                Login()
            }
            else if viewRouter.MainFlow == "RegisterScreen" {
                Register()
        }
            else if viewRouter.MainFlow == "MainFlow" {
                Main()
        }
            else if viewRouter.MainFlow == "MainFlowSetup" {
                if viewRouter.currentPage == "MyScanWrapper" {
                    MyScanWrapper()
                }
                else if viewRouter.currentPage == "PassportNFC" {
                    NFCScanView()

                }
                else if viewRouter.currentPage == "" {
                    
                }

                else if viewRouter.currentPage == "" {
                    
                }

            }
        }
    }
}

