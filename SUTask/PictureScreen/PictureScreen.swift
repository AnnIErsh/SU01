//
//  PictureScreen.swift
//  SUTask
//
//  Created by Anna Ershova on 07.12.2021.
//

import SwiftUI

struct PictureScreen: View {
    @State private var showingSheet = false
    var body: some View {
        VStack {
            Button("Show pictures") {
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
    //presentationMode.wrappedValue.dismiss()
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .foregroundColor(.gray)
        .font(.title)
        .padding()
        .background(Color.gray.opacity(0.2))
    }
}

struct PictureScreen_Previews: PreviewProvider {
    static var previews: some View {
        PictureScreen()
    }
}
