//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by Fabian Kropfhamer on 13.05.21.
//

import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    let scrumColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(accessibleFontColor(color: scrumColor))
                .frame(height: 20.0)
            ProgressView(configuration)
                .frame(height: 12.0)
                .padding(.horizontal)
        }
    }
    
}
