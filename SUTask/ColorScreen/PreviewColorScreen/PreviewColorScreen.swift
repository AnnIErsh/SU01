//
//  PreviewColorScreen.swift
//  SUTask
//
//  Created by Anna Ershova on 08.12.2021.
//

import SwiftUI

struct PreviewColorScreen: View {
    @EnvironmentObject var previewColorModel: PreviewColorModel
    @Binding var chosenColor: ColorModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [chosenColor.color.opacity(0.3), Color.white]), startPoint: .top, endPoint: .bottom)
            Text("This is your color")
                .foregroundColor(chosenColor.color)
                .ignoresSafeArea()
        }
        .onAppear {
            previewColorModel.tmpColor = chosenColor.color
            //print(previewColorModel.tmpColor)
        }
    }
}
