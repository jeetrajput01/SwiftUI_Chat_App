//
//  TabCustomShape.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 03/11/21.
//

import SwiftUI

struct TabCustomShape: Shape {
    
    func path(in ract: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: ract, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 30, height: 30))
        
        return Path(path.cgPath)
    }
    
}

struct TabCustomShape_Previews: PreviewProvider {
    static var previews: some View {
        TabCustomShape()
            .previewLayout(.fixed(width: 420, height: 120))
            .padding()
    }
}
