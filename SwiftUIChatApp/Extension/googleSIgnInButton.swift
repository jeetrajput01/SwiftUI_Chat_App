//
//  googleSIgnInButton.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 23/08/21.
//

import Foundation
import SwiftUI

struct googleSignInButton: UIViewRepresentable {
    typealias UIViewControllerType = GIDSignInButton
    

    func makeUIView(context: Context) -> GIDSignInButton {
     return GIDSignInButton()
    }
    func updateUIView(_ uiView: GIDSignInButton, context:
    Context) {
    }
    
}
