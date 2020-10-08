//
//  MyScanWrapper.swift
//  NFCPassportReaderApp
//
//  Created by Mohammad Barek on 10/6/20.
//  Copyright © 2020 Andy Qua. All rights reserved.
//

import SwiftUI
import PassportScanner

struct MyScanWrapper: View {
    @EnvironmentObject var viewRouter: ViewRouter


    var body: some View {
        customController()
    }
}

struct MyScanWrapper_Previews: PreviewProvider {
    static var previews: some View {
        MyScanWrapper()
    }
}

struct customController: UIViewControllerRepresentable, ProcessMRZ {
    @EnvironmentObject var viewRouter: ViewRouter
    func processMRZ(mrz: MRZParser) {
        print(mrz.data())
        viewRouter.mrzData = mrz.data()
        viewRouter.currentPage = "PassportNFC"
        
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<customController>) -> UIViewController {
          let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let scanVC: MyScanViewController = storyboard.instantiateViewController(withIdentifier: "PassportScanner") as! MyScanViewController
              scanVC.delegate = self
         return scanVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<customController>) {
        
        
    }
}
