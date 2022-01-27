//
//  SwiftUIChatAppApp.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 08/07/21.
//

import SwiftUI

@main
struct SwiftUIChatAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            
            if UserDefaults.isRegisteredUserLogin {
                MainView()
//                HomeView()

            } else {
                LogInView(loginVM: LoginViewModel())
            }
           
        }
    }
}
