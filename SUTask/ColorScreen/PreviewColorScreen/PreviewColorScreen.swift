//
//  PreviewColorScreen.swift
//  SUTask
//
//  Created by Anna Ershova on 08.12.2021.
//

import SwiftUI

struct PreviewColorScreen: View {
    @Binding var chosenColor: ColorModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [chosenColor.color.opacity(0.3), Color.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            Text("This is your color")
                .foregroundColor(chosenColor.color)
        }
    }
}
