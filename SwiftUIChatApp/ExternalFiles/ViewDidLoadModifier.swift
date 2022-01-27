//
//  ViewDidLoadModifier.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 27/10/21.
//

import Foundation

import SwiftUI

//This View modiefier will work as ViewDidLoad Method.
struct ViewDidLoadModifier: ViewModifier {

    @State private var didLoad = false
    private let action: (() -> Void)?

    init(perform action: (() -> Void)? = nil) {
        self.action = action
    }

    func body(content: Content) -> some View {
        content.onAppear {
            if didLoad == false {
                didLoad = true
                action?()
            }
        }
    }

}
