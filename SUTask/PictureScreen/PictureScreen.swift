//
//  PictureScreen.swift
//  SUTask
//
//  Created by Anna Ershova on 07.12.2021.
//

import SwiftUI
import UIComponents

struct PictureScreen: View {
    @State private var showingSheet = false
    var body: some View {
        VStack {
            Button("Show picture") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                SheetView()
            }
            .padding()
            .background(Color.gray.opacity(0.2))
        }
    }
}

struct SheetView: View {
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var previewColorModel: PreviewColorModel
    
    var body: some View {
        VStack {
            Picture(color: previewColorModel.chosenColor)
                .padding()
            Button("Press to dismiss") {
                dismiss()
            }
            .foregroundColor(.gray)
            .font(.title)
            .padding()
            .background(previewColorModel.chosenColor.opacity(0.2))
        }
    }
}

struct PictureScreen_Previews: PreviewProvider {
    static var previews: some View {
        PictureScreen()
    }
}
