//
//  FacebookSignInButton.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 24/08/21.
//

import Foundation
import SwiftUI



struct facebookSignInButton: UIViewRepresentable {
    typealias UIViewControllerType = FBLoginButton
    
    private var loginVM = LoginViewModel()
    
    func makeCoordinator() -> facebookSignInButton.Coordinate {
        
        return facebookSignInButton.Coordinate(self)
    }
    
    func makeUIView(context: Context) -> FBLoginButton {
        let button = FBLoginButton()
        button.permissions = ["public_profile", "email"]
        button.delegate = context.coordinator
        return button
    }
    func updateUIView(_ uiView: FBLoginButton, context:
                        Context) {
        
    }
    
    class Coordinate: NSObject, LoginButtonDelegate {

        let parent: facebookSignInButton
        
        init(_ parent: facebookSignInButton) {
            self.parent = parent
        }
        
        func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
            
            if error != nil {
                print(error?.localizedDescription as Any)
                return
            }
            
            if AccessToken.current != nil,!AccessToken.current!.isExpired  {
                
                let credential = FacebookAuthProvider
                  .credential(withAccessToken: AccessToken.current!.tokenString)
                parent.loginVM.moveToHomeWIthGoogle_FacebookLogin(credential: credential)
               
            }
            
        }
        
        func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
            
            do {
                
                try  Auth.auth().signOut()
                
            } catch {
                print(error.localizedDescription as Any)
            }
            
        }
        
        
    }
    
    
}
