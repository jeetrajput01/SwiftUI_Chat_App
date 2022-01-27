//
//  CommonNavView.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 27/10/21.
//

import SwiftUI

struct CommonNavView: View {
    
    //MARK: - Properties
    
    var tableButton:() -> Void
    var gridButton:() -> Void
    var navTitle: String
    var gridImageName: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            
            Spacer()
            Spacer()
            Text(navTitle)
                .bold()
                .font(.headline)
                .foregroundColor(Color("menu"))
            Spacer()
            
            Button(action: {
                
                tableButton()
                
            }, label: {
                Image(systemName: "square.fill.text.grid.1x2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color("menu"))
                    .frame(width: 30, height: 35, alignment: .center)
            })
            .padding(.trailing, 20)
            Button(action: {
                gridButton()
            }, label: {
                Image(systemName: gridImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color("menu"))
                    .frame(width: 30, height: 35, alignment: .center)
            })
            .padding(.trailing, 20)
        }
        .padding(.bottom, 10)
        .overlay(Divider().background(Color("menu").frame(height: 0.5)), alignment: .bottom)
    }
}

struct CommonNavView_Previews: PreviewProvider {
    static var previews: some View {
        CommonNavView(tableButton: {
            
        }, gridButton: {
            
        }, navTitle: "UserList", gridImageName: "square.grid.2x2")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
