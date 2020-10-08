
import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    
 @Published var currentPage: String = ""
 @Published var MainFlow: String = "StartScreen"
 @Published var showFirstCheckmarkMainVC = false
 @Published var showSecondCheckmarkMainVC = false
 @Published var showThirdCheckmarkMainVC = false
 @Published var showFourthCheckmarkMainVC = false
 @Published var mrzData =  [String: Any]()
@Published var buttonTextMainVC:String = "Start"
}
